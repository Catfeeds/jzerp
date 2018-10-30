<?php

namespace app\admin\controller;

use app\admin\model\AdminFilesModel;
use app\admin\model\AuthGroupAccess;
use app\admin\model\AuthRuleModel;
use app\admin\model\Organization;
use app\admin\model\Personnel;
use app\admin\model\PersonnelBase;
use app\admin\model\PersonnelRecord;
use app\admin\model\PositionGroup;
use app\admin\model\PositionModel;
use app\admin\validate\PersonnelBaseValidate;
use function PHPSTORM_META\type;
use think\Db;
use think\Exception;
use think\helper\Hash;
use think\Image;

//人事
class PersonnelController extends AdminController
{

    protected $emptyArray = [
        'id'                   => '',
        'username'             => '',
        'nickname'             => '',
        'openid'               => '',
        'password'             => '',
        'email'                => '',
        'email_bind'           => '',
        'mobile'               => '',
        'mobile_bind'          => '',
        'avatar'               => '',
        'sex'                  => '',
        'birth'                => '',
        'money'                => '',
        'score'                => '',
        'role'                 => '',
        'position'             => '',
        'position_group'       => '',
        'group'                => '',
        'signup_ip'            => '',
        'last_login_time'      => '',
        'last_login_ip'        => '',
        'sort'                 => '',
        'status'               => '',
        'days'                 => '',
        'sign_days'            => '',
        'is_on'                => '',
        'job_number'           => '',
        'login_set'            => '',
        'direct_superior'      => '',
        'recordid'             => '',
        'order'                => '',
        'work_phone'           => '',
        'home_telephone'       => '',
        'qq'                   => '',
        'address'              => '',
        'Job_scheduling'       => '',
        'date_of_birth'        => '',
        'files'                => '',
        'direct_superior_name' => '',
        'getRecord'            => [
            'rid'                             => '',
            'file_number'                     => '',
            'date_on_board'                   => '',
            'id_number'                       => '',
            'former_name'                     => '',
            'english_name'                    => '',
            'marital_status'                  => '',
            'work_date'                       => '',
            'job_level'                       => '',
            'title_level'                     => '',
            'highest_education'               => '',
            'highest_degree'                  => '',
            'health_status'                   => '',
            'bank'                            => '',
            'social_security_card_number'     => '',
            'emergency_contact'               => '',
            'working_state'                   => '',
            'positive_date'                   => '',
            'account_types'                   => '',
            'famous_family'                   => '',
            'country_citizenship'             => '',
            'political_status'                => '',
            'post'                            => '',
            'administrative_level'            => '',
            'job_title'                       => '',
            'graduated_school'                => '',
            'major'                           => '',
            'height'                          => '',
            'bank_account'                    => '',
            'social_security_computer_number' => '',
            'emergency_contact_phone'         => '',
            'employee_type'                   => '',
            'resignation_date'                => '',
            'account_location'                => '',
            'birthplace'                      => '',
            'passport'                        => '',
            'political_status_date'           => '',
            'foreign_language_type'           => '',
            'title_acquisition_date'          => '',
            'graduation_date'                 => '',
            'hobby'                           => '',
            'body_weight'                     => '',
            'provident_fund'                  => '',
            'salary_identification'           => '',
            'remarks'                         => '',
            'annex'                           => '',
        ],
    ];

