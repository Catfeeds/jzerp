<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件

//use app\admin\model\AdminFilesModel;
//use app\gateway\controller\MessageController;
//use think\Config;
use app\admin\controller\PublicController,
	app\gateway\controller\MessageController,
    think\Db,
     Predis\Client;

if (!function_exists('redis')) {

    function redis()
    {
    	$r = cache('redis');
		 	if(!$r){
		 		require_once dirname(__FILE__) . '/../vendor/autoload.php';
		 		$r = new Client;
	 			cache('redis', new Client());
		 	}
		return $r;
		 
    }
}

if (!function_exists('is_signin')) {
    /**
     * 是否登录
     * @return int
     */
    function is_signin()
    {
        $user = session('user_auth');
        if (empty($user)) {
            // 判断是否记住登录
            if (cookie('?uid') && cookie('?signin_token')) {
                $UserModel = new \app\admin\model\Personnel();
                $user = $UserModel::get(cookie('uid'));
                if ($user) {
                    $signin_token = data_auth_sign($user['username'] . $user['id'] . $user['last_login_time']);
                    if (cookie('signin_token') == $signin_token) {
                        // 自动登录
                        $UserModel->autoLogin($user);
                        return $user['id'];
                    }
                }
            };
            return 0;
        } else {
            //如果session中存储的标识和数据库中的不是最新的 那么强制下线
            if (!\app\admin\model\Personnel::get(
                ['id' => session('user_auth')['uid'],
                    'last_login_time' => session('user_auth')['last_login_time'],
                    'last_login_ip' => session('user_auth')['last_login_ip']
                ])) {
                $a = new PublicController();
                $a->signout();
            }
            return session('user_auth_sign') == data_auth_sign($user) ? $user['uid'] : 0;
        }
    }
}

if (!function_exists('data_auth_sign')) {
    /**
     * 数据签名认证
     * @param array $data 被认证的数据
     * @return string
     */
    function data_auth_sign($data = [])
    {
        // 数据类型检测
        if (!is_array($data)) {
            $data = (array)$data;
        }

        // 排序
        ksort($data);
        // url编码并生成query字符串
        $code = http_build_query($data);
        // 生成签名
        $sign = sha1($code);
        return $sign;
    }
}
//获取ip地址
if (!function_exists('get_client_ip')) {

    function get_client_ip($type = 0, $adv = false)
    {
        $type = $type ? 1 : 0;
        static $ip = NULL;
        if ($ip !== NULL) return $ip[$type];
        if ($adv) {
            if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
                $arr = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
                $pos = array_search('unknown', $arr);
                if (false !== $pos) unset($arr[$pos]);
                $ip = trim($arr[0]);
            } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
                $ip = $_SERVER['HTTP_CLIENT_IP'];
            } elseif (isset($_SERVER['REMOTE_ADDR'])) {
                $ip = $_SERVER['REMOTE_ADDR'];
            }
        } elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        // IP地址合法验证
        $long = sprintf("%u", ip2long($ip));
        $ip = $long ? array($ip, $long) : array('0.0.0.0', 0);
        return $ip[$type];
    }
}

