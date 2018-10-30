<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
class ProjectCostCompileModel extends Model{
	
	use SoftDelete;
	protected $name = 'project_cost_compile';
	protected $autoWriteTimestamp = true;
	protected $state = [
		'待审核',
		'审核成功',
		'审核失败'
	];
	public static function getList($map = [], $order = '', $parm = []){
		return self::view('project_cost_compile')
		-> view('personnel_user_basic', 'nickname', 'project_cost_compile.maker=personnel_user_basic.id')
		-> view('project_list', ['title' => 'obj_title'], 'project_list.id=project_cost_compile.obj_id')
	
		-> where($map)  -> order($order) 
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

		return $data;
	}
	
	public static function add($data = []){
		if(count($data) == 0){
			return false;
		}
	
		$result = MakeData($data, ['details_id']);
	
		
		$res = self::create($result['main']);

		return $res -> details() -> saveAll($result['details']);
	}
	

	
	public  function details(){
		return $this -> hasMany('ProjectCostCompileDetailsModel', 'pid');
	}



}
