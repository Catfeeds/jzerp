<?php
//资产

namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
class ProjectProgressDetailsModel extends Model {
	use SoftDelete;
	protected $name = 'project_progress_details';
    protected $autoWriteTimestamp = true;
	
	public static function getList($map = [], $order = ''){
		return self::where($map) -> order($order) -> select();
	}
	public static function getOne($id = ''){
		if(!$id){
			return ajax(0, '参数错误');
		}
		
		return self::where(['id' => $id]) -> find();
		
	}
	public function getStartTime($v){
		return date('Y-m-d', $v);
	}
}
