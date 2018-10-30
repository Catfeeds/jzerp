<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\BiddingFileModel;
use app\admin\model\BiddingModel;
use app\admin\model\TypeModel;

class BiddingfileController extends FlowcommonController
{
    /**
     * 招标文件购买申请
     *
     * @return \think\Response
     */
    public function biddingdile_add()
    {
        $data = [];

        if ($this->request->isPost()) {
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'BiddingFileValidate');

            if(true !== $r){
                return ajax(0, $r);
            }
            $res = BiddingFileModel::getAdd($data);
            if($res == '1'){
                return ajax('1',"成功",url('biddingdile_view'));
            }else{
                return ajax('0','失败');
            }
        }

        $this->assign('bidding_id',BiddingModel::column('id,title'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 招标文件列表
     *
     * @return \think\Response
     */
    public function biddingdile_view($sort = 'asc')
    {
        $page = input('page') ? input('page') : 1;

        $query = [
            'sort' => $sort
        ];

        $keywords = $this -> request -> get();
        if(!isset($keywords['bidding_file_status'])){
            $keywords['bidding_file_status'] = '';
        }
        $keywords['bidding_file.status'] = $keywords['bidding_file_status'];

        $keys = ['bidding_id','cost_capitals','type_id','bidding_file.status'];
        

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

        $data = BiddingFileModel::search($map,$order,$page_parm);

        $type = TypeModel::where('indentify','project_type')->where('pid','<>',0)->column('id,name');

        $this->assign('type',$type);
        $this->assign('keywords',$query);
        $this->assign('data',$data);
        $this->assign('page',$page);


        return view('bidding/biddingdile_view');
    }

    /*
        招标文件明细
    */
    public function biddingdile_details($id)
    {
        $data = BiddingFileModel::getOne($id);
        $this->assign('bidding_id',BiddingModel::column('id,title'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }

}
