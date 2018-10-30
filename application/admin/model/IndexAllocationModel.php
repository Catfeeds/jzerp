<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;

class IndexAllocationModel extends model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $name ='index_allocation';

    public static function getOne($user_id = null){
    	return self::where(['user_id' => $user_id]) -> find();
    }
}
