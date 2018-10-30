<?php

namespace app\admin\model;

use think\Model;

class CertificatesinModel extends Model
{   
    protected $autoWriteTimestamp = true;
    protected $name ='certificates_in';

    public function setInTimeAttr($value){
        return strtotime($value)?strtotime($value):'';
    }

    public function getInTimeAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

    public function certificate_detail()
    {
        return $this->hasMany('CertificatedetaileModel','out_id');
    }


    public static function getAdd($data)
    {
		unset($data['certificate_type']);
		unset($data['details_id']);

    	//证件归还信息
        $contract = array();
        //证件归还明细
        $details = array();

        foreach ($data as $key => $value) {
            if(is_array($value)){
                foreach($value as $k => $v){
                    $details[$k][$key] = $v;
                    $details[$k]['type'] = 'in';
                }
            }else{
                $contract[$key] = $value;
            }
        }
			
        $res = self::create($contract);
        $msg = $res->certificate_detail()->saveAll($details);

        if($msg){
            foreach ($details as $key => $value) {
                certificate_status($value['username'],9);
            }
        	return $return = '9';
        }else{
        	return $return = '0';
        }
    }
    

    public static function getList($map = [], $order = '', $parm = []){
		return self::view('certificates_in')
				->view('personnel_user_basic',['nickname'=>'in_username'],'personnel_user_basic.id=certificates_in.in_username')
				->view('system_organization',['title'=>'organization'],'system_organization.id=certificates_in.organization')
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


    public static function getOne($id){
		$data = self::where('id',$id)->find();
		$data['details'] = $data->certificate_detail()->where('type','in')->select();
		return $data;
	}

}
