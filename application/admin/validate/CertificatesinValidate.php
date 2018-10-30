<?php
namespace app\admin\validate;
use think\validate;
class CertificatesinValidate extends validate
{
	protected $rule = [
		'in_username'	=>	'number',
		'organization'	=>	'number',
		'in_time'	=>	'date',
	];
	protected $message = [
		'in_username.number' => '归还人错误',
		'organization.number' => '部门格式错误',
		'in_time.date' => '日期无效',
	];
}