<?php
namespace app\admin\model;
use think\Model;
use think\Db;
use think\Config;
use traits\model\SoftDelete;
/*
	供应商模型
*/

class LSupplierModel extends Model
{

	//软删除
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	// 设置当前模型对应的完整数据表名称
    protected $name = 'supplier_linkman_mes';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    //

    public static function del($fids= ''){

    	return self::destroy($fids);




    } 

}