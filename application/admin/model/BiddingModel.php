<?php

namespace app\admin\model;

use think\Model;

class BiddingModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='bidding';

    public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function setEtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getEtimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}



    public static function getAdd($data)
    {
    	$data = self::create($data);
    	if($data){
    		flow_approval($data['id']);
    		return $res = '1';
    	}else{
    		return $res = '0';
    	}
    }

    public static function search($map='',$order='',$page_parm='')
    {

    	$data = self::where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
			    switch ($item['status']) {
			    	case '0':
			    		$item['status'] = "进行中";
			    		break;
			    	case '-1':
			    		$item['status'] = "作废";
			    		break;
			    	case '1':
			    		$item['status'] = "完成";
			    		break;
			    };
				$item['type_id'] = TypeModel::where('id',$item['type_id'])->value('name');
                $item['maker']   = get_personnel($item['maker'],true);
                $item['head_id'] = get_personnel($item['head_id'],true);
			    return $item;
			});

    	return  $data;
    }

    public static function getOne($id)
    {
    	$data = self::where('id',$id)->find();
    	return $data;
    }
}
