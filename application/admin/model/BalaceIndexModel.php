<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
use think\Config;

class BalaceIndexModel extends Model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $name ='balance_index';
     protected function getCreateTimeAttr($value,$data)
    {
        return date('Y-m-d', $data['create_time']);
    }
        protected function getVerificationDateAttr($value,$data)
    {
        return date('Y-m-d', $data['verification_date']);
    }
         protected function getExpirAttr($value,$data)
    {
        return date('Y-m-d', $data['expir']);
    }
          protected function getEndTimeAttr($value,$data)
    {
        return date('Y-m-d', $data['end_time']);
    }
        protected function getInvoiceDateAttr($value,$data)
    {
        return date('Y-m-d', $data['invoice_date']);
    }
	public static function getList($map = [], $order = 'create_time desc', $page_parm=[]){
		return self::where($map) -> order($order) -> paginate(Config::get('pageSize'), false, $page_parm);
	}
	
	public static function getOne($id){
		return self::where(['id' => $id]) -> find();
	}
    
}
