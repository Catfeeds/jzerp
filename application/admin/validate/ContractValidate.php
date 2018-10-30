<?php

namespace app\admin\validate;
use think\Validate;
class contractValidate extends Validate{
	protected $rule = [
		['date', 'require', '日期不能为空'],
		['number', 'require', '编号不能为空'],
		['title', 'require', '标题不能为空'],
		['c_name', 'require', '客户名称不能为空'],
		['c_phone', 'require|/^1[3-8]{1}[0-9]{9}$/', '客户电话不能为空|手机号码格式错误'],
		['pay_type', 'require|number', '支付方式不能为空|支付方式不能为空'],
		['finish_type', 'require|number', '交货方式不能为空|交货方式不能为空'],
		['money_type', 'require|number', '币种不能为空|币种不能为空'],
		['rate', 'require', '汇率不能为空'],
		['money', 'require', '金额不能为空'],
		['bigmoney', 'require', '金额大写不能为空'],
		['sign_man', 'require', '签订人不能为空'],
		['s_time', 'require', '开始时间不能为空'],
		['e_time', 'require', '结束时间不能为空'],
		['address', 'require', '签约地址不能为空'],
		['maker', 'require', '制单人不能为空'],
		['maker', 'require', '制单人不能为空'],
	];
}
