<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\TrainingcourseModel;
use app\admin\model\TraininglecturerModel;

class TrainingcourseController extends FlowcommonController
{
    /**
     * 培训课程
     *
     * @return \think\Response
     */
    public function course_plan($id='')
    {
        if($id){
            $data = TrainingcourseModel::getOne($id);
        }else{
            $data = [];
        }

        if($this->request->isPost()){
            $data = $this->request->post();

            // 验证
            $r = $this->validate($data, 'CourseValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            if(empty($data['id'])){
                $res = TrainingcourseModel::create($data);
                $msg = '新增';
            }else{
                $res = TrainingcourseModel::update($data);
                $msg = '修改';
            }
            if ($res) {
                $details = $msg.'了('.$data['course_title'].')的培训课程';
                action_log('training_plan','trainingcourse/course_plan','',UID,$details);

                return ajax(1,$msg.'成功',url('course_list'));
            } else {
                return ajax(0,$msg.'失败');
            }
        }
        $this->assign('course_lecturer',TraininglecturerModel::column('id,lecturer_name'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]);
    }

    /**
     * 显示培训课程详情
     *
     * @return \think\Response
     */
    public function course_details($id){
        $data = TrainingcourseModel::getOne($id); 

        $this->assign('course_lecturer',TraininglecturerModel::column('id,lecturer_name'));
        $this->assign('data',$data);
        return $this->fetch('sponsor/details');
    }

    /**
     * 列表
     *
     * @return \think\Response
     */
    public function course_list()
    {
        $keywords = ['course_title', 'course_type'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = TrainingcourseModel::getList($result['map'], $result['order'], $result['page_parm']);
        $this->assign('data',$data);
        $this->assign('keywords', $result['page_parm']['query']);

        return view('training/course_view');
    }

    /**
     * 删除
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function course_delete($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }
        $msg = TrainingcourseModel::where('id',$id)->value('course_title');

        $m = TrainingcourseModel::destroy($id);
        if($m){
            $details = '删除了('.$msg.')的培训课程';
            action_log('training_plan','trainingcourse/course_delete','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }
}