    /**
     * @return mixed
     * @throws \think\exception\DbException
     */
    public function index()
    {

//        halt(input());

        $keyword = ['nickname'];

        if (isset(input()['group']) && input()['group']) {
            $keyword[]='group';
        }

        //假装排序与搜索有重名的示例, 其中 create_time作为重名处理, update_time 不重名
        //示例参数
//        $sort = [['create_time' => 'create_times desc'], 'update_time'] asc为默认排序, 可不传, 不传则默认desc
        $sort = [['create_time' => 'create_times asc']];
        $between = ['create_time' => ['s_time', 'e_time', 'time']];
        $result = $this->page_parm_request($keyword, $sort, $between);

        if (isset(input()['position']) && input()['position']) {
            $user= array_column(PositionGroup::all(['position_id' => input()['position']]),'user_id');
            if ($user) {
                $result['map']['id'] = ['in', $user];
            }

            $result['page_parm']['query']['position'] = input()['position'];
        }



        $data = Personnel::getList($result['map'], $result['order'], $result['page_parm']);
        $title = Organization::column('id,title');

        foreach ($data as &$d) {
            $d->group = $title[$d->group];
//            $d->position_group = implode(',',array_intersect_key($position_list, array_column($d->positionGroup, 'id', 'position_id')));
            $d->position_group = implode(',', get_position($d->id));
        }


        $this->assign('bm', json_decode(Organization::getBmxlk()));
        $this->assign('zw', json_decode(PositionModel::getZwxlk()));


        return $this->fetch('', ['data' => $data, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);


    }


    /**
     *
     * @param $id
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function edit($id = null)
    {


//        config('app_debug') || cache('getBasicAndRecord');

        if (!$id) {
            //将空数据渲染给视图
            $this->assign('isAdd', true);
            $this->assign('data', $this->emptyArray);
            $this->assign('Character', 0);
        } else {
            $data = personnel::get($id);


            //处理职位
            $title = Organization::column('id,title');
            $name = PositionModel::column('id,name');
            $test = [];
            foreach ($data->positionGroup as $pg) {
                $pg->group_id_name = $title[$pg->group_id];
                $pg->position_id_name = $name[$pg->position_id];
                $test[] = $pg;
            }
            //将关联的职位属性给position_group 字段
            $data->position_group = $test;


            if (!$data->getRecord) {
                $data->getRecord = $this->emptyArray['getRecord'];
            } else {
                $data->getRecord->toArray();
            }


            //用户基础信息与档案信息
            $data = $data->toArray();
            $data['direct_superior_name'] = Personnel::get($data['direct_superior'])['nickname'];

            //用户基础信息与档案信息
            $this->assign('data', $data);

            $files = explode(',', $data['getRecord']['annex']);
            $map = [];
            $map['id'] = ['in', $files];
            $files = AdminFilesModel::where($map)->select();
            $this->assign('files', $files);

            $a = AuthGroupAccess::get(['uid' => $data['id']]);

            $this->assign('Character', $a ? $a->group_id : null);

        }
        $data = PersonnelBase::column('id,pid,coding,name');
        foreach ($data as $value) {
            if ($value['pid'] == '0') {
                switch ($value['coding']) {
                    case 'marital_status':
                        $this->assign('marital_status', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'political_status':
                        $this->assign('political_status', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'account_types':
                        $this->assign('account_types', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'employee_type':
                        $this->assign('employee_type', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'job_title':
                        $this->assign('job_title', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'post':
                        $this->assign('post', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'highest_education':
                        $this->assign('highest_education', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'highest_degree':
                        $this->assign('highest_degree', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'job_level':
                        $this->assign('job_level', $this->filtrationArray($data, $value['id']));
                        break;
                    case 'title_level':
                        $this->assign('title_level', $this->filtrationArray($data, $value['id']));
                        break;
                }
            }
        }

        //部门
        $tree = Organization::getBmxlk();
//        职位
        $tree2 = PositionModel::getZwxlk();
//        角色
        $this->assign('character', array_column(AuthRuleModel::all(), 'title', 'id'));
        $this->assign('tree2', json_decode($tree2));
        $this->assign('tree', json_decode($tree));

        return $this->fetch('common');
    }

    //过滤数组
    public function filtrationArray(&$data, $id)
    {
        $list = [];
        foreach ($data as $key => $value) {
            if ($value['pid'] == $id) {
                $list[$value['id']] = $value['name'];
                unset($data[$value['id']]);
            }
        }
        return $list;
    }

    public function save()
    {
        $data = $this->request->post();
        $result = $this->validate($data, [
            'nickname' => 'require',
            'username' => 'require',
        ], [
            'nickname' => '昵称为必填',
            'username' => '账号名为必填',
        ]);
        if (true !== $result) {
            return ajax(false, $result);
        }
        if ($data['id']) {
            $user = Personnel::get($data['id']);


            $c = $data['auth_group'];
            unset($data['auth_group']);

            $user->startTrans();
            try {
                if ($a=$user->allowField(true)->save($data)) {
                    if (!$user->getRecord) {
                        foreach ($data as $key => $value) {
                            if (!($key == 'getRecord')) {
                                unset($data[$key]);
                            }
                        }
                        $user->getRecord()->save($data);


                    } else {
                        $user->getRecord->allowField(true)->save($data);
                    }
                } else {
                    return ajax(false, '系统错误');
                }
                // 提交事务
                $user->commit();
                $code = 1;
            } catch (\Exception $e) {
                // 回滚事务
                $user->rollback();
                $code = 0;
            }
            if ($code) {

                //分配权限

                $z = AuthGroupAccess::get(['uid' => $user['id']]);
                if ($z && $z['group_id'] !=$c ) {
                    cache('_auth_list_' . $user['id'], null);

                    AuthGroupAccess::update(['uid' => $user['id'], 'group_id' => $c], ['id' => $z->id]);
                } elseif(!$z) {
                    AuthGroupAccess::create(['uid' => $user['id'], 'group_id' => $c]);
                }


                $details = '修改了' . $user->nickname . '用户';
                action_log('edit_user', 'personnel/save', '', UID, $details);
                return ajax($code, '编辑成功');
            } else {
                return ajax($code, '编辑失败');
            }


        } else {
            $user = new Personnel();
            foreach ($this->emptyArray['getRecord'] as $key => $value) {
                $list[$key] = $data[$key];
                unset($data[$key]);
                unset($data['undefined']);
                unset($data['file']);
            }
            $c = $data['auth_group'];
            unset($data['auth_group']);
            //默认密码
            $data['password'] = config('default_password');
            $user->startTrans();

            try {

                if ($user = $user->allowField(true)->create($data)) {

                    $code = $user->getRecord()->save($list);
                } else {
                    return ajax(false, '系统错误');
                }

                $user->commit();
                $code = 1;
            } catch (\Exception $e) {
                $user->rollback();
                $code = 0;
            }
            if ($code) {

                //分配权限
                if ($z = AuthGroupAccess::get(['uid' => $user['id']])) {
                    AuthGroupAccess::update(['uid' => $user['id'], 'group_id' => $c], ['id' => $z->id]);
                } else {
                    AuthGroupAccess::create(['uid' => $user['id'], 'group_id' => $c]);
                }

                $details = '添加了' . $user->nickname . '用户';
                action_log('add_user', 'personnel/save', '', UID, $details);
                return ajax($code, '添加成功');
            } else {
                return ajax($code, '添加失败');
            }
        }
    }

    /**
     * @param $ids
     * @return array
     * @throws \think\exception\DbException
     * 删除
     * 坑爹的tp5 关联删除不能使用驼峰写法，比如你的关联方法是 getRecord需写成get_record
     *
     */
    public function delete($ids)
    {

        if (!$ids) {
            return ajax(0, '参数错误');
        }
        $a = explode(',', $ids);

        if (is_array($a) && $a) {
            foreach ($a as $value) {
                $user = Personnel::get($value);
                $user->startTrans();
                try {
                    if ($user->together('get_record')->delete()) {
                        $AuthGroupAccess = AuthGroupAccess::get(['uid' => $user->id]);
                        if ($AuthGroupAccess) {
                            $AuthGroupAccess->delete();
                        }

                        cache('_auth_list_' . $user['id'], null);
                        $details = '删除了' . $user->nickname . '用户';
                        action_log('add_delete', 'personnel/delete', '', UID, $details);
                        $user->commit();
                    }
                } catch (\Exception $exception) {
                    $user->rollback();
                    return ajax(0, '删除失败');
                }
            }
            return ajax(1, '删除成功');
        } else {
            return ajax(0, '参数错误');
        }


    }


    /**
     * @return mixed
     * @throws \think\exception\DbException
     * 基础信息
     */
    public function base()
    {
        $data = PersonnelBase::where('pid', '0')->paginate(10);
        $this->assign('data', $data);
        return $this->fetch();
    }

    /**
     * @param $id
     * @param bool $bool
     * @return array|bool|false|\PDOStatement|string|\think\Collection|\think\Model
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * 请求子集或某个子类的信息
     */
    public function base_edit($id, $bool = false)
    {
        if ($bool) {
            $data = PersonnelBase::where('id', $id)->find();

            return $data;
        } else {
            $data = PersonnelBase::where('pid', $id)->order('order desc')->select();
            $list = '';
            if ($data) {
                foreach ($data as $value) {
                    $value = $value->toArray();

                    $list .= '<tr><td>';

                    $list .= $value['name'] . '</td><td>' . $value['coding'] . '</td><td>' . $value['order'] . '</td><td>';

                    $list .= '<button onclick="edit2(' . $value['id'] . ')"  class="btn btn-primary btn-sm">编辑</button><button onclick="drop(this,' . $value['id'] . ')" class="btn btn-default btn-sm">删除</button></td>';
                    $list .= '</tr>';
                }
                return $list;

            } else {
                return false;
            }

        }
    }

    /**
     * @param $id
     * @param $name
     * @param $coding
     * @param $order
     * @return array|false|int
     * 基础信息更新
     */
    public function base_update($id, $name, $coding, $order)
    {

        $validate = new PersonnelBaseValidate();

        $PersonnelBase = new PersonnelBase();

        $data = [
            'name'   => $name,
            'coding' => $coding,
        ];

        $order == "" ?: $data['order'] = $order;

        if (!$validate->check($data)) {
            return [false, $validate->getError()];
        }

        $bool = $PersonnelBase->save($data, ['id' => $id]);

        return [$bool];
    }

    /**
     * @param $pid
     * @param $name
     * @param $coding
     * @param $order
     * 基础信息保存
     */
    public function base_save($pid, $name, $coding, $order)
    {


        $validate = new PersonnelBaseValidate();

        $data = [
            'name'   => $name,
            'coding' => $coding,
            'pid'    => $pid,
        ];

        $order == "" ?: $data['order'] = $order;

        if (!$validate->check($data)) {
            return [false, $validate->getError()];
        }

        $PersonnelBase = new  PersonnelBase($data);
        $bool = $PersonnelBase->save();
        return [$bool];
    }

    /**
     * @param $id
     * @return int
     * 基础信息删除
     */
    public function base_drop($id)
    {
        $bool = PersonnelBase::destroy($id);
        return $bool;
    }

    public function uplodeImg()
    {
        return $this->saveBase64Image('personnel');

    }

    /**
     * @param $to_dir
     * @return array
     * @throws Exception
     */
    function saveBase64Image($to_dir)
    {
        //文件内容
        $base64_image_content = input('base');


        //文件名
        $name = input('name');
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_image_content, $result)) {
            //图片后缀
            $type = $result[2];
            //保存位置--图片名
            $image_name = date('His') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT) . "." . $type;
            $image_url = 'uploads' . DS . $to_dir . DS . date('Ymd') . DS . $image_name;
            if (!is_dir(dirname($image_url))) {
                mkdir(dirname($image_url), 0777, true);
            }
            //解码
            $decode = base64_decode(str_replace($result[1], '', $base64_image_content));

