<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\TraininglecturerModel;

class TraininglecturerController extends FlowcommonController
{
    /**
     * 培训讲师
     *列表
     * @return \think\Response
     */
    public function lecturer_list()
    {
        $keywords = ['lecturer_type','lecturer_name'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = TraininglecturerModel::search($result['map'], $result['order'], $result['page_parm']);
        $this->assign('data',$data);
        $this->assign('keywords', $result['page_parm']['query']);
        return view('training/lecturer_view');
    }

    /**
     * 添加、编辑讲师
     *
     * @return \think\Response
     */
    public function lecturer_create($id='')
    {
        if($id){
            $data = TraininglecturerModel::where('id',$id)->find();
        }else{
            $data =[];
        }

        if($this->request->isPost()){
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'LecturerValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            if(empty($data['id'])){
                $res = TraininglecturerModel::create($data);
                $msg = '新增';
            }else{
                $res = TraininglecturerModel::update($data);
                $msg = '修改';
            }
            if ($res) {
                $details = $msg.'了('.$data['lecturer_name'].')的培训讲师';
                action_log('training_plan','traininglecturer/lecturer_create','',UID,$details);

                return ajax(1,$msg.'成功',url('lecturer_list'));
            } else {
                return ajax(0,$msg.'失败');
            }
        }

        return $this->fetch('sponsor/sponsor_list',['data'=>$data]);
    }

    /**
     * 显示详情
     *
     * @return \think\Response
     */
    public function lecturer_details($id){
        $data = TraininglecturerModel::where('id',$id)->find();

        $this->assign('data',$data);
        return $this->fetch('sponsor/details');
    }


    /**
     * 删除讲师
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function lecturer_read($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }
        $msg = TraininglecturerModel::where('id',$id)->value('lecturer_name');

        $m = TraininglecturerModel::destroy($id);
        if($m){
            $details = '删除了('.$msg.')的培训讲师';
            action_log('training_plan','traininglecturer/lecturer_create','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }
}
