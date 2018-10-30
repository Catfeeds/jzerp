<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\BiddingTbywfModel;
use app\admin\model\BiddingModel;
use app\admin\model\TypeModel;


class BiddingTbywfController extends FlowcommonController
{
    /**
     * 添加投标业务费用
     *
     * @return \think\Response
     */
    public function bidding_tbywf()
    {
        $data = [];

        if($this->request->isPost()){
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'BiddingTbywfValidate');

            if(true !== $r){
                return ajax(0, $r);
            }
            $res = BiddingTbywfModel::getadd($data);
            if($res){
                flow_approval($res['id']);
                
                return ajax('1',"成功",url('bidding_list'));
            }else{
                return ajax('0',"失败");
            }
        }

        $this->assign('bidding_id',BiddingModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 显示所有投标业务费用
     *
     * @return \think\Response
     */
    public function bidding_list($sort = 'asc')
    {
        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
        if(!isset($keywords['bidding_tbywf_status'])){
            $keywords['bidding_tbywf_status'] = '';
        }
        $keywords['bidding_tbywf.status'] = $keywords['bidding_tbywf_status'];

        $keys = ['bidding_id','type_id','bidding_tbywf.status'];
        

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

        $data = BiddingTbywfModel::search($map,$order,$page_parm);

        $type = TypeModel::where('indentify','project_type')->where('pid','<>',0)->column('id,name');

        $this->assign('type',$type);
        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);


        return view('bidding/biddingywf_view');    
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function bidding_read($id)
    {
        $data = BiddingTbywfModel::getOne($id);
        $this->assign('bidding_id',BiddingModel::column('id,title'));

        return $this->fetch('sponsor/details',['data'=>$data]);
    }

   
}
