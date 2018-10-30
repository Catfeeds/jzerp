<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/10/9 0009
 * Time: 09:01
 */

namespace app\admin\controller;


use app\admin\model\AuthGroupAccess;
use app\admin\model\AuthRuleModel;
use app\admin\model\Menu;
use app\admin\model\Organization;
use think\auth\Auth;
use think\Loader;

//规则设置
class AuthRuleController extends AdminController
{
    public function index()
    {
        $data = AuthRuleModel::where(true)->order('order', 'desc')->paginate(10);

        $menu = Menu::all();

        $o = Organization::where(true)->column('id,title');

        foreach ($data as &$value) {
            $value['tree'] = json_encode($this->tree($menu, 0, array_flip(explode(',', $value['rules']))));
            $value['o_title'] = $o[$value['organization']];
        }

        $this->assign('Organization', json_decode((Organization::getBmxlk())));
        $this->assign('data', $data);
        return $this->fetch();

    }

    public function add($id, $totalSel)
    {
        if (AuthRuleModel::update(['rules' => $totalSel], ['id' => $id])) {
            $user= AuthGroupAccess::where(['group_id' => $id])->select();
            foreach ($user as $u) {
                cache('_auth_list_' . $u->uid, null);
            }
            return ajax(1);
        }
        return ajax(0);
    }


    public function edit()
    {
        $data = input();
        $result = $this->validate($data, [
            'title'        => 'require',
            'organization' => 'require',
        ], [
            'title'        => '角色名为必填',
            'organization' => '所属部门名为必填',
        ]);
        if (true !== $result) {
            return ajax(0, $result);
        }
        if ($data['id']) {
            $code = AuthRuleModel::update($data);

            if ($code) {
                $msg = '编辑成功';
            } else {
                $msg = '编辑失败';
            }
        } else {
            $code = AuthRuleModel::create($data);
            if ($code) {
                $msg = '编辑成功';
            } else {
                $msg = '编辑失败';
            }
        }

        return ajax($code, $msg);

    }

    public function delete($id)
    {
        if ($id == 1) {
            return ajax(0, '超级管理员不可删除');
        }

        if (AuthRuleModel::destroy($id)) {

            $user= AuthGroupAccess::where(['group_id' => $id])->select();
            foreach ($user as $u) {
                cache('_auth_list_' . $u->uid, null);
            }

            return ajax(AuthGroupAccess::destroy(['group_id' => $id]));
        }

        return 0;
    }

    /**
     * @param array $data 数据
     * @param int $index 根节点pid
     * @param array $selected 默认选中的节点
     * @return array
     * 获取树结构
     */
    public function tree(array $data, $index, $selected)
    {
        $tree = [];
        foreach ($data as $k => $value) {
            if ($value['pid'] == $index) {
                $value['text'] = $value['title'];

                $value['state'] = [
                    'opened'   => true,
                    'selected' => isset($selected[$value['id']]) ? true : false,
                    'disabled' => $value['status'] ? false : true,
                ];
                $tem = $value;
                unset($data[$k]);
                $tem['children'] = $this->tree($data, $value['id'], $selected);

                $list[$value['id']] = $tem;
                $tree[] = $tem;
            }
        }
        return $tree;
    }

    //检查权限
    public static function checkRule()
    {
        $auth = Auth::instance();
        if (!$auth->check()) {
//            if (AuthRuleModel::getLocation() == 'admin/index/index'|| AuthRuleModel::getLocation() == 'admin/index/home') {
//                echo "<script type='text/javascript'>alert('权限不足!')";
//                $p= new  PublicController();
//                $p->signout();
//            }
                exit("<script type='text/javascript'>alert('权限不足!');history.back(-1); </script>");
        }
    }


}