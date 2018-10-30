<?php

namespace app\admin\model;

use think\Model;

class LeaseContractModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='lease_contract';


    public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
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

    public function lease_condetails()
    {
        return $this->hasMany('LeaseCondetailsModel','con_id');
    }

    public static function search($map='',$order='',$page_parm='')
    {
    	$data = self::view('lease_contract')
                ->view('supplier_basic_mes',['supplier_name'=>'supplier_id'],'supplier_basic_mes.id=lease_contract.supplier_id')
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
                $item['app_id'] = get_personnel($item['app_id'],true);
			    return $item;
			});

    	return  $data;
    }

    public static function getOne($id)
    {
    	$data = self::where('id',$id)->find();
    	$data['details'] = $data->lease_condetails()->select();
    	return $data;
    }
    public static function getAdd($data)
    {
        unset($data['details_id']);
    	//租赁计划
        $contract = array();
        //清单
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

        $contract['count'] = count($details);
        unset($contract['m_named']);


        $res = self::create($contract);
        $msg = $res->lease_condetails()->saveAll($details);
        if($msg){
            flow_approval($res['id']);
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }
}
