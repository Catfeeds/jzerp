<?php
namespace app\admin\validate;
use think\validate;
class ConstructionBuildLogValidate extends validate{
    //定义验证规则
    protected $rule = [
        'date|日期' => 'require',
        'number|编号' => 'require',
        'obj_id|项目名称' => 'require',
        // 'maker|填报人' => 'require',
    ];

    protected $message  =   [
        'date.require'  => '日期不能为空！',
        'number.require'   => '编号不能为空!',
        'obj_id.require'  => '项目名称不能为空！',
        // 'maker.require'  => '质检员不能为空！',
    ];
        
}
