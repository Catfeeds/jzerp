<?php
namespace app\admin\controller;
use app\admin\model\HouseModel,
	think\Db;
//仓库	HJP
class HouseController extends FlowcommonController
{
	public function index()
	{
		$keyword = ['title', 'contact', 'phone', 'status'];
		$sort = ['create_time asc'];
		$result = $this->page_parm_request($keyword, $sort);		
		$data = HouseModel::getlist($result['map'], $result['order'], $result['page_parm']);			
		return $this->fetch('',['data'=>$data, 'keywords'=>$result['page_parm']['query']]);
	}
	public function add($id = '')
	{
		if($id){			
			$data = HouseModel::getone($id);						
		}else{
			$data = [];
		}
		if($this->request->isPost()){			
			$data = $this->request->post();			
			$res = $this->validate($data, 'HouseValidate');
			if(true !== $res) return ajax(0, $res);
			Db::startTrans();
    		try{
    			if(empty($data['id'])){
					$menu = HouseModel::create($data);
					$msg = '新增';
				}else{
					$menu = HouseModel::update($data);
					$msg = '修改';
				}
				if($menu){ 
					Db::commit();
					$detalis = $msg.$menu['title'].'仓库';
					//行为
					action_log('house_add', 'house/add', '', UID, $detalis);
					//审批
					flow_approval($menu['id']);							
					return ajax(1,$msg.'成功');
	            } else {
	                return ajax(0,$msg.'失败');
	            }
    		} catch(\Exception $e){
    			echo $e;
    			Db::rollback();
    			$code = 0;
    			$msg = '系统错误,请联系管理员';
    		}			
		}				
		return $this->fetch('sponsor/sponsor_list', ['data'=>$data]);
	}
	public function detail($id = ''){
		$data = HouseModel::getone($id);
		return $this->fetch('sponsor/details',['data'=>$data]);
	}
	public function delete($ids = null)
	{
		if(HouseModel::destroy($ids)){
			$menu = HouseModel::getone($ids);
			$detalis = '删除'.$menu['title'].'仓库';
			action_log('house_delete', 'house/delete', '', UID, $detalis);
			return ajax('1','删除成功');
		}else{
			return ajax('0','删除失败');
		}
	}
}
