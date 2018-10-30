<?php
namespace app\admin\validate;
use think\validate;

class ProjectCostCompileValidate extends validate{
    protected $rule = [

        ['title','require','名称不能为空！'],
        ['number','require','编号不能为空！'],
        ['maker','require','制定人不能为空！'],
        ['date','require|date','日期不能为空'],
        ['obj_id','require','所属项目不能为空'],
      
    	
    ];
}
