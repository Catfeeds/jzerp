<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/10 0010
 * Time: 13:45
 */

namespace app\admin\controller;

use app\admin\model\Organization;
use app\admin\model\Personnel;
use app\admin\model\PositionModel;
use app\admin\model\PositionGroup;
use util\Tree;

//部门职位
class DepartmentPositionController extends AdminController
{
    public function index()
    {

        $data = organization::all();
        foreach ($data as &$value) {
            $value = $value->toArray();
        }

        $tree = $this->tree($data, 0);

        $data = PositionModel::all();
        foreach ($data as &$value) {
            $value->title = $value->name;
        }

        $data = Tree::toList($data);


        //下拉框所属部门树形数据
        $this->assign('tree2', $data);
        //插件所需树形数据
        $this->assign('tree', $tree);

        return $this->fetch();

    }

    /**
     * @return array|bool
     */
    public function add()
    {



        if ($this->request->isPost()) {
            $data = $this->request->post();
            $result=$this->validate($data,[
                'group_id'=>'require',
                'position_id' => 'require|notIn:0',
                'user_id'=> 'require',
            ],[
                'group_id'=>'部门为必填',
                'position_id' => '请选择职位',
                'user_id'=> '请为该职位分配人员',

            ]);

            if (true !== $result) {
                return ajax(0, $result);
            }


            $code = [];
            if (isset($data['id']) && !!$data['id'] ) {
                if ($code['code'] = PositionGroup::update($data)) {
                    $code['msg'] = '编辑成功';
                } else {
                    $code['msg'] = '编辑失败';
                }
            } else {

                if (PositionGroup::get(['group_id' => $data['group_id'], 'position_id' => $data['position_id']])) {
                    return ajax(0, '该部门下已有对应职位,请不要重复添加!');
                }

                if ($code['code'] = PositionGroup::create($data)) {
                    $code['msg'] = '添加成功';
                } else {
                    $code['msg'] = '编辑失败';
                }
            }

            if ($code['code']) {
                return ajax(1, $code['msg']);
            } else {
                return ajax(0, $code['msg']);
            }
        }
        return false;
    }


    public function delete(){
        if ($this->request->isPost()) {
            $data=$this->request->post();
            if (PositionGroup::destroy($data)) {
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }
    }

    public function edit()
    {
        if ($this->request->isPost()) {
            $data = $this->request->post();
            $data = PositionGroup::get($data);
            $str = $this->getUserName($data->user_id);
            $data->str = $str;
            return $data;
        }
    }

    /**
     * @param array $data
     * @param $index
     * @return array
     * 获取树结构部门
     */
    public function tree(array $data, $pid)
    {
        $tree = [];
        foreach ($data as $k => $value) {
            if ($value['pid'] == $pid) {
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
     * @param $id 部门id
     * @return string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * 获取这个部门下的职位以及子部门下的职位
     */
    public function getPosition($id)
    {
        $data = $this->getChildren($id);
        if (count($data) == 1) {
            $data = PositionGroup::where('group_id', 'in', $data)->select();
            foreach ($data as &$value) {
                $value['bsf'] = $id;
            }
        } else {
            $list = PositionGroup::where('group_id', 'in', $data)->select();
            $data = [];
            //如果同一个部门下有同一个职位的话，则会将他们的user_id连起来合并为一条数据。
            foreach ($list as $value) {
                if (isset($data[$value->position_id])) {

                    $data[$value->position_id]['number_of_people'] += $value->number_of_people;
                    $data[$value->position_id]['user_id'] .= ',';
                    $data[$value->position_id]['user_id'] .= $value->user_id;

                } else {
                    $data[$value->position_id] = $value;
                }
                //有这个标识符代表是直属职位，可以对其进行操作
                if ($value->group_id == $id) {
                    $data[$value->position_id]['bsf'] = $id;
                }
            }
        }
        return $this->PackageHtml($data);
    }

    /**
     * @param array $data
     * @return string
     * 封装html
     */
    public function PackageHtml(array $data)
    {
        $list = '';
        foreach ($data as $value) {
            $userArr = explode(',', $value->user_id);

            $value->str = $this->getUserName($value->user_id);

            $count = count(array_unique($userArr));

            $list .= "<tr><td>" . $value->getPosition['name'] . "</td><td>$value->number_of_people</td><td>";
            $list .= $count . "</td><td>";
            $list .= $value->str . "</td><td>";
            if (isset($value['bsf'])) {
                $list .= "<span onclick='edit(this)' data-id='$value' class='btn btns btn-common'>编辑</span>";
                $list .= "<span onclick='drop(this)' data-id='$value' class='btn btns btn-common'>删除</span>";
            }
            $list .= "</td></tr>";
        }
        return $list;
    }

    /**
     * @param $user
     * @return string
     * 通过id获取用户名
     */
    public function getUserName($user)
    {

        $userArr = explode(',', $user);

        $username = Personnel::where('id', 'in', $userArr)->column('nickname');

        for ($i = 0, $count = count($username), $str = ''; $i < $count; ++$i) {
            if (($count - 1) != $i) {
                $str .= $username[$i] . ',';
            } else {
                $str .= $username[$i];
            }
        }
        return $str;
    }

    /**
     * @param $id
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * 递归得到部门id为$id的部门id以及子部门id
     */
    public function getChildren($id)
    {
        $children[] = $id;
        if (count($data = Organization::where(['pid' => $id])->select())) {
            foreach ($data as $value) {
                $children = array_merge($children, $this->getChildren($value->id));
            }
        }
        return $children;
    }
}
