<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;

class PurchasecontractModel extends Model
{
    use SoftDelete;
    protected $autoWriteTimestamp = true;
    protected $deleteTime = 'delete_time';
    protected $name ='purchase_contract';

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

	public function setDateAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getDateAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

    public function purchase_condetails()
    {
        return $this->hasMany('PurchasecondetailsModel','con_id');
    }

    public function getSupplierIdAttr($value)
    {

        $value = BSupplierModel::where('id',$value)->where('status','1')->value('supplier_name');
        return $value;
    }

    public static function contract_all($map = [], $order = '', $page_parm = [])
    {
    	$data = self::view('purchase_contract')
                ->view('personnel_user_basic',['nickname'=>'maker'],'personnel_user_basic.id=purchase_contract.maker')
                ->view('project_list',['title'=>'obj_id'],'project_list.id=purchase_contract.obj_id')
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

    public static function getOne($id){
    	$data = self::where('id',$id)->find();
    	$data['details'] = $data->purchase_condetails()->select();
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
        
        $plan['count'] = count($plan);
        
        $res = self::create($plan);
        $msg = $res->purchase_condetails()->saveAll($details);
        if ($msg) {
            flow_approval($res['id']);
            
        	return $return = '9';
        }else{
        	return $return = '0';
        }
   	}
}	
