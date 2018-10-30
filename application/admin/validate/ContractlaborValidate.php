<?php
namespace app\admin\validate;
use think\validate;
class ContractlaborValidate extends validate
{
	protected $rule = [
		'name_id'	=>	'number',
		'code'	=>	'require',
		'stime'	=>	'date',
		'ctime'	=>	'date',
		'etime'	=>	'date',
		'applytime'	=>	'date',
	];
	protected $message = [
		'name_id.number' => '姓名错误',
		'code.require' => '合同编号不能为空',
		'stime.date' => '签约日期无效',
		'ctime.date' => '开始日期无效',
		'etime.date' => '结束日期无效',
		'applytime.date' => '试用结束日期无效',
	];
}