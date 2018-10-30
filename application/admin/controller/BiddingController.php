<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\TypeModel;
use app\admin\model\BiddingModel;

class BiddingController extends FlowcommonController
{
    /**
     * 添加投标申请
     *
     * @return \think\Response
     */
    public function bidding_add()
    {
        $data = [];
        if($this->request->isPost()){
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'BiddingValidate');

            if(true !== $r){
                return ajax(0, $r);
            }
            $res = BiddingModel::getAdd($data);
            if($res == '1'){
                return ajax('1',"成功",url('bidding_view'));
            }else{
                return ajax('0','失败');
            }
        }

        $this->assign('type_id',TypeModel::where('indentify','project_type')->where('pid','<>',0)->column('id,name'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 查看投标申请
     *
     * @return \think\Response
     */
    public function bidding_view($sort = 'asc')
    {
        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();

        $keys = ['title','type_id','contractor','status','number','date'];
        

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

        $data = BiddingModel::search($map,$order,$page_parm);

        $type = TypeModel::where('indentify','project_type')->where('pid','<>',0)->column('id,name');

        $this->assign('type',$type);
        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);


        return view('bidding/bidding_view');
    }

    /**
     * 查看投标详情
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function bidding_details($id)
    {
        $data = BiddingModel::getOne($id);
        $this->assign('type_id',TypeModel::where('indentify','project_type')->where('pid','<>',0)->column('id,name'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }
}
