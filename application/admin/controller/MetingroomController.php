<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\MetingroomModel;

class MetingroomController extends AdminController
{
    /**
     * 会议室
     *
     * @return \think\Response
     */
    public function room_list()
    {
        $keywords = ['room_title'];
        
        $sort = ['create_time'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = MetingroomModel::getList($result['map'], $result['order'], $result['page_parm']);


        $this->assign('data',$data);
        $this->assign('keywords',$result['page_parm']['query']);

        return view('meeting/room_view');
    }

    /**
     * 添加会议室
     *
     * @return \think\Response
     */
    public function room_create()
    {
        $data = $this->request->post();
        // 验证
        $r = $this->validate($data, 'RoomValidate');

        if(true !== $r){
            return ajax(0, $r);
        }
        
        $res = MetingroomModel::getAdd($data);
        if($res){
                $user = get_personnel(UID,true);
                $details = $user.'添加了('.$data['room_title'].')会议室';
                action_log('meeting','metingroom/room_create','',UID,$details);

            return ajax(1,'成功','',$data);
        }else{
            return ajax(0,'失败');
        }
    }

    /**
     * 修改会议室
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function room_read($id)
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            $data['id'] = $id;
            $r = $this->validate($data, 'RoomValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            if(MetingroomModel::update($data)){
                return ajax('1','修改成功');
            }else{
                return ajax('0','修改失败');
            }
        }
        
        $data = MetingroomModel::getOne($id);
        return $data;
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function room_delete($id)
    {
        if($id == null) return ajax('0','确少参数');
        if(MetingroomModel::destroy($id)){
            return ajax('1','删除成功');
        }else{
            return ajax('0','删除失败');
        }
    }
}
