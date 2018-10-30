<?php

namespace app\admin\model;

use think\Model;

class CertificateoutModel extends Model
{
    protected $autoWriteTimestamp = true;
    protected $name ='certificates_out';

    
    public function setOutTimeAttr($value){
        return strtotime($value)?strtotime($value):'';
    }

    public function getOutTimeAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

    public function setInPlanTimeAttr($value){
        return strtotime($value)?strtotime($value):'';
    }

    public function getInPlanTimeAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

    public function certificate_detail()
    {
        return $this->hasMany('CertificatedetaileModel','out_id');
    }


    public static function getAdd($data)
    {
    	unset($data['details_id']);
    	unset($data['certificate_type']);

    	//证件借出信息
        $contract = array();
        //证件借出明细
        $details = array();

        foreach ($data as $key => $value) {
            if(is_array($value)){
                foreach($value as $k => $v){
                    $details[$k][$key] = $v;
                    $details[$k]['type'] = 'lend';
                }
            }else{
                $contract[$key] = $value;
            }
        }
            
        $res = self::create($contract);
        $msg = $res->certificate_detail()->saveAll($details);

        if($msg){
            foreach ($details as $key => $value) {
                certificate_status($value['username'],5);
            }
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }

    public static function getList($map = [], $order = '', $parm = []){
		return self::view('certificates_out')
                ->field('certificates_out.status as statu')
				->view('personnel_user_basic',['nickname'=>'out_user_id'],'personnel_user_basic.id=certificates_out.out_user_id')
				->view('system_organization',['title'=>'organization'],'system_organization.id=certificates_out.organization')
				->where($map)
				->order($order)
				->paginate('', false, $parm)
				->each(function($item, $key){
				    switch ($item['status']) {
				    	case '0':
				    		$item['status'] = "完成";
				    		break;
				    	case '2':
				    		$item['status'] = "作废";
				    		break;
				    	case '1':
				    		$item['status'] = "进行中";
				    		break;
				    };
				    return $item;
				});
	}


	public static function getOne($id = ''){
		$data = self::where('id',$id)->find();
		$data['details'] = $data->certificate_detail()->where('type','lend')->select();
		return $data;
	}
}
