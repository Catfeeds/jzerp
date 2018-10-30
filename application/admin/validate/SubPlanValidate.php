<?php
namespace app\admin\validate;
use think\validate;

class SubPlanValidate extends validate{
    protected $rule =   [
        'title'  => 'require',
        'number'  => 'require',
        'obj_id'  => 'require|number',
        'date' => 'require|date',    
        'maker'   => 'require|number',
    ];
    
    protected $message  =   [
        'title.require' => '计划名称不能为空',
        'number.require' => '计划编号不能为空',
        'obj_id.require' => '项目名称不能为空',
        'obj_id.number' => '请选择项目',
        'maker.require'     => '申请人不能为空',
        'maker.number'   => '申请人格式错误',
        'date.require'   => '日期不能为空',
        'date.date'   => '日期必须为有效日期',
    ];
}