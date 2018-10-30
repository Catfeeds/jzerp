<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/25 0025
 * Time: 09:29
 */

namespace app\admin\controller;

use app\admin\model\CompleteInvoicePut;
use app\admin\model\CompleteInvoiceOpen;
use app\admin\model\CompleteExpenseReimbursement;
use think\paginator\driver\Bootstrap;

//收入支出凭证
class CompleteIncomeAndExpensesController extends FlowcommonController
{
    public function index()
    {

        $input = input();
        $result = [
            'project'      => (isset($input['project']) && !!$input['project']) ? $input['project'] : '',
            'type'         => (isset($input['type']) && !!$input['type']) ? $input['type'] : '',
            'page'         => (isset($input['page']) && !!$input['page']) ? $input['page'] : '',
            's_time'       => (isset($input['s_time']) && !!$input['s_time']) ? $input['s_time'] : '',
            'e_time'       => (isset($input['e_time']) && !!$input['e_time']) ? $input['e_time'] : '',
            'title'        => (isset($input['title']) && !!$input['title']) ? $input['title'] : '',
            'create_times' => (isset($input['create_times']) && !!$input['create_times']) ? $input['create_times'] : 'desc',
        ];

        //得到所有数据
        $a = array_map(function ($a) {
            $a = $a->toArray();
            $a['href'] = url('CompleteInvoicePut/view', [
                'id' => $a['id'],
            ]);
            $a['bsf'] = '付款单';
            return $a;
        }, CompleteInvoicePut::all(['status'=>1]));
        $b = array_map(function ($a) {
            $a = $a->toArray();
            $a['href'] = url('CompleteInvoiceOpen/view', [
                'id' => $a['id'],
            ]);
            $a['bsf'] = '收款单';
            return $a;
        }, CompleteInvoiceOpen::all(['status'=>1]));
        $c = array_map(function ($a) {
            $a = $a->toArray();
            $a['href'] = url('CompleteExpenseReimbursement/view', [
                'id' => $a['id'],
            ]);
            $a['bsf'] = '报销';
            return $a;
        }, CompleteExpenseReimbursement::all(['status'=>1]));
        $d = array_merge($a, $b, $c);


        //搜索
        if ($result['project']) {
            $d = array_filter($d, function ($value) use ($result) {
                if ($result['project'] == $value['project_name']) {
                    return true;
                }
                return false;
            });
        }
        if ($result['type']) {
            $d = array_filter($d, function ($value) use ($result) {
                if ($result['type'] == 1) {
                    return $value['bsf'] == '收款单' ? true : false;
                } elseif ($result['type'] == 2) {
                    return ($value['bsf'] == '付款单' || $value['bsf'] == '报销') ? true : false;
                }
                return false;
            });
        }
        if ($result['title']) {
            $d = array_filter($d, function ($value) use ($result) {
                if (preg_match('/' . $result['title'] . '/i', $value['title'])) {
                    return true;
                }
                return false;
            });
        }
        if ($result['s_time'] && $result['e_time']) {
            $d = array_filter($d, function ($value) use ($result) {
                $s_time = strtotime($result['s_time']);
                $e_time = strtotime($result['e_time']);
                return (strtotime($value['create_time']) > $s_time && strtotime($value['create_time']) < $e_time) ? true : false;
            });
        } elseif ($result['s_time']) {
            $d = array_filter($d, function ($value) use ($result) {
                $s_time = strtotime($result['s_time']);
                return (strtotime($value['create_time']) > $s_time) ? true : false;
            });
        } elseif ($result['e_time']) {
            $d = array_filter($d, function ($value) use ($result) {
                $e_time = strtotime($result['e_time']);
                return (strtotime($value['create_time']) < $e_time) ? true : false;
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

        //转换项目名用户名
        $project = array_column(projectList(['status'=>1]), 'title', 'id');
        $userName = array_column(get_personnel_list(), 'nickname', 'id');
        foreach ($d as &$value) {
            $value['project_name'] = $project[$value['project_name']];
            $value['informant'] = $userName[$value['informant']];
        }

        //注册分页      //不知道为什么，参数值为空就没有这个参数
        $d = Bootstrap::make($d, $list_rows, !!$result['page'] ? $result['page'] : 1, $count, false, [
            'path' => url('index', [
                'title'        => $result['title'] ? $result['title'] : '0',
                's_time'       => $result['s_time'] ? $result['s_time'] : '0',
                'e_time'       => $result['e_time'] ? $result['e_time'] : '0',
                'create_times' => $result['create_times'] ? $result['create_times'] : '0',
                'project'      => $result['project'] ? $result['project'] : '0',
                'type'         => $result['type'] ? $result['type'] : '0',
            ]),
        ]);


        //渲染
        $this->assign('project', $project);
        $this->assign('type', [
            '1' => '收入',//收款单
            '2' => '支出  ',//付款单，报销
        ]);
        return $this->fetch('', ['data' => $d, 'keywords' => $result]);

    }

}