//解析日志行为
if (!function_exists('parse_action')) {
    /**
     * 解析行为规则
     * 规则定义  table:$table|field:$field|condition:$condition|rule:$rule[|cycle:$cycle|max:$max][;......]
     * 规则字段解释：table->要操作的数据表，不需要加表前缀；
     *            field->要操作的字段；
     *            condition->操作的条件，目前支持字符串，默认变量{$self}为执行行为的用户
     *            rule->对字段进行的具体操作，目前支持四则混合运算，如：1+score*2/2-3
     *            cycle->执行周期，单位（小时），表示$cycle小时内最多执行$max次
     *            max->单个周期内的最大执行次数（$cycle和$max必须同时定义，否则无效）
     * 单个行为后可加 ； 连接其他规则
     * @param string $action 行为id或者name
     * @param int $self 替换规则里的变量为执行用户的id
     * @return boolean|array: false解析出错 ， 成功返回规则数组
     */
    function parse_action($action = null, $self)
    {
        if (empty($action)) {
            return false;
        }

        // 参数支持id或者name
        if (is_numeric($action)) {
            $map = ['id' => $action];
        } else {
            $map = ['name' => $action];
        }

        // 查询行为信息
        $info = model('admin/ActionModel')->where($map)->find();


        if (!$info || $info['status'] != 1) {
            return false;
        }

        // 解析规则:table:$table|field:$field|condition:$condition|rule:$rule[|cycle:$cycle|max:$max][;......]
        $rule = $info['rule'];
        $rule = str_replace('{$self}', $self, $rule);
        $rules = explode(';', $rule);
        $return = [];
        foreach ($rules as $key => &$rule) {
            $rule = explode('|', $rule);
            foreach ($rule as $k => $fields) {
                $field = empty($fields) ? array() : explode(':', $fields);
                if (!empty($field)) {
                    //$return[$key][$field[0]] = $field[1];
                }
            }
            // cycle(检查周期)和max(周期内最大执行次数)必须同时存在，否则去掉这两个条件
            if (!isset($return[$key]['cycle']) || !isset($return[$key]['max'])) {
                unset($return[$key]['cycle'], $return[$key]['max']);
            }
        }

        return $return;
    }
}

//执行行为
if (!function_exists('execute_action')) {
    /**
     * 执行行为
     * @param array|bool $rules 解析后的规则数组
     * @param int $action_id 行为id
     * @param array $user_id 执行的用户id
     * @return boolean false 失败 ， true 成功
     */
    function execute_action($rules = false, $action_id = null, $user_id = null)
    {
        if (!$rules || empty($action_id) || empty($user_id)) {
            return false;
        }

        $return = true;
        foreach ($rules as $rule) {
            // 检查执行周期
            $map = ['action_id' => $action_id, 'user_id' => $user_id];
            $map['create_time'] = ['gt', request()->time() - intval($rule['cycle']) * 3600];
            $exec_count = model('admin/ActionModel')->where($map)->count();
            if ($exec_count > $rule['max']) {
                continue;
            }

            // 执行数据库操作
            $field = $rule['field'];
            $res = Db::name($rule['table'])->where($rule['condition'])->setField($field, array('exp', $rule['rule']));

            if (!$res) {
                $return = false;
            }
        }
        return $return;
    }
}


//行为日志
if (!function_exists('action_log')) {
    /**
     * 记录行为日志，并执行该行为的规则
     * @param null $action 行为标识
     * @param null $model 触发行为的模型名
     * @param string $record_id 触发行为的记录id
     * @param null $user_id 执行行为的用户id
     * @param string $details 详情
     * @return bool|string
     */
    function action_log($action = null, $model = null, $record_id = '', $user_id = null, $details = '')
    {
        // 判断是否开启系统日志功能

        // 参数检查
        if (empty($action) || empty($model)) {
            return '参数不能为空';
        }
        if (empty($user_id)) {
            $user_id = is_signin();
        }
        // 查询行为,判断是否执行
        $action_info = model('admin/ActionModel')->getByName($action);


        if ($action_info['status'] != 1) {
            return '该行为被禁用或删除';
        }

        // 插入行为日志
        $data = [
            'action_id' => $action_info['id'],
            'user_id' => $user_id,
            'action_ip' => get_client_ip(1),
            'model' => $model,
            'record_id' => $record_id,
            'create_time' => request()->time()
        ];


        // 解析日志规则,生成日志备注
        if (!empty($action_info['log'])) {


            if (preg_match_all('/\[(\S+?)\]/', $action_info['log'], $match)) {
                //dump($action_info);die;
                $log = [
                    'user' => $user_id,
                    'record' => $record_id,
                    'model' => $model,
                    'time' => request()->time(),
                    'data' => ['user' => $user_id, 'model' => $model, 'record' => $record_id, 'time' => request()->time()],
                    'details' => $details
                ];


                $replace = [];
                foreach ($match[1] as $value) {
                    $param = explode('|', $value);
                    //dump($param);die;
                    if (isset($param[1])) {

                        $replace[] = call_user_func($param[1], $log[$param[0]]);


                    } else {
                        $replace[] = $log[$param[0]];
                    }

                }


                $data['remark'] = str_replace($match[0], $replace, $action_info['log']);
            } else {
                $data['remark'] = $action_info['log'];
            }
        } else {
            // 未定义日志规则，记录操作url
            $data['remark'] = '操作url：' . $_SERVER['REQUEST_URI'];
        }

        // 保存日志
        model('admin/SystermLogModel')->insert($data);

        if (!empty($action_info['rule'])) {
            // 解析行为
            $rules = parse_action($action, $user_id);
            // 执行行为
            $res = execute_action($rules, $action_info['id'], $user_id);
            if (!$res) {
                return '执行行为失败';
            }
        }
        return true;
    }
}

