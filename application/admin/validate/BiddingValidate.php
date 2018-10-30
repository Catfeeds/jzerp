<?php
namespace app\admin\validate;
use think\validate;
class BiddingValidate extends validate
{
	protected $rule = [
		'title'	=>	'require|max:50',
		'content'	=>	'require',
		'address'	=>	'require',
		'maker'	=>	'require|number',
		'date'	=>	'require|date',
		'nature'	=>	'require|number',
		'type_id'	=>	'require|number',
		'head_id'	=>	'require|number',
		'etime'	=>	'require|date',
		'bcost'	=>	'require',
		'contract_cost'	=>	'require',
		'contact_people'	=>	'require',
		'contact_phone'	=>	'require|regex:^1\d{10}',
		'design_unit'	=>	'require',
		'supervision_unit'	=>	'require',

	];
	protected $message = [
		'title.require' => '项目名称不能为空',
		'title.max' => '项目名称不能超过25个字',
		'content.require' => '项目简介不能为空',
		'address.require' => '项目地址不能为空',
		'maker.require' => '录入人不能为空',
		'maker.number' => '录入人格式不正确',
		'date.require' => '时间不能为空',
		'date.date' => '时间格式不正确 ',
		'nature.require' => '项目性质不能为空',
		'nature.number' => '请选择项目性质',
		'type_id.require' => '项目类型不能为空',
		'type_id.number' => '请选择项目类型',
		'head_id.require' => '项目负责人不能为空',
		'head_id.number' => '项目负责人格式不正确',
		'etime.require' => '投标时间不能为空',
		'etime.date' => '投标时间格式不正确',
		'bcost.require' => '预计投标费用不能为空',
		'contract_cost.require' => '预计合同金额不能为空',
		'contact_people.require' => '联系人不能为空',
		'contact_phone.require'	=> '联系电话号不能为空',
		'contact_phone.regex' => '手机号格式不正确',
		'design_unit.require' => '设计单位不能为空',
		'supervision_unit.require' => '监制单位不能为空',

	];
}
