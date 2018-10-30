<?php
// +----------------------------------------------------------------------
// | 海豚PHP框架 [ DolphinPHP ]
// +----------------------------------------------------------------------
// | 版权所有 2016~2017 河源市卓锐科技有限公司 [ http://www.zrthink.com ]
// +----------------------------------------------------------------------
// | 官方网站: http://dolphinphp.com
// +----------------------------------------------------------------------
// | 开源协议 ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------

namespace app\admin\model;

use app\user\model\Role as RoleModel;
use think\auth\Auth;
use think\Loader;
use think\Model;
use think\Exception;
use util\Tree;
use think\Db;

/**
 * 节点模型
 * @package app\admin\model
 */
class Menu extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'admin_menu';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    // 将节点url转为小写
    public function setUrlValueAttr($value)
    {
        return strtolower(trim($value));
    }

    public static function getOne($id)
    {
        $data = self::where('id', $id)->where('status', 1)->find();
        return $data;
    }

    /**
     * 递归修改所属模型
     * @param int $id 父级节点id
     * @param string $module 模型名称
     * @return bool
     */
    public static function changeModule($id = 0, $module = '')
    {
        if ($id > 0) {
            $ids = self::where('pid', $id)->column('id');
            if ($ids) {
                foreach ($ids as $id) {
                    self::where('id', $id)->setField('module', $module);
                    self::changeModule($id, $module);
                }
            }
        }
        return true;
    }

    /**
     * 获取树形节点
     * @param int $id 需要隐藏的节点id
     * @param string $default 默认第一个节点项，默认为“顶级节点”，如果为false则不显示，也可传入其他名称
     * @param string $module 模型名
     * @return mixed
     */
    public static function getMenuTree($id = 0, $default = '', $module = '')
    {
        $result[0] = '顶级节点';
        $where['status'] = ['egt', 0];
        if ($module != '') {
            $where['module'] = $module;
        }
        // 排除指定节点及其子节点
        if ($id !== 0) {
            $hide_ids = array_merge([$id], self::getChildsId($id));
            $where['id'] = ['notin', $hide_ids];
        }
        // 获取节点
        $menus = Tree::toList(self::where($where)->order('pid,id')->column('id,pid,title'));
        foreach ($menus as $menu) {
            $result[$menu['id']] = $menu['title_display'];
        }
        // 设置默认节点项标题
        if ($default != '') {
            $result[0] = $default;
        }
        // 隐藏默认节点项
        if ($default === false) {
            unset($result[0]);
        }
        return $result;
    }

    /**
     * 获取顶部节点
     * @param string $max 最多返回多少个
     * @param string $cache_tag 缓存标签
     * @return array
     */
    public static function getTopMenu($max = '', $cache_tag = '')
    {
        $cache_tag .= '_role_' . session('user_auth.role');
        $menus = cache($cache_tag);
        if (!$menus) {
            // 非开发模式，只显示可以显示的菜单
            if (config('develop_mode') == 0) {
                $map['online_hide'] = 0;
            }
            $map['status'] = 1;
            $map['pid'] = 0;
            $menus = self::where($map)->order('sort,id')->limit($max)->column('id,pid,module,title,url_value,url_type,url_target,icon,params');
            foreach ($menus as $key => &$menu) {

                if ($menu['url_value'] != '' && ($menu['url_type'] == 'module_admin' || $menu['url_type'] == 'module_home')) {
                    $url = explode('/', $menu['url_value']);
                    $menu['controller'] = $url[1];
                    $menu['action'] = $url[2];
                    $menu['url_value'] = $menu['url_type'] == 'module_admin' ? admin_url($menu['url_value'], $menu['params']) : home_url($menu['url_value'], $menu['params']);
                }
            }
            // 非开发模式，缓存菜单
            if (config('develop_mode') == 0) {
                cache($cache_tag, $menus);
            }
        }
        return $menus;
    }

    /**
     * 获取侧栏节点
     * @param string $id 模块id
     * @param string $module 模块名
     * @param string $controller 控制器名
     * @return array|mixed
     */
    public static function getSidebarMenu($id = '', $module = '', $controller = '')
    {
        $menus=cache('auth_menu_list');

        if (!$menus) {
            // 获取当前节点地址
            $location = self::getLocation($id);
            // 当前顶级节点id
            $top_id = $location[0]['id'];
            // 获取顶级节点下的所有节点
            $map = [
                'status' => 1
            ];
            // 非开发模式，只显示可以显示的菜单
            if (config('develop_mode') == 0) {
                $map['online_hide'] = 0;
            }
//
            $auth = Db::name('auth_group_access')->where('uid', UID)->value('group_id');
            if ($auth == 1) {
                $menus = self::where($map)->order('sort,id')->column('id,pid,module,title,url_value,url_type,url_target,icon,params');
            } else {

                $menu_id = Db::name('auth_group')->where('id', $auth)->value('rules');
                $menus = self::where($map)->where('id', 'in', $menu_id)->order('sort,id')->column('id,pid,module,title,url_value,url_type,url_target,icon,params');
            }

//            // 解析模块链接
            foreach ($menus as $key => &$menu) {
                if ($menu['url_value'] != '' && ($menu['url_type'] == 'module_admin' || $menu['url_type'] == 'module_home')) {
                    $menu['url_value'] = $menu['url_type'] == 'module_admin' ? admin_url($menu['url_value'], $menu['params']) : home_url($menu['url_value'], $menu['params']);
                }
            }

            $menus = self::treeHtml(self::tree($menus, 0));

//             非开发模式，缓存菜单
            if (config('develop_mode') == 0) {
                cache('auth_menu_list', $menus);
            }
        }
        return $menus;
    }


    public static function treeHtml($menus,$left = 0,$border='',$padding='')
    {
    	$left++;
        $data = '<ul class="nav">';
        foreach ($menus as $menu) {
            if (isset($menu['child'])) {
                $data .= '<li style="border-left: '.$border.';">';
                $data .= '<a style="padding:'.$padding.';padding-left:'.($left * 20).'px;"><i class="'.$menu['icon'].'"></i><span class="nav-label">' . $menu['title'] . '</span><span class="fa arrow"></span></a>';
                $data .= self::treeHtml($menu['child'],$left,'none','7px 15px 7px 10px');
                $data .= '</li>';
            } else {
                $data .= '<li>';
                $data .= '<a style="padding:'.$padding.';padding-left:'.($left * 20).'px" class="J_menuItem" hrefs=' . $menu['url_value'] . ' data-title=' . $menu['title'] . '><i class="'.$menu['icon'].'"></i><span class="nav-label">' . $menu['title'] . '</span></a>';
                $data .= '</li>';
            }
        }
        $data .= '</ul>';
        return $data;
    }

    //获取树结构
    public static function tree(array $data, $index, array &$tree = [])
    {
        if (!is_array($tree)) {
            throw new Exception('$tree 必须为数组');
        }
        foreach ($data as $k => $value) {
            if ($value['pid'] == $index && !$value['url_value']) {
                $value['child'] = [];
                $value['child'] = self::tree($data, $value['id'], $value['child']);
                $tree[] = $value;
                unset($data[$k]);
            } elseif ($value['pid'] == $index) {
                $tree[] = $value;
                unset($data[$k]);
            }
        }
        return $tree;
    }

    /**
     * 获取指定节点ID的位置
     * @param string $id 节点id，如果没有指定，则取当前节点id
     * @param bool $del_last_url 是否删除最后一个节点的url地址
     * @param bool $check 检查节点是否存在，不存在则抛出错误
     * @return array
     * @throws \think\Exception
     */
    public static function getLocation($id = '', $del_last_url = false, $check = true)
    {
        $model = request()->module();
        $controller = request()->controller();
        $action = request()->action();

        if ($id != '') {
            $cache_name = 'location_menu_' . $id;
        } else {
            $cache_name = 'location_' . $model . '_' . $controller . '_' . $action;
        }

        $location = cache($cache_name);

        if (!$location) {


            // 剔除最后一个节点url
            if ($del_last_url) {
                $location[count($location) - 1]['url_value'] = '';
            }

            // 非开发模式，缓存菜单
            if (config('develop_mode') == 0) {
                cache($cache_name, $location);
            }
        }
        return $location;
    }

    /**
     * 根据分组获取节点
     * @param string $group 分组名称
     * @param bool|string $fields 要返回的字段
     * @param array $map 查找条件
     * @return array
     */
    public static function getMenusByGroup($group = '', $fields = true, $map = [])
    {
        $map['module'] = $group;
        return self::where($map)->order('sort,id')->cache($group)->column($fields, 'id');
    }

    /**
     * 获取节点分组
     * @return array
     */
    public static function getGroup()
    {
        $map['status'] = 1;
        $map['pid'] = 0;
        $menus = self::where($map)->order('id desc,sort desc')->column('module,title');
        return $menus;
    }

    /**
     * 获取所有子节点id
     * @param int $pid 父级id
     * @return array
     */
    public static function getChildsId($pid = 0)
    {
        $ids = self::where('pid', $pid)->column('id');
        foreach ($ids as $value) {
            $ids = array_merge($ids, self::getChildsId($value));
        }
        return $ids;
    }

    /**
     * 获取所有父节点id
     * @param int $id 节点id
     * @return array
     */
    public static function getParentsId($id = 0)
    {
        $pid = self::where('id', $id)->value('pid');
        $pids = [];
        if ($pid != 0) {
            $pids[] = $pid;
            $pids = array_merge($pids, self::getParentsId($pid));
        }
        return $pids;
    }

    /**
     * 根据节点id获取上下级的所有id
     * @param int $id 节点id
     * @return array
     */
    public static function getLinkIds($id = 0)
    {
        $childs = self::getChildsId($id);
        $parents = self::getParentsId($id);
        return array_merge((array)(int)$id, $childs, $parents);
    }




    //获得所有模块目录
    public static  function  getModules()
    {
        return glob(APP_PATH.'*/');
    }


    //获得所有控制器
    public static function getControllers()
    {
        $controller=[];
        foreach (self::getModules() as $value) {
            $modules=explode('/', $value);
            $c = [];
            foreach (glob($value . 'controller/*.php') as $a){
                $c[]=basename($a, '.php');
            }
            $controller[$modules[count($modules) - 2]] = $c;
        }
        return $controller;
    }

    /**
     * 获得模块下的所有方法
     * @param string $Modules 模块名
     * @param bool $h 是否去除通用父类方法
     * @return mixed
     * @throws Exception
     */
    public static function getActions($Modules,$h=false){
        static $action = [];

        if (!is_string($Modules)) {
            throw new Exception('$Modules必须为字符串');
        }

        if (isset($action[$Modules]))
        {
             return $action[$Modules];
        }

        //这个判断是多余的，在外面传太麻烦直接在这写了
        if ($Modules == 'admin') {
            $h = 'AdminController';
        }elseif($Modules == 'mobile'){
            $h = 'Base';
        }

        $admin = [];
        !$h || $admin = get_class_methods('app\\'.$Modules.'\controller\\'.$h);

        if (!is_array($admin)) {
            throw  new Exception($Modules . '模块中不存在' . $h.'类!');
        }

        foreach (self::getControllers()[$Modules] as $value){
            //这个方接受命名空间
            $action[$Modules][$value] = get_class_methods('app\\'.$Modules.'\controller\\'.$value);
            $action[$Modules][$value] = array_diff($action[$Modules][$value], $admin);
            //拼接成路径
            foreach ($action[$Modules][$value] as &$v ){
                $value= str_replace('Controller', '', $value);
                $v = $Modules . '/' . $value . '/' . $v;
            }
        }

        return $action[$Modules];
    }


}
