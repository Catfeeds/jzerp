<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class ContractlaborModel extends Model
{
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='contractlabor';

    public function setStimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getStimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
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

	public function setApplytimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getApplytimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function setTrtimeAttr($value){
		if(!empty($value)){
			return strtotime($value);
		}else{
			return '';
		}
	}
	public function getTrtimeAttr($value){
		if(!empty($value)){
			return date('Y-m-d',$value);
		}else{
			return '';
		}
	}

	public static function getOne($id)
	{
		return self::where('id',$id)->find();
	}

	public static function getScret($data)
	{
		if(empty($data['id'])){
			return self::create($data);
		}else{
			if(!empty($data['trtime'])){
				PersonneSta($data['name_id'],'working_state','2');
				LaborName($data['id']);
			}
			return self::update($data);
		}
	}

	public static function getList($map = [], $order = '', $parm = []){
		return self::view('contractlabor')
		->view('personnel_user_basic',['nickname'=>'name_id'],'personnel_user_basic.id=contractlabor.name_id','left')
		->where($map)
		->order($order)
		->paginate('', false, $parm)
		->each(function($item, $key){
			switch ($item['statu']) {
				case '0':
					$item['statu'] = '失效';
					break;
				case '1':
					$item['statu'] = '有效';
					break;
				case '2':
					$item['statu'] = '解除';
					break;
			}
		    $item['type'] = TypeName($item['type']);
		    return $item;
		});
	}

}
