<?php
namespace app\admin\validate;
use think\validate;
class TrainingValidate extends validate
{
	protected $rule = [
		'title'         => 'max:50',
		'type'          => 'max:50',
		'head'          => 'number',
		'training_cost' => 'number',
		'other_fees'    => 'number',
		'ctime'         => 'date',
		'etime'         => 'date',
	];
	protected $message = [
		'title.max'            => '名称不能超过25个字',
		'type.max'             => '名称不能超过25个字',
		'head.number'          => '负责人格式错误',
		'training_cost.number' => '培训费用格式错误',
		'other_fees.number'    => '其他费用格式错误',
		'ctime.date'           => '开始日期格式不正确 ',
		'etime.date'           => '结束日期格式不正确 ',

	];
}
