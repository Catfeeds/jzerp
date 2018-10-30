<?php
namespace app\admin\validate;
use think\validate;
class CertificatesmoneyValidate extends validate
{
	protected $rule = [
		'username'	=>	'number',
		'add_user_id'	=>	'number',
		'start_time'	=>	'date',
		'end_time'	=>	'date',
	];
	protected $message = [
		'username.number' => '姓名格式错误',
		'add_user_id.number' => '录入人错误',
		'start_time.date' => '开始日期无效',
		'end_time.date' => '结束日期无效',
	];
}
