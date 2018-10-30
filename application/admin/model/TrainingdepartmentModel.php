<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;


class TrainingdepartmentModel extends Model
{
	//培训机构
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='training_department';

    public static function search($map=[],$order='',$page_parm='')
    {
    	$data = self::where($map)->order($order)->paginate('',false,$page_parm);
    	return $data;
    }
}
