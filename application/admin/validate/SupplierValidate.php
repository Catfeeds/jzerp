<?php
namespace app\admin\validate;
use think\validate;

class SupplierValidate extends validate{
	protected $rule =[

		'supplier_name|供应商名称' => 'require|unique:supplier_basic_mes',
		'supplier_type|供应商类型'=> 'require',
    	'supplier_email|邮箱'     => 'email|unique:supplier_basic_mes',
		'supplier_industry|供应商所属行业'=> 'require',
		'supplier_number|供应商编号'=> 'require',
		'supplier_tell|电话'=> 'require|regex:^1\d{10}',
		'supplier_area|供应商区域'=> 'require',
		'supplier_size|供应商规模'=> 'require',
		'supplier_source|供应商来源'=> 'require',		 
		'supplier_leader|负责人'=> 'require',		 
		'supplier_level|供应商等级'=> 'require',	
		'phone|手机'=> 'require|regex:^1\d{10}',	 
    ];
    protected $message  =   [
        'supplier_name.require'  => '供应商名称不能为空！',
        'supplier_name.unique'   => '供应商名称已被使用!',
        'supplier_type.require' =>'供应商类型不能为空!',
    	'supplier_email.require'    => '邮箱不能为空',
        'supplier_email.email'      => '邮箱格式不正确',
        'supplier_email.unique'     => '该邮箱已存在',
        'supplier_tell.regex'     => '电话不正确',
        'phone.regex'     => '手机不正确',
    ];
}
