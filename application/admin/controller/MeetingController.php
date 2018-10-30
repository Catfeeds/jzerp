<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\MeetingModel;
use app\admin\model\MetingroomModel;

class MeetingController extends FlowcommonController
{
    /**
     * 会议
     *
     * @return \think\Response
     */
    public function meeting_index()
    {
        $keywords = ['meeting_title', 'meeting_room'];

        $sort = ['id desc'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data =  MeetingModel::search($result['map'], $result['order'], $result['page_parm']);

        $this->assign('data',$data);
        $this->assign('keywords',$result['page_parm']['query']);
        $this->assign('meeting_room',MetingroomModel::column('id,room_title'));
        return view('meeting/meeting_index');
    }

    /**
     * 添加会议
     *
     * @return \think\Response
     */
    public function meeting_create($id='')
    {
        if($id){
            $data = MeetingModel::getOne($id);
        }else{
            $data = [];
        }
        
        if($this->request->isPost()){
            $data = $this->request->post();
            
            if(!isset($data['id'])){
                $x = $this->meeting_take($data);
                if($x == 0){
                    return ajax(0,'添加失败，该会议室已被占用');
                }
                $res = MeetingModel::create($data);
                $msg = '新增';
            }else{
                $res = MeetingModel::update($data);
                $msg = '修改';
            }
            if($res){
                $user = get_personnel(UID,true);
                $details = $user.$msg.'了('.$data['meeting_title'].')会议';
                action_log('meeting','meeting/meeting_create','',UID,$details);

                return ajax('1',$msg."成功",url('meeting_index'));
            }else{
                return ajax('0','失败');
            }
        }

        $meeting_room = MetingroomModel::column('id,room_title');
        return $this->fetch('sponsor/sponsor_list',['data'=>$data,'meeting_room'=>$meeting_room]);
    }

    /**
     * 显示指定会议
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function meeting_read($id)
    {
        $data = MeetingModel::getOne($id);
        $this->assign('meeting_room',MetingroomModel::column('id,room_title'));
        return $this->fetch('sponsor/details',['data'=>$data]); 
    }


    /*
        个人会议
    */
    public function single_list()
    {
        $keywords = ['meeting_title', 'meeting_room'];

        $sort = ['id desc'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data =  MeetingModel::getSingle(UID,$result['map'], $result['order'], $result['page_parm']);

        $this->assign('data',$data);
        $this->assign('keywords',$result['page_parm']['query']);
        $this->assign('meeting_room',MetingroomModel::column('id,room_title'));
        return view('meeting/meeting_index');
    }

    /*
        data 添加的会议
    */
    public function meeting_take($data='')
    {
        $map['meeting_room'] = ['=', $data['meeting_room']];
        $map['meeting_time'] = ['=', $data['meeting_time']];
        $map['ctime'] = ['>=', $data['ctime']];
        $map['etime'] = ['<=', $data['etime']];
        $res = MeetingModel::where($map)->select();
        
        if(!empty($res)){
            return $x = 0;
        }else{
            return $x = 1;
        }
    }
}
