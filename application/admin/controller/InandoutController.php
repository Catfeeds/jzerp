<?php
namespace app\admin\controller;
use app\admin\model\InandoutModel,
	app\admin\model\InandoutdetailsModel,
	app\admin\model\HouseModel,
	app\admin\model\MaterialTypeModel,
	app\admin\model\MaterialModel,
	think\Db;
class InandoutController extends FlowcommonController{
	//入库index
	public function index(){
		if(input('state') == 1){
			$keywords = ['maker_name', 'type', 's_name', 'state'];
		}else{
			$keywords = ['maker_name', 'type', 'state', 'obj_name'];
		}	
		$sort = ['create_time'];
		$bet = [
				'create_time' => [
					's_time',
					'e_time',
					'time',
					'stock_inandout.create_time'
				]
			];
		$result = $this -> page_parm_request($keywords, $sort, $bet);
		$result['map']['state'] = input('state');					
		$list = InandoutModel::getList($result['map'], $result['order'], $result['page_parm']);
		return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query']]);
	}
	//查询
	public function search(){
		$keywords = ['maker_name'];
		$sort = ['create_time'];
		$bet = [
				'create_time' => [
					's_time',
					'e_time',
					'time',
					'stock_inandout.create_time'
				]
			];
		$result = $this -> page_parm_request($keywords, $sort, $bet);		
		$list = InandoutModel::getList($result['map'], $result['order'], $result['page_parm']);
		return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query']]);
	}
	//入库新增
	public function addin($id = ''){
		if($id){   		
    		$data = InandoutModel::getOne($id);  
    	}else{
    		$data = [];
    	}  
    	if($this->request->isPost()){
    		$data = $this->request->post();
    		$res = $this->validate($data, 'InandoutValidate');
    		if(true !== $res) return ajax(0, $res);
    		$data['state'] = 1;
    		Db::startTrans();
    		try{
    			if(empty($data['id'])){    				
    				$menu = InandoutModel::addMany($data);								
					$msg = '新增';
    			}else{
    				$inandout = MakeData($data, ['m_named'], ['details_id' => 'id'], ['inandout_id' => $data['id']]);
    				$Inandoutdetails = new InandoutdetailsModel;
    				$menu = InandoutModel::update($inandout['main']) && $Inandoutdetails -> saveAll($inandout['details']);
					$msg = '修改';
    			}   			
    			if($menu){
    				Db::commit();
    				$detalis = $msg.'入库';
					action_log('inandout_addin', 'inandout/addin', '', UID, $detalis);
					$code = 1;
					$msg = $msg.'成功';
    			}else{
    				Db::rollback();
    				$code = 0;
    				$msg = $msg.'失败';
    			}
    		} catch(\Exception $e){
    			echo $e;
    			Db::rollback();
    			$code = 0;
    			$msg = '系统错误,请联系管理员';
    		}
    		return ajax($code, $msg);
    	}
    	return $this->fetch('sponsor/sponsor_list', ['data'=>$data]);
	}	
	//出库新增
	public function addout($id = ''){
		if($id){   		
    		$data = InandoutModel::getOne($id);  
    	}else{
    		$data = [];
    	}  
    	if($this->request->isPost()){
    		$data = $this->request->post();
    		$res = $this->validate($data, 'InandoutValidate');
    		if(true !== $res) return ajax(0, $res);
    		$data['state'] = 2;
    		Db::startTrans();
    		try{
    			if(empty($data['id'])){    				
    				$menu = InandoutModel::addMany($data);					
					$msg = '新增';
    			}else{
    				$inandout = MakeData($data, ['m_named'], ['details_id' => 'id'], ['inandout_id' => $data['id']]);
    				$Inandoutdetails = new InandoutdetailsModel;
    				$menu = InandoutModel::update($inandout['main']) && $Inandoutdetails -> saveAll($inandout['details']);
					$msg = '修改';
    			}
    			if(is_numeric($menu)){
    				Db::rollback();
    				$code = 0;
    				$msg = '库存不足';
    			}else if($menu){
    				Db::commit();
    				$detalis = $msg.'出库';
					action_log('inandout_addout', 'inandout/addout', '', UID, $detalis);
					$code = 1;
					$msg = $msg.'成功';
    			}else{
    				Db::rollback();
    				$code = 0;
    				$msg = $msg.'失败';
    			}
    		} catch(\Exception $e){
    			echo $e;
    			Db::rollback();
    			$code = 0;
    			$msg = '系统错误,请联系管理员';
    		}
    		return ajax($code, $msg);
    	}
    	return $this->fetch('sponsor/sponsor_list', ['data'=>$data, 'supandpos'=>projectList(['status'=>1], true)]);
	}
	public function detail($id = ''){
		$data = InandoutModel::getOne($id); 
		return $this->fetch('sponsor/details',['data'=>$data]); 
	}
	public function details($id = ''){
		$data = InandoutModel::getOne($id); 
		return $this->fetch('sponsor/details',['data'=>$data, 'supandpos'=>projectList('', true)]); 
	}
	 public function stock()
    {
        $materialtype = MaterialTypeModel::ptree(); 
        $house = HouseModel::gettitle();      
        //搜索条件
       	$keywords = ['name', 'type_id', 'number', 'house_id'];  
       	$sort = [
       		['update_time']
       	];
       	$result = $this -> page_parm_request($keywords,$sort);      
        $data = MaterialModel::Material_list($result['map']);
        $this->assign('materialtype',$materialtype);
        $this->assign('data',$data);
        $this->assign('house',$house);
        $this->assign('keywords',$result['page_parm']['query']);
        return $this->fetch(); 
    }
}
