<?php
namespace app\admin\validate;
use think\validate;
class TypeValidate extends validate{
    //定义验证规则
    protected $rule = [
        'name|类型名称' => 'require|unique:type_all',
        'indentify|类型标识'=>'require|alphaDash',
    ];

    protected $message  =   [
        'name.require'  => '类型名称不能为空！',
        'name.unique'   => '类型名称已被使用!',
        'indentify.require' =>'类型标识不能为空!',
        'indentify.alpha'=>'类型标识由字母下划线组成！'
    ];
}
