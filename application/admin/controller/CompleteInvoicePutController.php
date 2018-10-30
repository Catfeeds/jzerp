<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/14 0014
 * Time: 11:44
 */

namespace app\admin\controller;

use app\admin\model\CompleteInvoicePut;

//付款单 已改
class CompleteInvoicePutController extends FlowcommonController
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

        $data = CompleteInvoicePut::getList($result['map'], $result['order'], $result['page_parm']);

        //获取项目、
        $project = projectList();
        foreach ($data as &$value) {
            $value->project_name = (array_column($project, 'title', 'id')[$value->project_name]);
        }
        return $this->fetch('', ['data' => $data, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
    }

    public function add()
    {
        //编辑
        if (count(input()) == 1 && isset(input()['id'])) {
            $data = CompleteInvoicePut::get(input()['id'])->toArray();
        } else {
            $data = [];
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            $result = $this->validate($data, [
                'title'                   => 'require',
                'project_name'            => 'number',
                'invoice_value'           => 'require',
                'identify_number'         => 'require',
                'Bank_and_account_number' => 'require',
                'payee'                   => 'number',
                'payer'                   => 'require',
                'informant'               => 'require',
                'invoice_number'          => 'require',
                'Invoice_type'            => 'number',
                'bill_type'               => 'number',
            ], [
                'title'                   => '主题为必填',
                'project_name'            => '项目名称为必填',
                'invoice_value'           => '发票金额为必填',
                'identify_number'         => '纳税人识别号为必填',
                'Bank_and_account_number' => '开户银行及账号为必填',
                'payee'                   => '收款单位为必填',
                'payer'                   => '收款方为必填',
                'informant'               => '填报人为必填',
                'invoice_number'          => '发票号码为必填',
                'Invoice_type'            => '付款类型为必填',
                'bill_type'               => '发票类型为必填',
            ]);
            if (true !== $result) {
                return ajax(0, $result);
            }
            if (isset($data['id'])) {
                if (CompleteInvoicePut::update($data)) {
                    return ajax(1, '编辑成功');
                } else {
                    return ajax(0, '编辑失败');
                }
            }
            if ($c=CompleteInvoicePut::create($data)) {
                flow_approval($c['id']);
                return ajax(1, '添加成功');
            } else {
                return ajax(0, '添加失败');
            }
        }

        $projectList = projectList(['status'=>1]);

        $this->assign('data', $data);
        $this->assign('Invoice_type', [1 => '增值税发票', 2 => '普通发票']);
        $this->assign('bill_type', [
            1 => '劳务',
            2 => '租赁',
            3 => '分包',
            4 => '材料',
            5 => '其他',
        ]);
        $this->assign('payee', [
            1 => '人民币',
            2 => '美元',
            3 => '欧元',

        ]);
        $this->assign('project_name', array_column($projectList, 'title', 'id'));
        return $this->fetch('sponsor/sponsor_list');
    }

    /**
     * @return array|bool
     */
    public function delete()
    {
        if ($this->request->isPost()) {
            if (is_string(input()['ids']) && is_array(explode(',', input()['ids']))) {

                if ($count = CompleteInvoicePut::destroy(input()['ids'])) {
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
        $data = CompleteInvoicePut::get(input()['id'])->toArray();


        $projectList = projectList();
        $this->assign('bill_type', [
            1 => '劳务',
            2 => '租赁',
            3 => '分包',
            4 => '材料',
            5 => '其他',
        ]);
        $this->assign('payee', [
            1 => '人民币',
            2 => '美元',
            3 => '欧元',

        ]);
        $this->assign('Invoice_type', [1 => '增值税发票', 2 => '普通发票']);
        $this->assign('project_name', array_column($projectList, 'title', 'id'));
        return $this->fetch('sponsor/details', ['data' => $data]);
    }
}