if (!function_exists('parse_attr')) {
    /**
     * 解析配置
     * @param string $value 配置值
     * @return array|string
     */
    function parse_attr($value = '')
    {
        $array = preg_split('/[,;\r\n]+/', trim($value, ",;\r\n"));
        if (strpos($value, ':')) {
            $value = array();
            foreach ($array as $val) {
                list($k, $v) = explode(':', $val);
                $value[$k] = $v;
            }
        } else {
            $value = $array;
        }
        return $value;
    }
}

if (!function_exists('getMap')) {
    /**
     * 获取筛选条件
     */
    function getMap()
    {
        $search_field = input('param.search_field/s', '');
        $keyword = input('param.keyword/s', '');
        $filter = input('param._filter/s', '');
        $filter_content = input('param._filter_content/s', '');
        $filter_time = input('param._filter_time/s', '');
        $filter_time_from = input('param._filter_time_from/s', '');
        $filter_time_to = input('param._filter_time_to/s', '');
        $select_field = input('param._select_field/s', '');
        $select_value = input('param._select_value/s', '');
        $search_area = input('param._s', '');
        $search_area_op = input('param._o', '');

        $map = [];

        // 搜索框搜索
        if ($search_field != '' && $keyword !== '') {
            $map[$search_field] = ['like', "%$keyword%"];
        }

        // 下拉筛选
        if ($select_field != '') {
            $select_field = array_filter(explode('|', $select_field), 'strlen');
            $select_value = array_filter(explode('|', $select_value), 'strlen');
            foreach ($select_field as $key => $item) {
                if ($select_value[$key] != '_all') {
                    $map[$item] = $select_value[$key];
                }
            }
        }

        // 时间段搜索
        if ($filter_time != '' && $filter_time_from != '' && $filter_time_to != '') {
            $map[$filter_time] = ['between time', [$filter_time_from . ' 00:00:00', $filter_time_to . ' 23:59:59']];
        }

        // 表头筛选
        if ($filter != '') {
            $filter = array_filter(explode('|', $filter), 'strlen');
            $filter_content = array_filter(explode('|', $filter_content), 'strlen');
            foreach ($filter as $key => $item) {
                if (isset($filter_content[$key])) {
                    $map[$item] = ['in', $filter_content[$key]];
                }
            }
        }

        // 搜索区域
        if ($search_area != '') {
            $search_area = explode('|', $search_area);
            $search_area_op = explode('|', $search_area_op);
            foreach ($search_area as $key => $item) {
                list($field, $value) = explode('=', $item);
                $op = explode('=', $search_area_op[$key]);
                if ($value != '') {
                    switch ($op[1]) {
                        case 'like':
                            $map[$field] = ['like', "%$value%"];
                            break;
                        case 'between time':
                        case 'not between time':
                            $value = explode(' - ', $value);
                        default:
                            $map[$field] = [$op[1], $value];
                    }
                }
            }
        }
        return $map;
    }
}


if (!function_exists('getOrder')) {
    /**
     * 获取字段排序
     * @param string $extra_order 额外的排序字段
     * @param bool $before 额外排序字段是否前置
     */
    function getOrder($extra_order = '', $before = false)
    {
        $order = input('param._order/s', '');
        $by = input('param._by/s', '');
        if ($order == '' || $by == '') {
            return $extra_order;
        }
        if ($extra_order == '') {
            return $order . ' ' . $by;
        }
        if ($before) {
            return $extra_order . ',' . $order . ' ' . $by;
        } else {
            return $order . ' ' . $by . ',' . $extra_order;
        }
    }
}

