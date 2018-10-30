<?php
namespace app\admin\model;
use traits\model\SoftDelete,
	think\Model;

class HouseModel extends model{
	use SoftDelete;
	protected $autoWriteTimestamp = true;
	protected $deleteTime = 'delete_time';
	protected $table = 'jz_stock_house';
	public function getCreateTimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}
	public static function getlist($map = [], $order = 'create_time desc', $page_parm = [])
	{
		$data = self::where($map)
		->order($order)
		->paginate(Config('pageSize'), false, $page_parm);
		return $data;
	}
	public static function getone($id = null)
	{
		$data = self::where('id', $id)->find();		 
		return $data;
	}
	public static function gettitle()
	{
		$title = self::where('status', 1)->order('create_time desc')->cache(true)->column('id,title');
		return $title;
	}
}
