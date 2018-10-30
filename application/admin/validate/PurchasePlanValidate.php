<?php
namespace app\admin\validate;
use think\validate;

class PurchasePlanValidate extends validate{
    protected $rule =   [
        'title'  => 'require',
        'obj_id'  => 'require|number',
        'maker'   => 'require|number',
        'date' => 'require|date',    
    ];
    
    protected $message  =   [
        'title.require' => '计划名称不能为空',
        'obj_id.require' => '项目名称不能为空',
        'obj_id.number' => '请选择项目名称',
        'maker.require'     => '申请人不能为空',
        'maker.number'   => '申请人格式错误',
        'date.require'   => '日期不能为空',
        'date.date'   => '日期必须为有效日期',
    ];
}