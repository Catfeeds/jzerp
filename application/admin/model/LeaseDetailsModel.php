<?php

namespace app\admin\model;

use think\Model;

class LeaseDetailsModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='lease_details';
    public function setCtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getCtimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}
	public function setEtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getEtimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

}
