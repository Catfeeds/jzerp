<?php

namespace app\admin\model;

use think\Model;

class SubContractModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='sub_contract';

    public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}
	public function setStartTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getStartTimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}
	public function setEndTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getEndTimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

	public function sub_condetails()
    {
        return $this->hasMany('SubConModel','sub_id');
    }

    public static function search($map='',$order='',$page_parm='')
    {

    	$data = self::view('sub_contract')
                ->view('supplier_basic_mes',['supplier_name'=>'supplier_id'],'supplier_basic_mes.id=sub_contract.supplier_id')
                ->where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
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
				$item['obj_id'] = ProjectListModel::where('id',$item['obj_id'])->value('title');
                $item['maker'] = get_personnel($item['maker'],true);
			    return $item;
			});

    	return  $data;
    }

    public static function getOne($id)
    {
    	$data = self::where('id',$id)->find();
    	$data['details'] = $data->sub_condetails()->select();
    	return $data;
    }

    public static function getAdd($data)
    {
        unset($data['details_id']);
    	//合同信息
        $contract = array();
        //工程量清单
        $details = array();

        foreach ($data as $key => $value) {
            if(is_array($value)){
                foreach($value as $k => $v){
                    $details[$k][$key] = $v;
                }
            }else{
                $contract[$key] = $value;
            }
        }
        $res = self::create($contract);
        $msg = $res->sub_condetails()->saveAll($details);

        if($msg){
            flow_approval($res['id']);
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }
}
