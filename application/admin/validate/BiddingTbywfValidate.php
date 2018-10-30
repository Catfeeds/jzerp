<?php
namespace app\admin\validate;
use think\validate;
class BiddingTbywfValidate extends validate
{
	protected $rule = [
		'bidding_id'	=>	'number',
		'type_id'	=>	'require|number',
		'date'	=>	'date',
		'amount'	=>	'number',
	];
	protected $message = [
		'bidding_id.number' => '项目名称不能为空',
		'type_id.require' => '项目类型不能为空',
		'type_id.number' => '项目类型格式不正确',
		'date.date' => '时间格式不正确',
		'amount.number' => '申请金额格式不正确',
	];
}