if (!function_exists('ajax')) {
    function ajax($code = '', $msg = '', $url = '', $data = [])
    {
        return [
            'code' => $code,
            'msg' => $msg,
            'url' => $url,
            'data' => $data
        ];
    }
}
if (!function_exists('getIcon')) {
    function getIcon()
    {
        $url = config('icon_href');
        $url = substr($url, 0, 4) == 'http' ? $url : 'http:' . $url;
        $content = file_get_contents($url);
        $font_family = '';
        $pattern = '/font-family: "(.*)";/';
        if (preg_match($pattern, $content, $match)) {
            $font_family = $match[1];
        } else {
            return ajax(0, '无法获取字体名');
        }
        $pattern = '/\.(.*)-(.*):before/';
        if (preg_match_all($pattern, $content, $matches)) {
            $prefix = $matches[1][0] . '-';
            $icon_list = [];
            foreach ($matches[2] as $match) {
                $icon_list[] = $font_family . ' ' . $prefix . $match;
            }
            return $icon_list;
        }
    }
}
if (!function_exists('format_bytes')) {
    /**
     * PHP格式化字节大小
     * @param  number $size 字节数
     * @param  string $delimiter 数字和单位分隔符
     * @return string            格式化后的带单位的大小
     */
    function format_bytes($size, $delimiter = '')
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
        for ($i = 0; $size >= 1024 && $i < 5; $i++) $size /= 1024;
        return round($size, 2) . $delimiter . $units[$i];
    }
}

if (!function_exists('ConfigType')) {
    /**
     * 获取指定类型子类型列表
     * @param  string $indentify 类型唯一标识
     * @return string            对应标识下类型列表
     */
    function ConfigType($indentify = '', $column = true)
    {
        if ($indentify == '') return false;
        $pid = model('admin/TypeModel')->where('indentify', $indentify)->value('id');
        if ($column) {
            return model('admin/TypeModel')->where('pid', $pid)->column('id,name');
        } else {
            return model('admin/TypeModel')->where('pid', $pid)->field('id,name')->select();
        }

    }


}
if (!function_exists('get_file_name')) {
    /**
     * 根据附件id获取文件名
     * @param string $id 附件id
     * @return string
     */
    function get_file_name($id = '')
    {
        $name = model('admin/AdminFilesModel')->getFileName($id);
        if (!$name) {
            return 0;
        }
        return $name;
    }
}
if (!function_exists('get_files_path')) {
    /**
     * 批量获取附件路径
     * @param array $ids 附件id
     * @return array
     */
    function get_files_path($ids = [])
    {
        $paths = model('admin/AdminFilesModel')->getFilePath($ids);
        return !$paths ? 0 : $paths;
    }
}

