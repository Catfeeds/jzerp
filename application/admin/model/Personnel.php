<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/27 0027
 * Time: 16:47
 */

namespace app\admin\model;

use think\auth\Auth;
use think\Model;
use think\Config;
use think\Db;
use think\helper\Hash;

/**
 * Class personnel
 * @package app\admin\model
 * @mixin organization
 * 人事模型以及用户登录模型
 */
class Personnel extends Model
{

    protected $autoWriteTimestamp = true;
    protected $name = 'personnel_user_basic';

    /**
     * @param array $map
     * @param string $order
     * @param array $page_parm
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public static function getList($map = [], $order = 'create_time desc', $page_parm = [])
    {

        return self::where($map)->order($order)->paginate(10, false, $page_parm);
    }

    /**
     * @return model\relation\HasOne
     * 基本信息 <-> 档案信息 一对一
     */
    public function getRecord()
    {
        return $this->hasOne('PersonnelRecord', 'rid', 'id');
    }

    /**
     * @return model\relation\HasOne
     *  基本信息 <-> 部门 一对一
     */
    public function getGroup()
    {
        return $this->hasOne('organization', 'id', 'group');
    }


    /**
     * @return model\relation\HasMany
     * 用户 <-> 职位部门 一对多关联
     */
    public function positionGroup()
    {
        return $this->hasMany('PositionGroup', 'user_id', 'id');
    }
    //定义获取器
    //出生日期
    public function getDateOfBirthAttr($value)
    {
        return date('Y-m-d', $value);

    }
    //定义修改器
    //出生日期
    public function setDateOfBirthAttr($value)
    {
        return $value ? strtotime($value) : time();
    }

    //定义获取器
    //创建时间
    public function getCreateTimeAttr($value)
    {
        return date('Y-m-d', $value);

    }

    //获取男女
    public function getSexAttr($value)
    {
        return $value == 0 ? '男' : '女';

    }

    public function setSexAttr($value)
    {
        return $value == '男' ? 0 : 1;

    }

    // 对密码进行加密
    public function setPasswordAttr($value)
    {
        return Hash::make((string)$value);
    }

    // 获取注册ip
    public function setSignupIpAttr()
    {
        return get_client_ip(1);
    }

    /**
     * 用户登录
     * @param string $username 用户名
     * @param string $password 密码
     * @param bool $rememberme 记住登录
     * @return bool|mixed
     */
    public function login($username = '', $password = '', $rememberme = false)
    {
        $username = trim($username);
        $password = trim($password);

        // 匹配登录方式
        if (preg_match("/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/", $username)) {
            // 邮箱登录
            $map['email'] = $username;
        } elseif (preg_match("/^1\d{10}$/", $username)) {
            // 手机号登录
            $map['mobile'] = $username;
        } else {
            // 用户名登录
            $map['username'] = $username;
        }

        $map['status'] = 1;

        // 查找用户
        $user = static::get($map);
        if (!$user) {
            $this->error = '用户不存在或被禁用！';
        } else {
//             检查是否分配用户组
            $Auth= new Auth();
            if (!$Auth->getGroups($user['id'])) {
                $this->error = '禁止访问，原因：未分配角色！';
                return false;
            }

            if (!Hash::check((string)$password, $user['password'])) {
                $this->error = '密码错误！';
            } else {
                $uid = $user['id'];

                // 更新登录信息
                $user['last_login_time'] = request()->time();
                $user['last_login_ip'] = get_client_ip(1);
                if ($user->save()) {
                    // 自动登录
                    return $this->autoLogin(self::get($uid), $rememberme);
                } else {
                    // 更新登录信息失败
                    $this->error = '登录信息更新失败，请重新登录！';
                    return false;
                }
            }
        }
        return false;
    }

    /**
     * 自动登录
     * @param object $user 用户对象
     * @param bool $rememberme 是否记住登录，默认7天
     * @return bool|int
     */
    public function autoLogin($user, $rememberme = false)
    {
        // 记录登录SESSION和COOKIES
        $auth = array(
            'uid'             => $user->id,
            'group'           => $user->group,
            'role'            => $user->role,
            //            'role_name'       => Db::name('admin_role')->where('id', $user->role)->value('name'),
            'avatar'          => $user->avatar,
            'username'        => $user->username,
            'nickname'        => $user->nickname,
            'last_login_time' => $user->last_login_time,
            'last_login_ip'   => get_client_ip(1),
        );
        session('user_auth', $auth);
        session('user_auth_sign', data_auth_sign($auth));

        // 保存用户节点权限     //测试阶段先关闭这个验证
//        if ($user->role != 1) {
//            $menu_auth = Db::name('admin_role')->where('id', session('user_auth.role'))->value('menu_auth');
//            $menu_auth = json_decode($menu_auth, true);
//            if (!$menu_auth) {
//                session('user_auth', null);
//                session('user_auth_sign', null);
//                $this->error = '未分配任何节点权限！';
//                return false;
//            }
//        }

        // 记住登录
        if ($rememberme) {
            $signin_token = $user->username . $user->id . $user->last_login_time;
            cookie('uid', $user->id, 24 * 3600 * 7);
            cookie('signin_token', data_auth_sign($signin_token), 24 * 3600 * 7);
        }

        return $user->id;
    }


    //获取用户
    public static function getUser()
    {
        $res = array();
        $users = DB::name('personnel')->select();
        foreach ($users as $key => $value) {
            $res[$value['id']] = $value['nickname'];
        }
        return $res;
    }

    //获取职位
    public static function getName()
    {
        $users = Db::name('system_position')->column('name', 'id');

        return $users;
    }

    public static function exportData($map = [], $order = [])
    {
        $data_list = self::view('personnel', true)
            ->view('system_organization', ['title' => 'organization_name'], 'system_organization.id=personnel.group', 'left')
            ->view('system_position', ['name' => 'position_name'], 'system_position.id=personnel.position', 'left')
            ->where($map)
            ->where($order)
            ->select();

        foreach ($data_list as $key => &$value) {

            if ($value['sex'] == 1) {
                $value['sex'] = "男";
            } elseif ($value['sex'] == 2) {
                $value['sex'] = "女";
            } else {
                $value["sex"] = "保密";
            }

            switch ($value['is_on']) {
                case 0:
                    $value['on'] = "定编";
                    break;
                case 1:
                    $value['on'] = "在职";
                    break;
                case 2:
                    $value['on'] = "缺职";
                    break;
                case 3:
                    $value['on'] = "超编";
                    break;
                case 4:
                    $value['on'] = "兼职";
                    break;
                default:
                    $value['on'] = "缺职";
                    break;
            }
            $value['create_time'] = date('Y-m-d', $value['create_time']);
            $value['status'] = $value['status'] == 1 ? "启用" : "禁用";
        }
        return $data_list;
    }


}