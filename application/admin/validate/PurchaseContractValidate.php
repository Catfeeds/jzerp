<?php
namespace app\admin\validate;
use think\validate;

class PurchaseContractValidate extends validate{
    protected $rule =   [
        'name'  => 'require',
        'contract_money' => 'require',
        'obj_id' => 'require|number',    
        'start_time' => 'require|date',    
        'end_time' => 'require|date',               
        'supplier_id' => 'require|number',     
        'condition' => 'require',     
        'item' => 'require',     
        'contract_type' => 'number',     
        'pay_type' => 'number',     
        'clear_type' => 'number',     
    ];
    
    protected $message  =   [
        'name.require' => '合同名称不能为空',
        'contract_money.require'     => '合同金额不能为空',
        'obj_id.require'   => '所属项目不能为空',
        'obj_id.number'   => '请选择项目',
        'start_time.require'   => '开始时间不能为空',
        'start_time.date'   => '开始时间必须为有效日期',
        'end_time.require'   => '结束时间不能为空',
        'end_time.date'   => '结束时间必须为有效日期',
        'supplier_id.require'   => '供应商不能为空',
        'supplier_id.number'   => '供应商格式不正确',
        'condition.require'   => '付款条件不能为空',
        'item.require'   => '主要条款不能为空',
        'contract_type.number'   => '请选择合同类型',
        'clear_type.number'   => '请选择结算方式',
    ];
}