if (!function_exists('get_thumb')) {
    /**
     * 获取图片缩略图路径
     * @param int $id 附件id
     * @return string
     */
    function get_thumb($id = 0)
    {
        $path = model('admin/AdminFilesModel')->getFilePath($id);
        if (!$path) {
            return config('public_static_path') . 'admin/img/none.png';
        }
        return $path;
    }
}
if (!function_exists('get_avatar')) {
    /**
     * @param $id
     * @return string | array
     * 获取头像
     */
    function get_avatar($id)
    {
        return get_files_path($id) ?: '/uploads/personnel/timg.jpg';
    }
}
if (!function_exists('get_organization_id')) {
    /**
     * @param $id
     * @return \app\admin\model\Organization|null
     * @throws \think\exception\DbException
     * 传入部门id得到所在部门
     */
    function get_organization_id($id, $name = false)
    {
        $organization = \app\admin\model\Organization::get($id);
        $organization = $name ? $organization['title'] : $organization;
        return $organization;
    }
}
if (!function_exists('get_organization')) {
    /**
     * @param $id
     * @return string | array
     * 传入用户id得到所在部门
     */
    function get_organization($id)
    {
        return \app\admin\model\Organization::get(\app\admin\model\Personnel::get($id)->group)->title;
    }
}
if (!function_exists('get_organization_list')) {
    /**
     * @param $id
     * @return string | array
     * 得到部门列表
     */
    function get_organization_list($column = false)
    {
        if ($column) {
            $info = model('admin/Organization')->column('id,title');
        } else {
            $info = \app\admin\model\Organization::all();
        }
        return $info;
    }
}
if (!function_exists('get_position')) {
    /**
     * @param $id
     * @return string | array
     * 传入用户id得到所担任职位
     */
    function get_position($id)
    {
        $position_id = \app\admin\model\PositionGroup::where(['user_id' => $id])->column('id,position_id');
        return \app\admin\model\PositionModel::where('id', 'in', $position_id)->column('id,name');
    }
}
if (!function_exists('get_position_list')) {
    /**
     * @return string | array
     * 得到职位列表
     */
    function get_position_list()
    {
        return \app\admin\model\PositionModel::all();
    }
}


if (!function_exists('get_personnel')) {
    /**
     * @param $id
     * @return string | array
     * 传入用户id得到用户信息
     */
    function get_personnel($id, $name = false)
    {
		$user = \app\admin\model\Personnel::get($id);
        $user = $name ? $user['nickname'] : $user;
        return $user;     
    }
}
if (!function_exists('get_personnel_list')) {
    /**
     * @param $id
     * @return string | array
     * 得到用户信息列表
     */
    function get_personnel_list($column = false)
    {


        if ($column) {
            $info = model('admin/Personnel')->column('id,nickname');
        } else {
            $info = \app\admin\model\Personnel::all();
        }
        return $info;
    }
}
//所有项目
if (!function_exists('projectList')) {
    function projectList($map = [], $column = false, $order = 'create_time desc')
    {

        if ($column) {
            $info = model('admin/ProjectListModel')->where($map)->order($order)->column('id,title');
        } else {
            $info = model('admin/ProjectListModel')->where($map)->order($order)->select();
        }
        return $info;
    }
}
//单个项目
if (!function_exists('projectById')) {
    function projectById($id = '')
    {
        return model('admin/ProjectListModel')->where(['id' => $id])->value('title');
    }
}
//所有材料名称
if (!function_exists('materialList')) {
    function materialList($map = [], $column = false, $order = 'create_time desc')
    {
        if ($column) {
            $info = model('admin/MaterialModel')->where($map)->order($order)->column('id,name');
        } else {
            $info = model('admin/MaterialModel')->where($map)->order($order)->select();
        }
        return $info;
    }
}
//单个材料名称
if (!function_exists('materialId')) {
    function materialId($id = '')
    {
        return model('admin/MaterialModel')->where(['id' => $id])->value('name');
    }
}
//所有供应商名称
if (!function_exists('supplierList')) {
    function supplierList($map = [], $column = false, $order = 'create_time desc')
    {
        if ($column) {
            $info = model('admin/BSupplierModel')->where($map)->order($order)->column('id,supplier_name');
        } else {
            $info = model('admin/BSupplierModel')->where($map)->order($order)->select();
        }
        return $info;
    }
}
//主数据---> 详情数据组装
if (!function_exists('MakeData')) {

    function MakeData($data = [], $filter = [], $replace = [], $add = [])
    {
        $main = [];
        $detail = [];
        foreach ($data as $k => $v) {
            if (in_array($k, $filter)) {
                continue;
            }
            if (isset($replace[$k])) {
                $k = $replace[$k];
            }
            if (is_array($v)) {
                foreach ($v as $key => $value) {
                    $detail[$key][$k] = $value;
                    foreach ($add as $a => $d) {
                        $detail[$key][$a] = $d;
                    }
                }
            } else {
                $main[$k] = $v;
            }
        }
        return [
            'main' => $main,
            'details' => $detail
        ];
    }

}



