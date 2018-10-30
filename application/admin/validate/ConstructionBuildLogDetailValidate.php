<?php
namespace app\admin\validate;
use think\validate;
class ConstructionBuildLogDetailValidate extends validate{
    //定义验证规则
    protected $rule = [
        'part|施工班组' => 'require',
        'people|工作人数' => 'require',
        'mes|施工内容' => 'require',
        // 'maker|填报人' => 'require',
    ];

    protected $message  =   [
        'part.require'  => '施工班组不能为空！',
        'people.require'   => '工作人数不能为空!',
        'mes.require'  => '施工内容不能为空！',
        // 'maker.require'  => '质检员不能为空！',
    ];
        
}
