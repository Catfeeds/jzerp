<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/27 0027
 * Time: 17:18
 */

namespace app\admin\controller;

use app\admin\model\Organization;
use app\admin\model\PersonnelBase;
use app\admin\model\Personnel;
use app\admin\model\PositionGroup;
use app\admin\model\PositionModel;
use util\Tree;

//组织管理
class OrganizationController extends AdminController
{

    public function index()
    {
        $data = organization::all();
        foreach ($data as &$value) {
            $value = $value->toArray();
        }

        $tree = $this->tree($data, 0);


        $tree2 = Organization::getBmxlk();


        $tree3 = PositionModel::getZwxlk();

        //下拉框所属部门树形数据
        $this->assign('tree2', json_decode($tree2));
        //插件所需树形数据
        $this->assign('tree', $tree);
        //下拉框职位树形结构
        $this->assign('tree3', json_decode($tree3));

        return $this->fetch();
    }

    /**
     * 保存部门数据
     */
    public function save()
    {
        $data = $this->request->post();
//        halt($data);
        $result = $this->validate($data, [
            'title' => 'require',
            'pid'   => 'require',
            'phone' => 'require|length:11',
        ], [
            'phone.length'  => '手机号长度为11位',
            'phone.require' => '手机号长度为11位',
            'title'         => '部门名称为必填',
            'pid'           => '上级部门为必填',
        ]);

        if (true !== $result) {
            return [false, $result];
        }

        $o = new Organization();
        if ($data['id']) {
            if ($o->save($data, ['id' => $data['id']])) {
                $details = '修改了部门' . $o->title;
                action_log('edit_organization', 'organization/save', '', UID, $details);
                return [true];
            }
        } else {
            if ($o->save($data)) {
                $details = '添加了部门' . $o->title;
                action_log('add_organization', 'organization/save', '', UID, $details);
                return [true];
            }
        }
        return [false, '未做出任何改变'];
    }

    //删除部门
    public function delete($id)
    {
        if (Organization::get(['pid' => $id])) {
            return ajax(0, '此部门下还有子部门，不可删除');
        };
        if (Personnel::get(['group' => $id])) {
            return ajax(0, '此部门下还有用户，不可删除');
        }

        if ($organization = Organization::get($id)) {
            $details = '删除了部门' . $organization->title;
            action_log('delete_organization', 'organization/delete', '', UID, $details);
            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }

    }

    /**
     * 保存用户数据
     */
    public function save2()
    {
        $data = $this->request->post();

        $result = $this->validate($data, [
            'nickname' => 'require',
            'username' => 'require',
            'mobile'   => 'require|length:11',

        ], [
            'phone.length'  => '手机号长度为11位',
            'phone.require' => '手机长度为必填',
            'nickname'      => '昵称为必填',
            'username'      => '账号名为必填',
        ]);
        if (true !== $result) {
            return [false, $result];
        }
        $o = new Personnel();
        if ($data['id']) {
            if ($o->save($data, ['id' => $data['id']])) {
                return [true];
            }
        } else {
            if ($o->save($data)) {
                return [true];
            }
        }
        return [false, '未做出任何改变'];
    }

    /**
     * @param array $data
     * @param $index
     * @return array
     * 获取树结构
     */
    public function tree(array $data, $index)
    {
        $tree = [];
        foreach ($data as $k => $value) {
            if ($value['pid'] == $index) {
                $value['text'] = $value['title'];
                $value['state'] = ['opened' => true];
                $tem = $value;
                unset($data[$k]);
                $tem['children'] = $this->tree($data, $value['id']);

                $list[$value['id']] = $tem;
                $tree[] = $tem;
            }
        }

        return $tree;
    }


    /**
     * 获取子部门或用户
     * @param $id
     * @param bool $name
     * @return string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     *
     */
    public function getChildren($id, $name = false)
    {
        if ($name == true) {
            $data=Personnel::where('nickname', 'like', '%'.$id.'%')->select();
            return $this->getUserHtml($data);
        } else {
            $data = Organization::where('pid', $id)->select();

            if (!isset($data[0])) {
                //用户
                $data = Personnel::where('group', $id)->select();
                return $this->getUserHtml($data);
            } else {
                //部门
                return $this->getOrganizationHtml($data);
            }
        }
    }

    /**
     * 封装用户html
     * @param $data
     * @return string
     */
    public function getUserHtml($data){
        $list = '';
        foreach ($data as $value) {
            $value = $value->toArray();
//                $value['date_of_birth']= date('Y-m-d',$value['date_of_birth']);
            $value['direct_superiorName'] = Personnel::where('id', $value['direct_superior'])->column('nickname');
            //基本信息          必须将他们两格式化为json字符串才能传参
            $str = json_encode($value);
            //职位信息
//                $str2 = json_encode($this->getPosition($value['id']));
            $list .= '<tr  class="gradeA even"><td>' . $value['nickname'] . '</td><td>';
            $list .= implode(',', get_position($value['id'])) . '</td><td>' . $value['order'] . '</td><td>';
            $list .= "<span onclick='edit($str)' class='btn btns btn-common' >编辑</span>";
            $list .= '</td></tr>';
        }
        return $list;
    }

    /**
     * 封装部门html
     * @param $data
     * @return string
     */
    public function getOrganizationHtml($data){
        //部门
        $list = '';
        foreach ($data as $value) {
            $value = $value->toArray();
            $str = json_encode($value);
            $list .= '<tr   class="gradeA even"><td>' . $value['title'] . '</td><td>';
            $list .= (isset($value['group']) ? $value['group'] : '') . '</td><td>' . $value['order'] . '</td><td>';
            $list .= "<span onclick='edit2($str)' class='btn btns btn-common'>编辑</span>";
            $list .= '<span onclick="del(' . $value['id'] . ')" class="btn btns btn-del">删除</span>';
            $list .= '</td></tr>';
        }
        return $list;
    }

    /**
     * @param int $id
     * @return string
     * @throws \think\exception\DbException
     * 得到职位
     */
//    public function getPosition($id = 1)
//    {
//        //得到用户信息
//        $data = Personnel::get($id);
//        $list = '';
//        //data下的positionGroup为关联属性,getPosition以及getGroup为positionGroup下的关联属性
//        foreach ($data->positionGroup as $value) {
//            $list .= '<tr><td>' . $value->getPosition->name . '</td><td>';
//            $list .= $value->getGroup->title . '</td><td>';
//            $list .= ' <span onclick="editPosition()" class="btn btns btn-common">编辑</span>
//                        <span onclick="" class="btn btns btn-del">删除</span></td></tr>';
//        }
//        return $list;
//    }


}