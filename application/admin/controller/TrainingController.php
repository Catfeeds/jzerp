<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\TrainingModel;
use app\admin\model\TrainingdepartmentModel;
use app\admin\model\TrainingcourseModel;
use app\admin\model\TrainingdetaileModel;
use app\admin\model\ProjectListModel;

/*
    培训管理
*/
class TrainingController extends FlowcommonController
{
    /**
     * 培训计划添加
     *
     * @return \think\Response
     */
    public function training_plan($id='')
    {
        if($id){        
            $data = TrainingModel::getOne($id);
        }else{
            $data = [];
        }  

        if($this->request->isPost()){
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'TrainingValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            if(empty($data['id'])){
                $res = TrainingModel::create($data);
                $msg = '新增';
            }else{
                $res = TrainingModel::update($data);
                $msg = '修改';
            }
            if ($res) {
                $details = $msg.'了('.$data['title'].')的培训计划';
                action_log('training_plan','training/training_plan','',UID,$details);

                return ajax(1,$msg.'成功',url('training_list'));
            } else {
                return ajax(0,$msg.'失败');
            }
        }
        $this->assign('department',TrainingdepartmentModel::column('id,department_name'));
        $this->assign('data',$data);
        return $this->fetch('sponsor/sponsor_list');
    }
    /**
     * 培训计划列表
     *
     * @return \think\Response
     */
    public function training_list()
    {
        $keywords = ['title', 'type'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = TrainingModel::search($result['map'], $result['order'], $result['page_parm']);
        $this->assign('data',$data);
        $this->assign('keywords', $result['page_parm']['query']);

        return view('training/training_view');
    }

    /**
     * 显示培训计划详情
     *
     * @return \think\Response
     */
    public function training_details($id){
        $data = TrainingModel::getOne($id); 

        $this->assign('department',TrainingdepartmentModel::column('id,department_name'));
        $this->assign('data',$data);
        return $this->fetch('sponsor/details');
    }

    /**
     * 培训计划删除
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function training_delete($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }
        $msg = TrainingModel::where('id',$id)->value('title');

        $m = TrainingModel::destroy($id);
        if($m){
            $details = '删除了('.$msg.')的培训计划';
            action_log('training_plan','trainingcourse/training_delete','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }

    /**
     * 培训计划转项目
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function training_xm($id)
    {
        if(!$id){
            return ajax(0,'请重新选择转为项目的项');
        }
        $m = TrainingModel::where('id',$id)->update(['status' => '1']);
        if($m){
            return ajax(1,'成功');
        }else{
            return ajax(0,'失败');
        }
    }

    /**
     * 培训项目列表
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function project_list()
    {
        $data = TrainingModel::select();


        $keywords = ['title', 'type'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);
        $result['map']['status'] = 1;   
        $data = TrainingModel::search($result['map'], $result['order'], $result['page_parm']);
        
        $this->assign('data',$data);
        $this->assign('keywords', $result['page_parm']['query']);

        return view('training/project_view');
    }

    /**
     * 培训项目添加、编辑
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function project_add($id='')
    {
        if($id){
            $data = TrainingModel::getList($id);
        }else{
            $data = [];
        }
        if($this->request->isPost()){
            $data = $this->request->post();

            if(empty($data['id'])){
                if (TrainingModel::getAdd($data)) {
                    $code = 1;
                }
                $msg = '新增';
            }else{
                unset($data['course_lecturer']);
                $d = MakeData($data, [], ['details_id' => 'id'], ['training_id' => $data['id']]);

                $trainingdetaile = new TrainingdetaileModel;
                if(TrainingModel::update($d['main']) &&  $trainingdetaile -> saveAll($d['details'])){
                    $code = 1;
                }
                $msg = '编辑';
            }
            if($code = 1) {
                $details = $msg.'了('.$data['title'].')的培训项目';
                action_log('training_plan','training/project_add','',UID,$details);

                return ajax(1,$msg.'成功',url('project_list'));
            } else {
                return ajax(0,$msg.'失败');
            }
        }
        $training_name = TrainingcourseModel::column('course_title','id');
        $department = TrainingdepartmentModel::column('id,department_name');

        $this->assign('department',$department);
        $this->assign('data',$data);
        $this->assign('training_name',$training_name);
        return $this->fetch('sponsor/sponsor_list');
    }
    /**
     * 培训项目删除
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function project_delete($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }

        $msg = TrainingModel::where('id',$id)->value('title');

        $m = TrainingModel::destroy($id);
        
        if($m){

            $details = '删除了('.$msg.')的培训项目';
            action_log('training_plan','trainingcourse/project_delete','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }

    /**
     * 显示培训项目详情
     *
     * @return \think\Response
     */
    public function project_details($id = ''){
        $data = TrainingModel::getList($id); 

        $training_name = TrainingcourseModel::column('course_title','id');
        $department = TrainingdepartmentModel::column('id,department_name');

        $this->assign('department',$department);
        $this->assign('data',$data);
        $this->assign('training_name',$training_name);
        return $this->fetch('sponsor/details');
    }
}
