<?php
namespace app\admin\validate;
use think\validate;
class BiddingFileValidate extends validate
{
	protected $rule = [
		'bidding_id'	=>	'require|number',
		'cost'	=>	'require',
		'date'	=>	'date',
	];
	protected $message = [
		'bidding_id.require' => '项目名称不能为空',
		'bidding_id.number' => '项目名称格式不正确',
		'cost.require' => '招投标文件费不能为空',
		'date.date' => '时间格式不正确',
	];
}
