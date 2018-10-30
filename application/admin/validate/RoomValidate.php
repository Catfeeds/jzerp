<?php
namespace app\admin\validate;
use think\validate;
class RoomValidate extends validate
{
	protected $rule = [
		'room_title'	=>	'require',
		'room_number'	=>	'require|number',
		'room_configuration'	=>	'require',
	];
	protected $message = [
		'room_title.require' => '会议室名称不能为空',
		'room_number.require' => '容纳人数不能为空',
		'room_number.number' => '容纳人数格式不正确',
		'room_configuration.require' => '会议配置不能为空',
	];
}
