<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class TrainingModel extends Model
{
	use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='training';

    public function trainingdetaile()
    {
        return $this->hasMany('TrainingdetaileModel','training_id');
    }

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

    public static function search($map=[],$order='',$page_parm='')
    {

    	$data = self::where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
			    switch ($item['status']) {
			    	case '0':
			    		$item['status'] = "未转";
			    		break;
			    	case '1':
			    		$item['status'] = "已转";
			    		break;
			    };
				$item['head'] = get_personnel($item['head'],true);
			    return $item;
			});
    	return $data;
    }
    public static function getOne($id){
		$data = self::where('id',$id)->find();
		return $data;
	}

	public static function getList($id){
		$data = self::where('id',$id)->find();
		$data['details'] = $data->trainingdetaile()->select();
		return $data;
	}

	public static function getAdd($data)
    {
    	$d = MakeData($data, ['details_id']);

    	$d['status'] = '1';
        $res = self::create($d['main']);
    	$msg = $res->trainingdetaile()->saveAll($d['details']);      

        if($msg){
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }
            
}
