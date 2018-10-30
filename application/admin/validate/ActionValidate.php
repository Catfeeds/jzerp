<?php
namespace app\admin\validate;
use think\validate;
class ActionValidate extends validate{
	protected $rlues = [
		    ['name', 'require', '唯一标识不能为空'],
		    ['title', 'require', '标题不能为空'],
		    ['remark', 'require', '行为描述不能为空'],
		    ['log', 'require', '日志规则不能为空'],
	];
}