if (!function_exists('getIdName')) {

    function getIdName($id='')
    {
         $data = BSupplierModel::getName;
         return $data;
    }

}

//根据ID获取类型名称
if (!function_exists('TypeName')) {
    function TypeName($id = '')
    {
        return model('admin/TypeModel')->where(['id' => $id])->value('name');
    }
}
//单个供应商名称
if (!function_exists('supplierId')) {
    function supplierId($id = '')
    {
        return model('admin/BSupplierModel')->where(['id' => $id])->value('supplier_name');
    }
}
//流程审批
//add_id 添加成功的id
if (!function_exists('flow_approval')) {
    function flow_approval($add_id = null)
    {
    	$status = model('admin/FlowModel')->where('id',input('flow_id'))->value('status');
    	if($status == 1){
    		if (empty($add_id)) {
	            return '参数不能为空';
	        }
	        $data = [
	            'add_id' => $add_id,
	            'form_id' => input('form_id'),
	            'flow_id' => input('flow_id'),
	            'uid' => UID,
				'create_time' =>	request()->time(),
				'update_time' =>	request()->time()
	        ];
	        $menu = model('admin/SteprecordModel')->insertGetId($data);
	        if ($menu) {
	            $step_id = model('admin/FlowstepModel')->where('flow_id', $data['flow_id'])->where('ban_type', 0)->value('next_step_id');
	            if ($step_id) {
	                $res = [
	                    'record_id' => $menu,
	                    'step_id' => $step_id,
	                    'status' => 0,
	                    'create_time' => request()->time(),
	                    'update_time' => request()->time(),
	                ];
	                model('admin/FlowapprovalModel')->insert($res);
	                $consignee_id = model('admin/FlowstepModel')->where('id', $step_id)->value('ban_id');
	                $consignee_id = explode(',', trim($consignee_id,',')); 
	                $arr = [];
	                $msgarr = [
	                	'title' => '待办流程',
	                	'time'  => date('Y-m-d H:i:s',time()),
	                	'state' => '中'
	                ];
	                for($i=0;$i<sizeof($consignee_id);$i++){
	                	$arr[] = $msgarr;
	                }   
	                $config = new MessageController;
	                $config->sendMsg('待办流程','待办流程','audit',$consignee_id,'',$arr);
				}        
			}
    	}else{
    		$table = model('admin/FormTableModel')->where('id',input('form_id'))->value('table');
    		Db::name($table)->where('id',$add_id)->update(['status'=>1]);
    		return false;
    	}        
    }
}
//传入多个用户id得到多个用户名称
if (!function_exists('get_personname_list')) {
    function get_personname_list($ids)
    {       
    	$data = explode(',', $ids);
    	$nickname = model('admin/Personnel')->where('id','in',$ids)->column('id,nickname');
    	$info = '';
    	foreach($data as $k => $v){			
			$info .= $nickname[$v].",";
		}
        $info = rtrim($info, ',');
        return $info;
    }
}

/**
 * 根据ID获取公告信息
 *
 * @param  int  $id
 * @param  string  $title   指定返回的字段
 * @return \think\Response
 */
if (!function_exists('NoticeValue')) {
    function NoticeValue($id = '',$title='')
    {
        $notice = model('admin/NoticeModel')->where('id',$id)->find();

        if(empty($title)){
            return $notice;
        }else{
            return $notice[$title];
        }
    }
}
//判断是否是开始审批，审批中，审批完
//开始审批，审批完  返回fales,审批中返回true



//获取状态输出不同颜色
if (!function_exists('Status')) {
    function Status($status = '')
    {
        $html = ''; 
        if($status < 0){
        	$html = 'btn btn-danger btn-xs';
        }else if($status == 0){
        	$html = 'btn btn-warning btn-xs';
        }else{
        	$html = 'btn btn-success btn-xs';
        }
        return $html;     
    }
}
//获取权限名称
if (!function_exists('get_auth_name')) {
    function get_auth_name($id)
    {
        return \app\admin\model\AuthRuleModel::get(\app\admin\model\AuthGroupAccess::get(['uid' => $id])['group_id'])['title'];

    }
}
