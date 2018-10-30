<?php
namespace app\admin\validate;
use think\validate;

class LaborPlanValidate extends validate{
    protected $rule =   [
        'obj_id'  => 'require',
        'maker'   => 'require|number',
        'date' => 'require|date',    
    ];
    
    protected $message  =   [
        'obj_id.require' => '项目名称不能为空',
        'maker.require'     => '申请人不能为空',
        'maker.number'   => '申请人格式错误',
        'date.require'   => '日期不能为空',
        'date.date'   => '日期必须为有效日期',
    ];
}