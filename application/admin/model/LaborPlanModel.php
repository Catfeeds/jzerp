<?php

namespace app\admin\model;

use think\Model;

class LaborPlanModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='labor_plan';

    public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

    public function labor_details()
    {
        return $this->hasMany('LaborDetailsModel','plan_id');
    }

    public static function search($map=[],$order='',$page_parm=[])
    {

    	$data = self::view('labor_plan')
                ->view('personnel_user_basic',['nickname'=>'maker'],'personnel_user_basic.id=labor_plan.maker')
                ->view('project_list',['title'=>'obj_id'],'project_list.id=labor_plan.obj_id')
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
        		    return $item;
        		});

    	return  $data;
    }

    public static function getOne($id)
    {
        $data = self::where('id',$id)->find();
        $data['details'] = $data->labor_details()->select();
        return $data;
    }
    public static function getAdd($data)
    {
        unset($data['details_id']);
    	//计划信息
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

        $contract['count'] = count($contract);
        unset($contract['teamd']);

        $res = self::create($contract);
        $msg = $res->labor_details()->saveAll($details);

        if($msg){
            flow_approval($res['id']);
            
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }
}
