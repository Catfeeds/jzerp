<?php
namespace app\admin\validate;
use think\validate;
class ConstructionQuantityValidate extends validate{
    //定义验证规则
    protected $rule = [
        'date|日期' => 'require',
        'number|编号' => 'require',
        'obj_id|项目名称' => 'require',
        'maker|填报人' => 'require',
        'part|检查部位' => 'require',
        'mes|检查建议' => 'require',
    ];

    protected $message  =   [
        'date.require'  => '日期不能为空！',
        'number.require'   => '编号不能为空!',
        'obj_id.require'  => '项目名称不能为空！',
        'maker.require'  => '质检员不能为空！',
        'part.require'  => '检查部位不能为空！',
        'mes.require'  => '检查建议不能为空！',
    ];
}
