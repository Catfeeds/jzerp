<?php
namespace app\admin\controller;
use app\admin\model\ProjectListModel;
use app\admin\model\PurchaseplanModel;
use app\admin\model\AdminFilesModel;
use think\Cache;
//采购	HJP
class PurchasePlanController extends FlowcommonController
{
	public function index(){
				
		//return $url;
	}
	public function add($id = '')
	{
		if($id){   		
    		$data = PurchaseplanModel::getOne($id);  
    	}else{
    		$data = [];
    	}      
		if($this->request->isPost()){
			$data = $this->request->post();
			if(empty($data['id'])){
				$menu = PurchaseplanModel::create($data);
				$msg = '新增';
			}else{
				$menu = PurchaseplanModel::update($data);
				$msg = '修改';
			}			
            if ($menu) {                             
                Cache::clear();             
                return ajax(1,$msg.'成功');
            } else {
                return ajax(0,$msg.'失败');
            }
		}		
		$this->assign('obj_id',ProjectListModel::column('id,title'));
		return $this->fetch('sponsor/sponsor_list',['data'=>$data]); 
	}
	public function details($id = ''){
		$data = PurchaseplanModel::getOne($id); 
		return $this->fetch('sponsor/details',['data'=>$data]);
	}
}
