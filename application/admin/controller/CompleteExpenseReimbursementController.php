<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/17 0017
 * Time: 15:21
 */

namespace app\admin\controller;


use app\admin\model\CompleteExpenseReimbursement;

//报销 已改
class CompleteExpenseReimbursementController extends FlowcommonController
{
    public function index()
    {
        $keyword = ['title'];
        //假装排序与搜索有重名的示例, 其中 create_time作为重名处理, update_time 不重名
        //示例参数
//        $sort = [['create_time' => 'create_times desc'], 'update_time'] asc为默认排序, 可不传, 不传则默认desc
        $sort = [['create_time' => 'create_times asc']];
        $between = ['create_time' => ['s_time', 'e_time', 'time']];
        $result = $this->page_parm_request($keyword, $sort, $between);

        if (isset($result['map']['create_time'][1])) {
            //将字符转换为相同类型即可比对
            if (is_array($result['map']['create_time'][1])) {
                foreach ($result['map']['create_time'][1] as &$value) {
                    $value = date('Y-m-d', $value);
                }
            } else {
                $result['map']['create_time'][1] = date('Y-m-d', $result['map']['create_time'][1]);
            }
        }
        $data = CompleteExpenseReimbursement::getList($result['map'], $result['order'], $result['page_parm']);
        //获取项目名
        $project = projectList();
        //获取用户名
        $userName = get_personnel_list();
        foreach ($data as &$value) {
            $value->user_id = array_column($userName, 'nickname', 'id')[$value->user_id];
            $value->project_name = (array_column($project, 'title', 'id')[$value->project_name]);
        }
        return $this->fetch('', ['data' => $data, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
    }

    public function add()
    {
        //编辑
        if (count(input()) == 1 && isset(input()['id'])) {
            $data = CompleteExpenseReimbursement::get(input()['id'])->toArray();
        } else {
            $data = [];
        }
        if ($this->request->isPost()) {

            $data = $this->request->post();
            $result = $this->validate($data, [
                'title'         => 'require',
                'project_name'  => 'number',
                'subject'       => 'number',
                'money'         => 'require',
                'department_id' => 'require',
                'user_id'       => 'require',

            ], [
                'title'         => '报销名称为必填',
                'project_name'  => '所属项目名称为必填',
                'subject'       => '报销科目为必填',
                'money'         => '报销金额为必填',
                'department_id' => '部门为必填',
                'user_id'       => '报销人为必填',
            ]);
            if (true !== $result) {
                return ajax(0, $result);
            }
            unset($data['file']);
            if (isset($data['id'])) {
                if (CompleteExpenseReimbursement::update($data)) {
                    return ajax(1, '编辑成功');
                } else {
                    return ajax(0, '编辑失败');
                }
            }
            if ($c=CompleteExpenseReimbursement::create($data)) {

                flow_approval($c['id']);
                return ajax(1, '添加成功');
            } else {
                return ajax(0, '添加失败');
            }
        }

        $projectList = projectList(['status'=>1]);
        $this->assign('subject', [
            '职员餐费',
            '通讯费',
            '业务招待费',
            '人员工资',
            '福利费',
            '工程保险费',
            '消防设施费',
            '税费',
            '差率费',
            '办公用品',
            '水电费',
            '其他',
        ]);
        $this->assign('project_name', array_column($projectList, 'title', 'id'));
        $this->assign('data', $data);
        return $this->fetch('sponsor/sponsor_list');
    }

    /**
     * @return array|bool
     */
    public function delete()
    {
        if ($this->request->isPost()) {
            if (is_string(input()['ids']) && is_array(explode(',', input()['ids']))) {

                if ($count = CompleteExpenseReimbursement::destroy(input()['ids'])) {
                    return ajax(1, '成功删除' . $count . '条数据');
                } else {
                    return ajax(0, '删除失败');
                }
            }
        }
        return false;
    }

    /**
     * @return array|mixed
     * @throws \think\Exception
     * @throws \think\exception\DbException
     */
    public function view()
    {
        $data = CompleteExpenseReimbursement::get(input()['id'])->toArray();

        $projectList = projectList();
        $this->assign('subject', [
            '职员餐费',
            '通讯费',
            '业务招待费',
            '人员工资',
            '福利费',
            '工程保险费',
            '消防设施费',
            '税费',
            '差率费',
            '办公用品',
            '水电费',
            '其他',
        ]);
        $this->assign('project_name', array_column($projectList, 'title', 'id'));
        return $this->fetch('sponsor/details', ['data' => $data]);
    }
}