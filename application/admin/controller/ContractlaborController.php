<?php

namespace app\admin\controller;

use think\Request;
use app\admin\model\ContractlaborModel;

class ContractlaborController extends FlowcommonController
{
    /**
     * 劳动合同列表
     *
     * @return \think\Response
     */
    public function labor_list()
    {
        LaborStas();

        $keywords = ['name_id', 'type', 'statu','etime'];

        $sort = ['etime'];

        $result = $this -> page_parm_request($keywords, $sort);

        $data = ContractlaborModel::getList($result['map'], $result['order'], $result['page_parm']);
        $this->assign('data',$data);
        $this->assign('keywords',$result['page_parm']['query']);

        $page = $result['page_parm']['page'];
        $this->assign('page',$page);
        $this->assign('type',ConfigType('contract_labor'));

        return view('contractlabor/contractlabor_view');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function labor_create($id='')
    {
        if($id){
            $data = ContractlaborModel::getOne($id);
        }else{
            $data = [];
        }

        if($this->request->isPost()){
            $data = $this->request->post();

            $data['department'] = get_organization($data['name_id']);

            // 验证
            $r = $this->validate($data, 'ContractlaborValidate');

            if(true !== $r){
                return ajax(0, $r);
            }

            $res = ContractlaborModel::getScret($data);
            if($res){

                $a = get_personnel($data['name_id']);

                $details = "更新了(".$a['nickname'].")的劳动合同";
                action_log('contractlabor','contractlabor/labor_create','',UID,$details);

                return ajax(1,'更新成功',url('labor_list'));
            }else{
                return ajax(0,'更新失败');
            }
        }

        $this->assign('data',$data);
        $this->assign('type',ConfigType('contract_labor'));
        return $this->fetch('sponsor/sponsor_list');
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function labor_read($id)
    {
        $data = ContractlaborModel::getOne($id);

        $this->assign('type',ConfigType('contract_labor'));
        return $this->fetch('sponsor/details',['data'=>$data]);
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function labor_delete($id)
    {
        if(!$id) {
            return ajax(0, '请传入要删除的项');
        }
        $msg = ContractlaborModel::where('id',$id)->value('name_id');

        $a = get_personnel($msg);

        $m = ContractlaborModel::destroy($id);
        if($m){
            $details = "删除了(".$a['nickname'].")的劳动合同";
            action_log('contractlabor','contractlabor/labor_delete','',UID,$details);

            return ajax(1, '删除成功');
        } else {
            return ajax(0, '删除失败');
        }
    }

}
