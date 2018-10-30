<?php
namespace app\gateway\model;
use think\Model;
use traits\model\SoftDelete;

class MessageConsigneeModel extends Model{
	
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $name ='message_consignee';
 
    public static function getList($map = [], $order = 'create_time desc'){
		return self::view('message_consignee mc', 'id,create_time,is_read')
		-> view('message_list ml', 'title,msg_type,content', 'mc.msg_id=ml.id')
		-> view('personnel_user_basic p', 'nickname', 'ml.sender_id=p.id')
		-> view('message_config mco', 'title as ctitle', 'mco.sign=ml.msg_type')
		-> where($map)
		-> order($order) -> paginate();
    }
//  public function getCreateTimeAttr($v){
//  	return date('Y-m-d H:i:s', $v);
//  }
 
}


