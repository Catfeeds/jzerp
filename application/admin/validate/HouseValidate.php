<?php
namespace app\admin\validate;
use think\validate;
class HouseValidate extends validate
{
	protected $rule = [
		'title'	=>	'require|max:50',
		'address'	=>	'require|max:50',
		'contact'	=>	'require',
		'phone'	=>	'require|regex:^1\d{10}',
	];
	protected $message = [
		'title.require' => '仓库名称不能为空',
		'title.max' => '仓库名称不能超过25个字',
		'address.require' => '仓库地址不能为空',
		'address.max' => '仓库名称不能超过50个字',
		'contact.require' => '仓库管理员不能为空',
		'phone.require'	=> '手机号不能为空',
		'phone.regex' => '手机号格式不正确',
	];
}
