<?php
//资产

namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
class ProjectProgressPlanModel extends Model {
	use SoftDelete;
	protected $name = 'project_progress_plan';
    protected $autoWriteTimestamp = true;
	protected $state = [
		1 => '审核中',
		2 => '审核成功',
		3 => '审核失败'
	];
	public static function getList($map = [], $order = '', $parm = []){
		return self::view('project_progress_plan')
		 	   -> view('personnel_user_basic', 'nickname', 'project_progress_plan.maker=personnel_user_basic.id', 'left')
		 	   -> view('project_list', 'title as ptitle', 'project_progress_plan.obj_id=project_list.id', 'left')
		 	   -> where($map) -> order($order) -> paginate('', false, $parm);
	}

	public static function getOne($id = ''){
		if(!$id){
			return ajax(0, '参数错误');
		}
		$data = self::where(['id' => $id]) -> find();
		$data['details'] = $data ->details()->select();
		return $data;
		
	}
	public function setDateAttr($value){
		return strtotime($value);
	}
	public function getDateAttr($value){
		return date('Y-m-d',$value);
	}
	public function getStatusAttr($value){
		return isset($this -> state[$value]) ? $this -> state[$value] : '';
	}
	public function getCreateTimeAttr($value){
		return date('Y-m-d',$value);
	}
	public function details(){
		return $this -> hasMany('ProjectProgressDetailsModel', 'pid');
	}
	
	public static function add($data = []){
		$main = [];
		$detail = [];
		$d = MakeData($data, ['details_id']);
		$res = self::create($d['main']);
		return $res -> details() -> saveAll($d['details']);
	}
	
	
}
