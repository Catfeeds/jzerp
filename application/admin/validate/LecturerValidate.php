<?php
namespace app\admin\validate;
use think\validate;
class LecturerValidate extends validate
{
	protected $rule = [
		'lecturer_name'         => 'max:50',
		'lecturer_type'         => 'in:0,1',
		'lecturer_title'         => 'max:100',
		'lecturer_phone'         => 'length:11',
		'lecturer_email'         => 'email',
		'lecturer_obj'         => 'number',
		'lecturer_time'         => 'date',
	];
	protected $message = [
		'lecturer_name.max' => '讲师名称过长',
		'lecturer_type.in' => '类型错误',
		'lecturer_title.max' => '标题名称过长',
		'lecturer_phone.length' => '手机号不符合规格',
		'lecturer_email.email' => '邮箱格式错误',
		'lecturer_obj.number' => '制单人错误',
		'lecturer_time.date' => '创建时间错误',
	];
}
