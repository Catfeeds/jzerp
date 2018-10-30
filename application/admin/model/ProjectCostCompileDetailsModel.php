<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;
class ProjectCostCompileDetailsModel extends Model{
	use SoftDelete;
	protected $name = 'project_compile_details';
	protected $autoWriteTimestamp = true;
	
}
