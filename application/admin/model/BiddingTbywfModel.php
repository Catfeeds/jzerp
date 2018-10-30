<?php

namespace app\admin\model;

use think\Model;

class BiddingTbywfModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='bidding_tbywf';

    public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public static function getadd($data)
	{
		$res = self::create($data);
		return $res;
	}

	public static function search($map='',$order='',$page_parm='')
	{
    	$data = self::view('bidding_tbywf')
                ->view('bidding',['title'=>'bidding_id'],'bidding_tbywf.bidding_id=bidding.id')
                ->view('type_all',['name'=>'type_id'],'bidding_tbywf.type_id=type_all.id')
                ->where($map)
                ->order($order)
    			->paginate('',false,$page_parm)
    			->each(function($item, $key){
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
	                $item['maker']   = get_personnel($item['maker'],true);
				    return $item;
				});

    	return  $data;		
	}

	public static function getOne($id)
    {
    	$data = self::where('id',$id)->find();

    	$data['type_id'] = TypeName($data['type_id']);
    	return $data;
    }
}
