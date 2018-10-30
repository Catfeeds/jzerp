<?php
namespace app\admin\validate;
use think\validate;

class SubContractValidate extends validate{
    protected $rule =   [
        'number'         => 'require',
        'title'          => 'require',
        'contract_type'  => 'require|number',
        'contract_money' => 'require',
        'obj_id'         => 'require|number',
        'start_time'     => 'require|date',    
        'end_time'       => 'require|date',    
        'date'           => 'require|date',    
        'maker'          => 'require|number',
        'item'           => 'require',
        'condition'      => 'require',
        'clear_type'      => 'number',
        'pay_type'      => 'number',
    ];
    
    protected $message  =   [
        'number.require'         => '合同编号不能为空',
        'title.require'          => '合同名称不能为空',
        'contract_type.require'  => '合同类型不能为空',
        'contract_type.number'  => '请选择合同类型',
        'contract_money.require' => '合同金额不能为空',
        'obj_id.require'         => '项目名称不能为空',
        'obj_id.number'         => '请选择项目名称',
        'maker.require'          => '申请人不能为空',
        'maker.number'           => '申请人格式错误',
        'end_time.require'       => '结束日期不能为空',
        'end_time.date'          => '结束日期必须为有效日期',
        'start_time.require'     => '开始日期不能为空',
        'start_time.date'        => '开始日期必须为有效日期',
        'date.require'           => '日期不能为空',
        'date.date'              => '日期必须为有效日期',
        'item.require'           => '主要条款不能为空',
        'condition.require'      => '付款条件不能为空',
        'clear_type.number'      => '请选择结算方式',
        'pay_type.number'      => '请选择付款方式',
    ];
}