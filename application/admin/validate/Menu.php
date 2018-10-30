<?php
namespace app\admin\validate;

use think\Validate;

/**
 * 节点验证器
 * @package app\admin\validate
 */
class Menu extends Validate
{
    //定义验证规则
    protected $rule = [
        'pid|所属节点'    => 'require',
        'title|节点标题'  => 'require',
    ];

    //定义验证提示
    protected $message = [
        'pid.require'    => '请选择所属节点',
    ];
}
