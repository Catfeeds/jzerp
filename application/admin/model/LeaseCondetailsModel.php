<?php

namespace app\admin\model;

use think\Model;

class LeaseCondetailsModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='lease_condetails';

    public function setEndTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getEndTimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function setStartTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getStartTimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}


}
