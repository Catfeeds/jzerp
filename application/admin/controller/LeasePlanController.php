<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\ProjectListModel;
use app\admin\model\LeasePlanModel;
use app\admin\model\LeaseContractModel;

/*
    租赁
*/
class LeasePlanController extends FlowcommonController
{
    /**
     * 租赁计划
     *
     * @return \think\Response
     */
    public function lease_index($id='')
    {
        $data = [];
        if($this->request->isPost()){
            $data = $this->request->post();
            
            

            $r = $this->validate($data, 'LeasePlanValidate');
            
            if(true !== $r){
                return ajax(0, $r);
            }
            
            $msg = LeasePlanModel::getAdd($data);


            if($msg == '9'){
                $details = '添加了('.$data['title'].')的项目租赁计划';
                action_log('lease_plan_add','lease_plan/lease_index','',UID,$details);

                return ajax('1',"成功",url('lease_list'));
            }else{
                return ajax('0','失败');
            }

        }

        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 显示所有租赁计划
     *
     */
    public function lease_list($sort = 'asc')
    {
        $order = 'id '.$sort;

        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
         if(!isset($keywords['lease_plan_status'])){
            $keywords['lease_plan_status'] = '';
        }
        $keywords['lease_plan.status'] = $keywords['lease_plan_status'];


        $keys = ['title','maker','lease_plan.status','number','date'];


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

        $data = LeasePlanModel::search($map,$order,$page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

        return $this->fetch('purchase/lease_plan');
    }

    /**
     * 显示单个租赁计划详情
     *
     */
    public function lease_detail($id='')
    {
        $data = LeasePlanModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }

    /**
     * 租赁合同
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function leasecontract($id='')
    {
        $data = [];
        
        if($this->request->isPost()){
            $data = $this->request->post();
            
            $r = $this->validate($data, 'LeaseContractValidate');
            
            if(true !== $r){
                return ajax(0, $r);
            }
            
            $res = LeaseContractModel::getAdd($data);

            if($res == '9'){
                $details = '添加了('.$data['title'].')的项目租赁合同';
                action_log('lease_contract_add','lease_plan/leasecontract','',UID,$details);

                return ajax('1',"成功",url('leaseconlist'));
            }else{
                return ajax('0','失败');
            }

        }

        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 租赁合同列表
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function leaseconlist()
    {
        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => 'desc'
        ];

        $keywords = $this -> request -> get();
        if(!isset($keywords['lease_contract_status'])){
            $keywords['lease_contract_status'] = '';
        }
        $keywords['lease_contract.status'] = $keywords['lease_contract_status'];
        $keys = ['title','supplier_id','lease_contract.status','number','date'];
        
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

        $data = LeaseContractModel::search($map,$order,$page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

        return $this->fetch('purchase/lease_contract');
    }

    /**
     * 显示租赁合同详情
     *
     */
    public function leaseconlist_details($id='')
    {
        $data = LeaseContractModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
}
