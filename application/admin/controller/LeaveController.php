<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\LeaveModel;

class LeaveController extends FlowcommonController
{
    /**
     * 请假表
     *
     * @return \think\Response
     */
    public function leave_list()
    {
        $keywords = ['type', 'name_id'];
    
        $sort = ['create_time'];
        $bet = [
            'create_time' => [
                'ctime',
                'etime',
                'leave.create_time'
            ]
        ];
        $result = $this -> page_parm_request($keywords, $sort, $bet);

        $data = LeaveModel::getList($result['map'], $result['order'], $result['page_parm']);

        $this->assign('keywords',$result['page_parm']['query']);
        $this->assign('page',$result['page_parm']['page']);
        $this->assign('data',$data);
        $this->assign('type',ConfigType('leave_type'));
        return view('leave/leave_view');

    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function leave_create($id='')
    {
        if($id){
            $data = LeaveModel::getOne($id);
        }else{
            $data = [];
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            
            // 验证
            $r = $this->validate($data, 'LeaveValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            $res = LeaveModel::getScret($data);
            if($res){

                $a = LeaveModel::where('id',$id)->value('name_id');
                $b = get_personnel($a);

                $details = '更新了('.$b['nickname'].')的请假';
                action_log('leave_list','leave/leave_create','',UID,$details);

                return ajax(1,'成功',url('leave_list'));
            }else{
                return ajax(0,'失败');
            }
        }

        $this->assign('data',$data);
        $this->assign('type',ConfigType('leave_type'));
        return $this->fetch('sponsor/sponsor_list');
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function leave_read($id)
    {
        $data = LeaveModel::getOne($id);

        $this->assign('type',ConfigType('leave_type'));
        $this->assign('data',$data);
        return $this->fetch('sponsor/details');
    }


    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function leave_delete($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }

        $msg = LeaveModel::where('id',$id)->value('name_id');
        $res = get_personnel($msg);

        $m = LeaveModel::destroy($id);
        
        if($m){

            $details = '删除了('.$res['nickname'].')的请假';
            action_log('leave_list','leave/leave_delete','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }
}
