<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class TraininglecturerModel extends Model
{
	//培训讲师
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='training_lecturer';


    public function setLecturerCertificatentimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getLecturerCertificatentimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function setLecturerCertificatewtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getLecturerCertificatewtimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function setLecturerTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getLecturerTimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public static function search($map=[],$order='',$page_parm=[])
    {

    	$data = self::where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
			    switch ($item['lecturer_type']) {
			    	case '0':
			    		$item['lecturer_type'] = "内部讲师";
			    		break;
			    	case '1':
			    		$item['lecturer_type'] = "外部讲师";
			    		break;
			    };
			    return $item;
			});
    	return $data;
    }
}
