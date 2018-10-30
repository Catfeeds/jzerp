<?php
namespace app\admin\validate;
use think\validate;

class PositionValidate extends validate{
    protected $rule = [

        ['name','require','职位名称不能为空！'],
        ['pid','require','上级职位不能为空！'],
    ];
}
