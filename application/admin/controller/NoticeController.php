<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\TypeModel;
use app\admin\model\NoticeModel;

class NoticeController extends FlowcommonController
{
    /**
     * 公告
     * 添加、编辑
     * @return \think\Response
     */
    public function notice_add()
    {
        $data = [];
        if($this->request->isPost()){
            $data = $this->request->post();

             // 验证
            $r = $this->validate($data, 'NoticeValidate');

            if(true !== $r){
                return ajax(0, $r);
            }
            $res = NoticeModel::getScret($data);
            if($res){
                $details = '更新了('.$data['notice_title'].')通知公告';
                action_log('notice_add','notice/notice_add','',UID,$details);

                return ajax(1,'成功',url('notice_list'));
            }else{
                return ajax(0,'失败');
            }
        }
        $this->assign('notice_type',ConfigType('notice_type'));
        return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function notice_list()
    {
        $keywords = ['notice_title', 'notice_type'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = NoticeModel::getList($result['map'], $result['order'], $result['page_parm']);

        $this->assign('data',$data);
        $this->assign('type',ConfigType('notice_type'));
$this->assign('keywords',$result['page_parm']['query']);
        
        return view('notice/notice_view');
    }


    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function notice_read($id)
    {
        $data = NoticeModel::getOne($id);

        $this->assign('notice_type',ConfigType('notice_type'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }

    /**
     * 删除
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function notice_delete($id)
    {
        $msg = NoticeValue($id,'notice_title');
        
        $res = NoticeModel::destroy($id);
        if($res){
            $details = '删除了('.$msg.')通知公告';
            action_log('notice_add','notice/notice_delete','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }

    /**
     * 发布公告
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function notice_release($id)
    {
        $res = NoticeModel::NoticeStatus($id,'1');
        if($res){
            return ajax(1,'发布成功');
        }else{
            return ajax(0,'发布失败');
        }
    }

    /**
     * 撤销公告
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function notice_undo($id)
    {
        $res = NoticeModel::NoticeStatus($id,'2');
        if($res){
            return ajax(1,'撤销成功');
        }else{
            return ajax(0,'撤销失败');
        }
    }

    /**
     * 个人公告
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function notice_personal()
    {
        $keywords = ['notice_title', 'notice_type'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = NoticeModel::NoticePersonal($result['map'], $result['order'], $result['page_parm']);

        $this->assign('data',$data);

        $this->assign('type',ConfigType('notice_type'));
        return view('notice/personal_view');
        
    }
}
