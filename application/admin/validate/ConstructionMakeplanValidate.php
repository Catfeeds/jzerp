<?php
namespace app\admin\validate;
use think\validate;
class ConstructionMakeplanValidate extends validate{
    //定义验证规则
    protected $rule = [
        'date|日期' => 'require',
        'number|编号' => 'require',
        'obj_id|项目名称' => 'require',
        // 'maker|填报人' => 'require',
        'name|交底名称' => 'require',
        'address|交底地址' => 'require',
        'tell_man|交底人' => 'require',
        'btell_man|被交底人' => 'require',
        'btell_work|被交底单位' => 'require',
    ];

    protected $message  =   [
        'date.require'  => '日期不能为空！',
        'number.require'   => '编号不能为空!',
        'obj_id.require'  => '项目名称不能为空！',
        // 'maker.require'  => '质检员不能为空！',
        'address.require'  => '交底地址不能为空！',
        'name.require'  => '交底名称不能为空！',
        'tell_man.require'  => '交底人不能为空！',
        'btell_man.require'  => '被交底人不能为空！',
        'btell_work.require'  => '被交底单位不能为空！',
    ];
        
}
