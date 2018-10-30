<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;
class ProjectBasedCostModel extends Model{
	use SoftDelete;
	protected $name = 'project_based_cost';
	protected $autoWriteTimestamp = true;
	protected $fields = true;
	protected $state = [
		'待审核',
		'审核成功',
		'审核失败'
	];
	public static function getList($map = [], $order = '', $parm = []){
		return self::view('project_based_cost', ['title' => 'based_title', 'id', 'number', 'status', 'create_time', 'date'])
		
		-> view('personnel_user_basic', 'nickname', 'project_based_cost.maker=personnel_user_basic.id')
		-> view('project_list', ['title' => 'obj_title'], 'project_list.id=project_based_cost.obj_id')
		-> where($map) 
		-> order($order) 
		-> paginate('', false, $parm);
	}
	public function setDateAttr($value){
		return strtotime($value);
	}
	public function getDateAttr($value){
		return date('Y-m-d', $value);
	}
	public function getStatusAttr($value){
		return $this -> state[$value];
	}
	public function getCreateTimeAttr($value){
		return date('Y-m-d', $value);
	}
	public static function getOne($id = ''){
		$data = self::where(['id' => $id]) -> find();
		$data['details'] = $data -> details() -> select();

		return $data;
	}
	
	public static function add($data = []){
		if(count($data) == 0){
			return false;
		}
	
		$result = MakeData($data, ['materials_named', 'details_id']);
		
		$res = self::create($result['main']);
//		dump($result['main']);die;

		return $res -> details() -> saveAll($result['details']);
	}
	
//	public static function updates($data){
//		
//		if(count($data) == 0){
//			return false;
//		}
//	
//	
//		$result = MakeData($data, ['materialsd'], [], ['details_id' => 'id']);
//		
//		$res = self::update($result['main']);
//	
//		return $res -> saveAll($result['details']);
//	
//	}
	
	public  function details(){
		return $this -> hasMany('ProjectBasedCostDetailsModel', 'cost_id');
	}


}
