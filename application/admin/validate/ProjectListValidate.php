<?php
namespace app\admin\validate;
use think\validate;

class ProjectListValidate extends validate{
    protected $rule = [

        ['title','require|unique:project_list','名称不能为空！|项目名称不能重名!'],
        ['start_time','require|date','开始时间必须为日期！'],
        ['end_time','require|date','结束时间必须为日期！'],
        ['area','require','所属区域不能为空'],
        ['address','require','项目地址不能为空'],
        ['pro_time','require|number|gt:0','工期不能为空|工期必须为数字|工期必须大于0'],
        ['quantities','require','工期量不能为空'],
        ['obj_cost','require|number','工程造价不能为空|工程造价必须为数字'],
        ['big_const','require','大写造价金额不能为空'],
        ['pre_profit','require|number','预计利润不能为空'],
        ['obj_type','require|number','项目类型不能为空|请选择项目类型'],
        ['quality','require|number','项目等级不能为空|请选择项目等级'],
        ['leader','require','项目跟踪人不能为空'],
        ['part','require','所属部门不能为空'],
        ['date','require','日期不能为空'],
        ['dev_organization','require','建设单位不能为空'],
        ['dev_name','require','联系人不能为空'],
        ['dev_phone','require|/^1[3-8]{1}[0-9]{9}$/','联系人电话不能为空|手机号格式不正确'],
        ['maker','require','立项人不能为空'],
    	
    ];
}
