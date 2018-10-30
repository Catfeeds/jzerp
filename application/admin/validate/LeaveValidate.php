<?php
namespace app\admin\validate;
use think\validate;
class LeaveValidate extends validate
{
	protected $rule = [
		'name_id'	=>	'number',
		'ltime'	=>	'date',
		'ctime'	=>	'date|egt:ltime',
		'etime'	=>	'date|gt:ctime',
		'day'	=>	'number',
	];
	protected $message = [
		'name_id.number' => '请假人格式错误',
		'ltime.date' => '时间格式不正确',
		'ctime.date' => '请假时间格式不正确',
		'ctime.egt' => '请假开始时间必须大于申请时间',
		'etime.date' => '请假时间格式不正确',
		'etime.gt' => '请假结束时间必须大于请假开始时间',
		'day.number' => '请假天数错误',
	];
}
