<?php
namespace app\admin\validate;
use think\validate;
class ConstructionSubpickClearValidate extends validate{
    //定义验证规则
    protected $rule = [
        'name|结算名称' => 'require',
        'obj_id|所属项目' => 'require',
        'work|分包单位' => 'require',
        'maker|填报人' => 'require',
        'count_money|结算金额' => 'require',
        'title|清单子目' => 'require',
        'fact_num|实际完成数量' => 'require',
        'fact_price|实际执行价格' => 'require',

    ];

    protected $message  =   [
        'name.require'  => '结算名称不能为空！',
        'obj_id.require'   => '所属项目不能为空!',
        'work.require'  => '分包单位不能为空！',
        'maker.require'  => '填报人不能为空！',
        'count_money.require'  => '结算金额不能为空！',
        'title.require'  => '清单子目不能为空！',
        'fact_num.require'  => '实际完成数量不能为空！',
        'fact_price.require'  => '实际执行价格不能为空！',

    ];
        
}
