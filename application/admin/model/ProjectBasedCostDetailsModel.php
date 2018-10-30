<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;
class ProjectBasedCostDetailsModel extends Model{
	use SoftDelete;
	protected $name = 'project_based_details';
	protected $autoWriteTimestamp = true;
	
}
