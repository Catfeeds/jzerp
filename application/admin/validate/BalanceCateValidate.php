<?php
namespace app\admin\validate;
use think\validate;

class BalanceCateValidate extends validate{
    protected $rule = [

        ['title','require','名称不能为空！'],
        ['pid','require','父类型不能为空！'],
        ['age_limit','require|number','折旧年限不能为空且为数字！'],
        ['remaining','require|number','残值率不能为空且为数字！'],
        ['cid','require','排序不能为空！'],
    ];
}
