<?php

namespace app\admin\model;

use think\Model;

class LeasePlanModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='lease_plan';

    public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

    public function lease_details()
    {
        return $this->hasMany('LeaseDetailsModel','plan_id');
    }

    public static function search($map='',$order='',$page_parm='')
    {

    	$data = self::view('lease_plan')
                ->view('personnel_user_basic',['nickname'=>'maker'],'personnel_user_basic.id=lease_plan.maker')
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
			    return $item;
			});

    	return  $data;
    }
    public static function getOne($id)
    {
    	$data = self::where('id',$id)->find();
    	$data['details'] = $data->lease_details()->select();
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
        $msg = $res->lease_details()->saveAll($details);

        if($msg){
            flow_approval($res['id']);
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }
}
