<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class LeaveModel extends Model
{
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='leave';

	public function setLtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getLtimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function setCtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getCtimeAttr($value){
		return date('Y-m-d',$value)?date('Y-m-d',$value):'';
	}

	public function setEtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getEtimeAttr($value){
		return date('Y-m-d',$value)?date('Y-m-d',$value):'';
	}
	public static function getList($map='',$order='',$page_parm='')
    {

    	return self::view('leave')
		->view('personnel_user_basic',['nickname'=>'name_id'],'personnel_user_basic.id=leave.name_id','left')
		->where($map)
		->order($order)
		->paginate('', false, $page_parm)
		->each(function($item, $key){
		    $item['type'] = TypeName($item['type']);
		    return $item;
		});
    }
	public static function getScret($data)
	{
		if(empty($data['id'])){
			return self::create($data);
		}else{
			return self::update($data);
		}
	}

	public static function getOne($id){
		$data = self::where('id',$id)->find();
		return $data;
	}
}
