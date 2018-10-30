<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/10/9 0009
 * Time: 09:07
 */

namespace app\admin\model;


use think\Exception;
use think\Loader;
use think\Model;
use util\Tree;

class AuthRuleModel extends Model
{
    protected $name = 'auth_group';

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
        $model = Loader::parseName(request()->module());
        $controller = Loader::parseName(request()->controller());
        $action = Loader::parseName(request()->action());


        if ($id != '') {
            $cache_name = 'location_menu_'.$id;
        } else {
            $cache_name = 'location_'.$model.'_'.$controller.'_'.$action;
        }

        $location = cache($cache_name);

        if (!$location) {
//            $map['pid'] = ['<>', 0];
            $map['url_value'] = strtolower($model.'/'.trim(preg_replace("/[A-Z]/", "_\\0", $controller), "_").'/'.$action);

            // 当前操作对应的节点ID
            $curr_id  = $id == '' ? Menu::where($map)->value('id') : $id;
            // 获取节点ID是所有父级节点
            $location = Tree::getParents(Menu::column('id,pid,title,url_value'), $curr_id);

            if ($check && empty($location)) {
                throw new Exception($map['url_value'].'获取不到当前节点地址，可能未添加节点', 9001);
            }

            // 剔除最后一个节点url
            if ($del_last_url) {
                $location[count($location) - 1]['url_value'] = '';
            }

            // 非开发模式，缓存菜单
            if (config('develop_mode') == 0) {
                cache($cache_name, $location);
            }
        }

        return $location[count($location)-1]['url_value'];
    }


    /**
     * 读取当前角色权限
     * @return mixed
     */
    public function roleAuth()
    {
        $menu_auth = cache('role_menu_auth_'.session('user_auth.role'));
        if (!$menu_auth) {
            $menu_auth = Menu::where('id', session('user_auth.role'))->value('menu_auth');
            $menu_auth = json_decode($menu_auth, true);
            $menu_auth = Menu::where('id', 'in', $menu_auth)->column('id,url_value');
        }
        // 非开发模式，缓存数据
        if (config('develop_mode') == 0) {
            cache('role_menu_auth_'.session('user_auth.role'), $menu_auth);
        }
        return $menu_auth;
    }

}