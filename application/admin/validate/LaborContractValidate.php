<?php
namespace app\admin\validate;
use think\validate;

class LaborContractValidate extends validate{
    protected $rule =   [
        'name'        => 'require',
        'obj_id'      => 'require|number',
        'contract_type'      => 'number',
        'date'        => 'require|date',
        'supplier_id' => 'require',
        'start_time'  => 'require|date',
        'end_time'    => 'require|date',
        'condition'   => 'require',
        'item'        => 'require',   
    ];
    
    protected $message  =   [
        'name.require'        => '合同名称不能为空',
        'obj_id.require'      => '所属项目不能为空',
        'obj_id.number'      => '请选择所属项目',
        'contract_type.number'      => '合同类型不能为空',
        'date.require'        => '日期不能为空',
        'date.date'           => '日期必须为有效日期',
        'supplier_id.require' => '劳务班组不能为空',
        'start_time.require'  => '开始时间不能为空',
        'start_time.date'  => '开始时间格式错误',
        'end_time.require'    => '结束时间不能为空',
        'end_time.date'    => '结束时间格式错误',
        'condition.require'    => '付款条件不能为空',
        'item.require'    => '主要条款不能为空',
    ];
}