<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;

class BalaceCateModel extends model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $table ='jz_balance_cate';
    public static function getAllCate(){
    	return self::order('create_time desc zid asc') -> select();
    }
    public static function getOne($id = null){
    	if(null == $id){
    		return false;
    	}
    	return self::where(['id' => $id]) -> field('id,title,cid,pid,age_limit,remaining,note') -> find();
    }
}
