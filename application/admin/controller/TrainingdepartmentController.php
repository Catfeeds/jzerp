<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\TrainingdepartmentModel;

class TrainingdepartmentController extends FlowcommonController
{
    /**
     * 培训机构
     *列表
     * @return \think\Response
     */
    public function department_list()
    {
        $keywords = ['department_contact', 'department_name'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = TrainingdepartmentModel::search($result['map'], $result['order'], $result['page_parm']);
        $this->assign('data',$data);
        $this->assign('keywords', $result['page_parm']['query']);
        return view('training/department_view');
    }

    /**
     * 添加、查看
     *
     * @return \think\Response
     */
    public function department_create($id='')
    {
        if($id){
            $data = TrainingdepartmentModel::where('id',$id)->find();
        }else{
            $data = [];
        }

        if($this->request->isPost()){
            $data = $this->request->post();

            if(empty($data['id'])){
                $res = TrainingdepartmentModel::create($data);
                $msg = '新增';
            }else{
                $res = TrainingdepartmentModel::update($data);
                $msg = '修改';
            }
            
            if($res){
                $details = $msg.'了('.$data['department_name'].')的培训机构';
                action_log('training_plan','trainingdepartment/department_create','',UID,$details);

                return ajax(1,$msg.'成功',url('department_list'));
            }else{
                return ajax(0,$msg.'失败');
            }
        }

        return $this->fetch('sponsor/sponsor_list',['data'=>$data]);
    }
    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function department_delete($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }

        $msg = TrainingdepartmentModel::where('id',$id)->value('department_name');
        $m = TrainingdepartmentModel::destroy($id);
        if($m){
            $details = '删除了('.$msg.')的培训机构';
            action_log('training_plan','trainingdepartment/department_create','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }

    /**
     * 显示详情
     *
     * @return \think\Response
     */
    public function department_details($id){
        $data = TrainingdepartmentModel::where('id',$id)->find();

        $this->assign('data',$data);
        return $this->fetch('sponsor/details');
    }
}
