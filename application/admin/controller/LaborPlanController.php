<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\ProjectListModel;
use app\admin\model\AdminFilesModel;
use app\admin\model\LaborPlanModel;
use app\admin\model\LaborContractModel;


/*
    劳务计划、合同控制器
*/
class LaborPlanController extends FlowcommonController
{
    /**
     * 劳务计划
     *
     * @return \think\Response
     */
    public function labor_index($id='')
    {
        $data = [];
        if($this->request->isPost()){
            $data = $this->request->post();

            $r = $this->validate($data, 'LaborPlanValidate');
            
            if(true !== $r){
                return ajax(0, $r);
            }
            $msg = LaborPlanModel::getAdd($data);

            if($msg == '9'){
                $details = '添加了('.$data['title'].')的项目劳务计划';
                action_log('labor_plan_add','labor_plan/labor_index','',UID,$details);

                return ajax('1',"成功",url('search'));
            }else{
                return ajax('0','失败');
            }

        }

        $this->assign('obj_id',ProjectListModel::where('status',1)->column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 劳务计划查询
     *
     * @return \think\Response
     */
    public function search()
    {
        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => 'desc'
        ];

        $keywords = $this -> request -> get();
         if(!isset($keywords['labor_plan_status'])){
            $keywords['labor_plan_status'] = '';
        }
        $keywords['labor_plan.status'] = $keywords['labor_plan_status'];


        $keys = ['obj_id','maker','labor_plan.status'];


        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map[$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
        }

        $page_parm = [
            'page' => $page,
            "query" => $query
        ];

        $order = getOrder('id desc');

        $data = LaborPlanModel::search($map, $order, $page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);

        return view('purchase/labor'); 
    }

    /**
     * 劳务计划详情
     *
     */
    public function labor_details($id='')
    {
        $data = LaborPlanModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }

    /**
     * 劳务合同
     *
     */
    public function contract($id='')
    {
        $data = [];

        if($this->request->isPost()){
            $data = $this->request->post();

            $r = $this->validate($data, 'LaborContractValidate');
            
            if(true !== $r){
                return ajax(0, $r);
            }
            
            $msg = LaborContractModel::getAdd($data);

            if($msg == '9'){
                $details = '添加了('.$data['name'].')的项目劳务合同';
                action_log('labor_contract_add','labor_plan/contract','',UID,$details);

                return ajax('1',"成功",url('contract_list'));
            }else{
                return ajax('0','失败');
            }

        }
        $this->assign('obj_id',ProjectListModel::where('status',1)->column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 劳务合同列表
     *
     */
    public function contract_list($sort='desc')
    {
        $order = 'id '.$sort;

        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
         if(!isset($keywords['labor_contract_status'])){
            $keywords['labor_contract_status'] = '';
        }
        $keywords['labor_contract.status'] = $keywords['labor_contract_status'];

        $keys = ['name','supplier_id','labor_contract.status'];
        

        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map[$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
        }

        $page_parm = [
            'page' => $page,
            "query" => $query
        ];

        
        $order = getOrder($order);

        $data = LaborContractModel::search($map,$order,$page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);


        return view('purchase/labor_contract'); 
    }

    /**
     * 劳务合同详情
     *
     */
    public function contract_details($id='')
    {
        $data = LaborContractModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }

}
