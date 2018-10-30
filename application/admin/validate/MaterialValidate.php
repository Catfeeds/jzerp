<?php
namespace app\admin\validate;
use think\validate;

class MaterialValidate extends validate{
    protected $rule =   [
        'name'  => 'require',
       	'specifications' => 'require',    
        'metering' => 'require', 
        'house_id' => 'require|number',   
    ];
    
    protected $message  =   [
        'name.require' => '物品名称不能为空',
        'specifications.require'  => '规格型号错误',
        'metering.require'        => '计量单位不能为空',  
        'house_id.number' => '请选择所属仓库',	   
    ];
}