<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
class ContractModel extends Model{
	use SoftDelete;
	protected $name = 'contract';
	protected $autoWriteTimestamp = true;
	public static function getList($map = [], $order = [], $parm = []){
//		dump($map);
//		die;
		return self:: order($order)
			-> where($map)
		    -> paginate('', false, $parm);
	}
	public static function getOne($id){
		return self::view('contract') -> find(['id' => $id]);
	}
	public static function setDateAttr($value){
		return strtotime($value);
	}
	public static function getDateAttr($v){
		return date('Y-m-d', $v);
	}
	public static function getSTimeAttr($v){
		return date('Y-m-d', $v);
	}
	public static function getETimeAttr($v){
		return date('Y-m-d', $v);
	}
}
