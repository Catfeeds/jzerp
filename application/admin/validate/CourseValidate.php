<?php
namespace app\admin\validate;
use think\validate;
class CourseValidate extends validate{
    //定义验证规则
    protected $rule = [
        'course_time' => 'date',
        
    ];

    protected $message  =   [
        'course_time.date'  => '创建时间格式不正确！',
    ];
        
}
