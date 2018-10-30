<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;

class FlowtypeModel extends model{
	use SoftDelete;
	protected $autoWriteTimestamp = true;
	protected $deleteTime = 'delete_time';
    protected $table ='jz_flow_type';
    
    public static function getlist($map = [], $order = 'sort desc', $page_parm=[])
    {
    	$data = self::where($map)->where('status',1)->order($order)->order('create_time desc')->paginate(Config('pageSize'), false, $page_parm);
    	return $data;
    }
    public static function getone($id = null)
    {
    	$data = self::where('id',$id)->where('status',1)->find();
    	return $data;
    }
    public static function gettitle()
    {
    	$type = self::where('status',1)->order('create_time desc')->column('id,title');
    	return $type;
    }
    
    
}