            $fail = [];
            $arr = [];
            $arr['name'] = $name;
            $arr['ext'] = $type;
            $arr['size'] = '0';
            $arr['desc'] = '0';
            if ($a = file_put_contents($image_url, $decode)) {

                //不能把小图片变大
//                $image=Image::open($image_url);
//                $image->thumb(350, 350)->save($image_url);

                $arr['path'] = $image_url;
                $arr['user_id'] = UID;
            } else {
                $arr['err'] = $a;
                $fail[] = $arr;
            }
        } else {
            $data['code'] = 0;
            $data['name'] = '';
            $data['url'] = '';
            $data['msg'] = 'base64图片格式有误！';
        }
        //如果数据库中有同名文件同后缀文件则不存数据库
        if (!$saveFile = AdminFilesModel::where(['name' => $name, 'ext' => $type])->find()) {
            $saveFile = new AdminFilesModel;
            $model = $saveFile->save($arr);
        } else {
            $model = true;
        }
        if ($model) {
            return ajax(1, '上传成功', '', ['success' => $saveFile, 'fail' => $fail]);
        } else {
            return ajax(0, '上传失败', '', ['success' => $saveFile, 'fail' => $fail]);
        }
    }

    //修改密码
    public function updatePass()
    {
        if (!(isset(input()['old']) && isset(input()['new']) && isset(input()['determine']))) {
            return ajax(0, '参数错误');
        }

        $user = Personnel::get(UID);
        if (!(Hash::check(input()['old'], $user->password))) {
            return ajax(0, '原密码错误');
        } else {
            if (!preg_match('/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,21}$/', input()['new'])) {
                return ajax(0, '密码格式错误');
            } elseif (!(input()['new'] == input()['determine'])) {
                return ajax(0, '两次密码输入不一致');
            } else {
                if ($user->save(['password' => input()['new']])) {
                    return ajax(1, '修改成功');
                }
            }
        }
    }
}
