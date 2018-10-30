<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/31 0031
 * Time: 09:32
 */

namespace app\admin\validate;

use think\Validate;

class PersonnelBaseValidate extends Validate
{
    protected $rule=[
        'name'=>'require',
        'coding'=>'alphaDash',
        'order'=>'number',
    ];

    protected $message  =   [
        'name.require' => '名称不能为空',
        'coding.alphaDash'   => '编码只能是数字、英文、_、-',
        'order.number'=>'顺序只能是整数'
    ];
}