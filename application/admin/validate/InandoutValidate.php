<?php
namespace app\admin\validate;
use think\validate;
class InandoutValidate extends validate
{
	protected $rule = [
		'type'	=>	'require|number',
		'm_named'	=>	'require',	
		'supandpos'	=>	'require',	
	];
	protected $message = [
		'type.number' => '请选择入库类型',	
		'm_named'	=> '请选择材料名称',
	];
}
