<?php
namespace app\admin\model;
use think\Model;
use app\admin\model\ProjectListModel;

class PurchaseplanModel extends model{
    
    protected $autoWriteTimestamp = true;
    protected $name ='purchase_plan';
	public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m-d',$value)?date('Y-m-d',$value):'';
	}
    public function purchase_details()
    {
        return $this->hasMany('PurchasedetailsModel','plan_id');
    }

    public static function search($map = [], $order = '', $page_parm = [])
    {

    	$data = self::view('purchase_plan')
                ->view('personnel_user_basic',['nickname'=>'maker'],'personnel_user_basic.id=purchase_plan.maker','left')
                ->view('project_list',['title'=>'obj_id'],'project_list.id=purchase_plan.obj_id','left')
                ->where($map)
                ->order($order)
                ->paginate('',false,$page_parm)
                ->each(function($item, $key){
    			    switch ($item['status']) {
    			    	case '0':
    			    		$item['status'] = "审核中";
    			    		break;
    			    	case '-1':
    			    		$item['status'] = "作废";
    			    		break;
    			    	case '1':
    			    		$item['status'] = "通过";
    			    		break;
    			    };
    			    return $item;
    			});

    	return  $data;
    }
    

    public static function getOne($id){
    	$data = self::where('id',$id)->find();
    	$data['details'] = $data->purchase_details()->select();
        // dump($data);die;
    	return $data;
    }

   	public static function getAdd($data)
   	{
        unset($data['m_named']);
        unset($data['details_id']);
   		//计划
        $plan = array();
        //明细
        $details = array();

        foreach ($data as $key => $value) {
            if(is_array($value)){
                foreach($value as $k => $v){
                    $details[$k][$key] = $v;
                }
            }else{
                $plan[$key] = $value;
            }
        }
        $plan['count'] = count($details);
        

        $res = self::create($plan);
        $msg = $res->purchase_details()->saveAll($details);
        if ($msg) {
            flow_approval($res['id']);

        	return $return = '9';
        }else{
        	return $return = '0';
        }
   	}

}