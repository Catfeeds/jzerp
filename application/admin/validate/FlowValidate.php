<?php
namespace app\admin\validate;
use think\validate;
class FlowValidate extends validate{
    //定义验证规则
    protected $rule = [
        'title|流程名称' => 'require|unique:flow',
        'form_id|表单类型'      => 'require',
        'flow_type|流程类型'     => 'require',
    ];

    protected $message  =   [
        'title.require' => '流程名称不能为空',
        'title.unique'     => '流程名称重复',
        'form_id.require'   => '表单类型不能为空',
        'flow_type.require'  => '流程类型不能为空',
    ];
}
