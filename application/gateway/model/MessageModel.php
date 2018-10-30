<?php
namespace app\gateway\model;
use think\Model;
use traits\model\SoftDelete;
class MessageModel extends Model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $name ='message_list';
}
