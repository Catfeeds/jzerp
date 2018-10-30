<?php
//资产

namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
class ProjectListModel extends Model {
	use SoftDelete;
	protected $name = 'project_list';
	protected $autoWriteTimestamp = true;
	
	//获取所有数据
	public function getAll($map = [], $order = ''){
		return self::view('project_list')
		-> view('personnel_user_basic', 'nickname,mobile', 'project_list.dev_name=personnel_user_basic.id', 'left')
		-> where($map)
		-> order($order) 
		-> select();
	}
	public static function getList($map = [], $order = '', $parm = []){
		return self::view('project_list')
		-> view('personnel_user_basic', 'nickname,mobile', 'project_list.dev_name=personnel_user_basic.id', 'left')
		-> where($map)
		-> order($order) 
		-> paginate('', false, $parm);
	}
	
	public static function getOne($id = ''){
		if(!$id){
			return ajax(0, '参数错误');
		}

	return self::view('project_list')
		-> view('personnel_user_basic', 'nickname dev_named', 'project_list.dev_name=personnel_user_basic.id', 'left')
//		-> view('personnel_user_basic p', 'nickname leaderd', 'project_list.leader=p.id', 'left')
//		-> view('system_organization','title partd', 'project_list.part=system_organization.id')
		-> where(['project_list.id' => $id])
		-> find();
		
	}
//  protected function getStatusAttr($value,$data)
//  {
//      return $this -> state[$value];
//  }
    protected function getEndTimeAttr($value,$data)
    {
        return date('Y-m-d', $value);
    }
    protected function getStartTimeAttr($value,$data)
    {
        return date('Y-m-d', $value);
    }
    protected function getCreateTimeAttr($value,$data)
    {
        return date('Y-m-d', $value);
    }
   protected function getDateAttr($value,$data)
    {
        return date('Y-m-d', $data['date']);
    }
}
