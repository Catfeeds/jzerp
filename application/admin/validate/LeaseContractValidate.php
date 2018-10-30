<?php
namespace app\admin\validate;
use think\validate;

class LeaseContractValidate extends validate{
    protected $rule =   [
        'title'          => 'require',
        'obj_id'         => 'require|number',
        'contract_money' => 'require',
        'date'           => 'require|date',    
        'ctime'          => 'require|date',    
        'etime'          => 'require|date',    
        'pre_money'      => 'require|number',
        'bail'           => 'require|number',
        'condition'      => 'require',
        'item'           => 'require',
        'clear_type'           => 'number',
        'pay_type'           => 'number',
    ];
    
    protected $message  =   [
        'title.require'          => '合同不能为空',
        'obj_id.require'         => '项目名称不能为空',
        'obj_id.number'         => '请选择项目名称',
        'contract_money.require' => '合同金额不能为空',
        'date.require'           => '日期不能为空',
        'date.date'              => '日期必须为有效日期',
        'ctime.require'          => '日期不能为空',
        'ctime.date'             => '日期必须为有效日期',
        'etime.require'          => '日期不能为空',
        'etime.date'             => '日期必须为有效日期',
        'pre_money.require'      => '预付款不能为空',
        'pre_money.number'       => '预付款格式不正确',
        'bail.require'           => '保证金不能为空',
        'bail.number'            => '保证金格式不正确',
        'condition.require'      => '付款条件不能为空',
        'item.require'           => '主要条款不能为空',
        'clear_type.number'           => '请选择结算方式',
        'pay_type.number'           => '请选择付款方式',
    ];
}