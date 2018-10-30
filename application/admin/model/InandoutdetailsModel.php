<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;
class InandoutdetailsModel extends model
{
	use SoftDelete;
	protected $autoWriteTimestamp = true;
	protected $deleteTime = 'delete_time';
	protected $table = 'jz_stock_inandout_details';	
}
