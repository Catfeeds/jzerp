<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\AdminFilesModel;
use app\admin\model\ProjectListModel;
use app\admin\model\MaterialModel;
use app\admin\model\PurchaseplanModel;
use app\admin\model\PurchasecontractModel;
/*
    采购招标计划、合同控制器
*/

class PurchaseController extends FlowcommonController
{
    /**
     * 添加、显示采购招标计划
     *
     * @return \think\Response
     */
    public function index()
    {
        $data = [];
        if($this->request->isPost()){
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'PurchasePlanValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            // dump($data);die;
            $msg = PurchaseplanModel::getAdd($data);

            if($msg == '9'){
                $details = '添加了('.$data['title'].')的物资招标采购计划';
                action_log('purchase_add','purchase/index','',UID,$details);

                return ajax('1',"成功",url('search'));
            }else{
                return ajax('0','失败');
            }
 
        }   
        $this->assign('obj_id',ProjectListModel::where('status',1)->column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

	/**
     * 显示采购招标计划详情
     *
     * @return \think\Response
     */
    public function details($id = ''){
    	$data = PurchaseplanModel::getOne($id); 
    	$this->assign('obj_id',ProjectListModel::column('id,title'));
    	return $this->fetch('sponsor/details',['data'=>$data]);
    }
    /**
     * 显示所有采购计划.
     *
     * @return \think\Response
     */
    public function search($sort='asc')
    {
        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
        $keys = ['obj_id','maker','purchase_plan.status','purchase_plan.date'];
        

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

        // dump($map);
        // 排序
        $ord =  input('date') ? 'date' : 'id';
        $order = getOrder($ord.' '.$sort);

        $data = PurchaseplanModel::search($map,$order,$page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);

        return view('purchase/index');   

       
    }

    /**
     * 添加、显示采购合同
     *
     */
    public function contract($id='')
    {
        $data = [];

        if($this->request->isPost()){
            $data = $this->request->post();

            $r = $this->validate($data, 'PurchaseContractValidate');
            if(true !== $r){
                return ajax(0, $r);
            }

            $res = PurchasecontractModel::getAdd($data);

            if($res == '9'){
                $details = '添加了('.$data['name'].')的物资采购合同';
                action_log('purchase_contract_add','purchase/contract','',UID,$details);

                return ajax('1',"成功",url('contract_all'));
            }else{
                return ajax('0','失败');
            }
        }
        $this->assign('obj_id',ProjectListModel::where('status',1)->column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 显示所有采购合同
     *
     */
    public function contract_all()
    {
        $keywords = ['purchase_contract.number','purchase_contract.date','obj_id','maker','purchase_contract.status'];
        
        $sort = ['purchase_contract.date'];
       
        $result = $this -> page_parm_request($keywords, $sort);

        $data = PurchasecontractModel::contract_all($result['map'], $result['order'], $result['page_parm']);

        $this->assign('keywords',$result['page_parm']['query']);
        $this->assign('data',$data);

        return view('purchase/contract');
    }

    /**
     * 查看指定合同
     *
     */
    public function appoint_details($id = ''){
        $data = PurchasecontractModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }



}
