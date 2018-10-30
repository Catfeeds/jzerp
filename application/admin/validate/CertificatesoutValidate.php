<?php
namespace app\admin\validate;
use think\validate;
class CertificatesoutValidate extends validate
{
	protected $rule = [
		'out_user_id'	=>	'number',
		'organization'	=>	'number',
		'out_time'	=>	'date',
		'in_plan_time'	=>	'date',
	];
	protected $message = [
		'out_user_id.number' => '录入人错误',
		'organization.number' => '部门格式错误',
		'out_time.date' => '日期无效',
		'in_plan_time.date' => '预计归还日期不是一个有效日期',
	];
}
