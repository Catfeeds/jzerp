<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/26 0026
 * Time: 16:10
 */

namespace app\admin\controller;


use app\admin\model\CompleteExpenseReimbursement;
use app\admin\model\CompleteInvoiceOpen;
use app\admin\model\CompleteInvoicePut;
use app\admin\model\ConstructionServiceClearModel;
use app\admin\model\ConstructionServiceRateModel;
use app\admin\model\ConstructionSubpickClearModel;
use app\admin\model\ConstructionSubPickRateModel;
use app\admin\model\LaborConModel;
use app\admin\model\LaborContractModel;
use app\admin\model\ProjectListModel;
use app\admin\model\SubContractModel;
use think\paginator\driver\Bootstrap;

//尾款结算
class CompleteFinalSettlementController extends FlowcommonController
{
    public function index()
    {
        $input = input();
        $result = [
            'project'      => (isset($input['project']) && !!$input['project']) ? $input['project'] : '',
            'page'         => (isset($input['page']) && !!$input['page']) ? $input['page'] : '',
            'type'         => (isset($input['type']) && !!$input['type']) ? $input['type'] : '',
            's_time'       => (isset($input['s_time']) && !!$input['s_time']) ? $input['s_time'] : '',
            'e_time'       => (isset($input['e_time']) && !!$input['e_time']) ? $input['e_time'] : '',
            'create_times' => (isset($input['create_times']) && !!$input['create_times']) ? $input['create_times'] : 'desc',
            'title'        => (isset($input['title']) && !!$input['title']) ? $input['title'] : '',
        ];

        //劳务
        $lw = ProjectListModel::view('project_list', ['id' => 'project_id', 'title'])
            ->view('labor_contract', ['name'], 'project_list.id = labor_contract.obj_id')
            ->view('construction_service_clear', ['clear_money'], 'construction_service_clear.contract_id = labor_contract.id')
            ->view('construction_service_rate', ['name'=>'fkname','back_money', 'create_time', 'number', 'id'], 'construction_service_rate.contract_id=labor_contract.id')
            ->select();


        foreach ($lw as &$v) {
            $v = $v->toArray();
            $v['yjswfk'] =number_format($v['clear_money'] - $v['back_money'],2);
            $v['href'] = url('construction/serviceratedetail?id=' . $v['id']);
            $v['type'] = 1;
            $v['clear_money']= number_format($v['clear_money'], 2);
            $v['back_money']= number_format($v['back_money'], 2);
        }

        //分包
        $fb = ProjectListModel::view('project_list', ['id' => 'project_id', 'title'])
            ->view('sub_contract', ['title' => 'name'], 'project_list.id = sub_contract.obj_id')
            ->view('construction_subpick_clear', ['count_money' => 'clear_money'], 'construction_subpick_clear.contract_id = sub_contract.id')
            ->view('construction_subpick_rate', ['name'=>'fkname','back_money', 'create_time', 'number', 'id'], 'construction_subpick_rate.contract_id=sub_contract.id')
            ->select();


        foreach ($fb as &$v) {
            $v = $v->toArray();
            $v['yjswfk'] = number_format($v['clear_money'] - $v['back_money'],2);
            $v['href'] = url('construction/subpickratedetail?id=' . $v['id']);
            $v['type'] = 2;
            $v['clear_money']= number_format($v['clear_money'], 2);
            $v['back_money']= number_format($v['back_money'], 2);

        }
        //合并数据
        $d = array_merge($lw, $fb);

        //搜索
        if ($result['project']) {
            $d = array_filter($d, function ($value) use ($result) {
                if ($result['project'] == $value['project_id']) {
                    return true;
                }
                return false;
            });
        }
        if ($result['type']) {
            $d = array_filter($d, function ($value) use ($result) {
                if ($result['type'] == 1) {
                    return $value['type'] == 1 ? true : false;
                } elseif ($result['type'] == 2) {
                    return $value['type'] == 2 ? true : false;
                }
                return false;
            });
        }

        if ($result['title']) {
            $d = array_filter($d, function ($value) use ($result) {
                if (preg_match('/' . $result['title'] . '/i', $value['name'])) {
                    return true;
                }
                return false;
            });
        }

        if ($result['s_time'] && $result['e_time']) {
            $d = array_filter($d, function ($value) use ($result) {
                $s_time = strtotime($result['s_time']);
                $e_time = strtotime($result['e_time']);
                return (strtotime($value['create_time']) >= $s_time && strtotime($value['create_time']) <= $e_time) ? true : false;
            });
        } elseif ($result['s_time']) {
            $d = array_filter($d, function ($value) use ($result) {
                $s_time = strtotime($result['s_time']);
                return (strtotime($value['create_time']) >= $s_time) ? true : false;
            });
        } elseif ($result['e_time']) {
            $d = array_filter($d, function ($value) use ($result) {
                $e_time = strtotime($result['e_time']);
                return (strtotime($value['create_time']) <= $e_time) ? true : false;
            });
        }

        //为分页切割数组
        $list_rows = config('paginate.list_rows');
        $count = count($d);
        $d = array_slice($d, $result['page'] ? ($result['page'] - 1) * $list_rows : 0, $list_rows);


        //排序
        $o = array_column($d, 'create_time');
        $o = array_map(function ($v) {
            return strtotime($v);
        }, $o);
        if ($result['create_times']) {
            if ($result['create_times'] == 'desc') {
                array_multisort($o, SORT_DESC, $d);
            } elseif ($result['create_times'] == 'asc') {
                array_multisort($o, SORT_ASC, $d);
            }
        }

        //注册分页      //不知道为什么，参数值为空就没有这个参数->json序列化会把值为空的参数去掉
        $d = Bootstrap::make($d, $list_rows, !!$result['page'] ? $result['page'] : 1, $count, false, [
            'path' => url('index', [
                's_time'       => $result['s_time'] ? $result['s_time'] : '0',
                'e_time'       => $result['e_time'] ? $result['e_time'] : '0',
                'create_times' => $result['create_times'] ? $result['create_times'] : '0',
                'project'      => $result['project'] ? $result['project'] : '0',
                'title'        => $result['title'] ? $result['title'] : '0',
                'type'         => $result['type'] ? $result['type'] : '0',
            ]),
        ]);


        $project = array_column(projectList(['status' => 1]), 'title', 'id');

        //渲染
        $this->assign('project', $project);
        $this->assign('type', [
            '2' => '分包',//收款单
            '1' => '劳务  ',//付款单，报销
        ]);
        return $this->fetch('', ['data' => $d, 'keywords' => $result]);

    }
}