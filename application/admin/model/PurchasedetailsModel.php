<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;

class PurchasedetailsModel extends Model
{
    use SoftDelete;
    protected $autoWriteTimestamp = true;
    protected $deleteTime = 'delete_time';
    protected $name ='purchase_details';

    public function setMDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getMDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

}
