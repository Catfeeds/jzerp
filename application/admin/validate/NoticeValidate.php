<?php
namespace app\admin\validate;
use think\validate;
class NoticeValidate extends validate
{
	protected $rule = [
		'notice_type'	=>	'number',
		'notice_time'	=>	'date',
	];
	protected $message = [
		'notice_type.number' => '请选择公告类型',
		'notice_time.date' => '时间格式不正确',
	];
}
