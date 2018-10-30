<?php
namespace app\admin\validate;
use think\validate;
class CertificatesValidate extends validate
{
	protected $rule = [
		'username'	=>	'max:50',
		'id_card'	=>	'length:18',
		'certificate_number'	=>	'alphaNum',
		'end_time'	=>	'date',
		'storage_location'	=>	'chs',
	];
	protected $message = [
		'username.max' => '名称过长',
		'id_card.length' => '请输入正确的身份证号码',
		'certificate_number.alphaNum' => '证书编号格式不正确',
		'end_time.date' => '证书有效截止时间无效',
		'storage_location.chs' => '存放地点只能为汉字',
	];
}
