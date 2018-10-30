<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class MetingroomModel extends Model
{
    //会议室
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='meeting_room';

    public static function getList($map=[],$order='',$page_parm=[])
    {
		$data = self::where($map)->order($order)->paginate('',false,$page_parm);
		return $data;
    }

    public static function getAdd($data)
    {
    	return self::create($data);

    }
    public static function getOne($id)
    {
    	return self::where('id',$id)->find();

    }
}
