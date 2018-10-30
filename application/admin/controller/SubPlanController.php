<?php

namespace app\admin\controller;

use think\Request;
use app\admin\model\ProjectListModel;
use app\admin\model\SubPlanModel;
use app\admin\model\SubContractModel;

/*
    分包控制器
*/

class SubPlanController extends FlowcommonController
{
    /**
     * 分包计划
     *
     * @return \think\Response
     */
    public function sub_index($id='')
    {
        $data = [];
        
        if($this->request->isPost()){
            $data = $this->request->post();

            $r = $this->validate($data, 'SubPlanValidate');
            
            if(true !== $r){
                return ajax(0, $r);
            }
            
            $res = SubPlanModel::getAdd($data);

            if($res == '9'){
                $details = '添加了('.$data['title'].')的项目分包计划';
                action_log('sub_plan_add','sub_plan/sub_index','',UID,$details);

                return ajax('1',"成功",url('sub_search'));
            }else{
                return ajax('0','失败');
            }

        }

        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 显示分包计划
     *
     * @return \think\Response
     */
    public function sub_search($sort='asc')
    {
        $order = 'id '.$sort;

        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
        if(!isset($keywords['sub_plan_status'])){
            $keywords['sub_plan_status'] = '';
        }
        $keywords['sub_plan.status'] = $keywords['sub_plan_status'];


        $keys = ['title','maker','sub_plan.status'];
        

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
        $order = getOrder($order);

        $data = SubPlanModel::search($map,$order,$page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);


        return view('purchase/sub_plan'); 
    }

    public function sub_details($id='')
    {
        $data = SubPlanModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]); 
    }

    /**
     * 分包合同
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function sub_contract($id='')
    {
        $data = [];
        
        if($this->request->isPost()){
            $data = $this->request->post();
        
            $r = $this->validate($data, 'SubContractValidate');
            
            if(true !== $r){
                return ajax(0, $r);
            }
            
            $res = SubContractModel::getAdd($data);

            if($res == '9'){
                $details = '添加了('.$data['title'].')的项目分包合同';
                action_log('sub_contract_add','sub_plan/sub_contract','',UID,$details);

                return ajax('1',"成功",url('sub_conlist'));
            }else{
                return ajax('0','失败');
            }

        }

        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 分包合同列表
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function sub_conlist($sort='asc')
    {
        $order = 'id '.$sort;

        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
         if(!isset($keywords['sub_contract_status'])){
            $keywords['sub_contract_status'] = '';
        }
        $keywords['sub_contract.status'] = $keywords['sub_contract_status'];

        $keys = ['title','supplier_id','sub_contract.status'];
        

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
        $order = getOrder('id desc');

        $data = SubContractModel::search($map,$order,$page_parm);

        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);


        return view('purchase/sub_contract'); 
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function subcontract_details($id='')
    {
        $data = SubContractModel::getOne($id);
        $this->assign('obj_id',ProjectListModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
}
