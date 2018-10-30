<?php
namespace app\admin\controller;
use app\admin\model\ProjectCostCompileModel;
use app\admin\model\ProjectCostCompileDetailsModel;
use think\Db;

//成本编制

class ProjectCostCompileController extends FlowcommonController{
	public function index(){
			$keywords = [['title' => 'project_cost_compile.title'],  ['obj_title' => 'project_list.title']];
			$sort = ['create_time'];
			$bet = [
				'create_time' => [
					's_time',
					'e_time',
					'time',
					'project_cost_compile.create_time'
				]
			];
			$result = $this -> page_parm_request($keywords, $sort, $bet);
			$list = ProjectCostCompileModel::getList($result['map'], $result['order'], $result['page_parm']);
			return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query']]);
	}
	public function add($id=''){
			if($this -> request -> isPost()){
				$data = $this -> request -> post();
				$v = $this -> validate($data, 'ProjectCostCompileValidate');
				if($v !== true){
					return ajax(0, $v);
				}
				try {
						Db::startTrans();
						if(empty($data['id'])){
							if(ProjectCostCompileModel::add($data)){
								Db::commit();
								$code = 1;
								$msg = '新增成功';
							} else {
								Db::rollback();
								$code = 0;
								$msg = '新增失败';
							}
						} else {
					
							$d = MakeData($data, [], ['details_id' => 'id'], ['pid' => $data['id']]);
							$model = new ProjectCostCompileDetailsModel;
							if(ProjectCostCompileModel::update($d['main']) && $model -> saveAll($d['details'])){
								Db::commit();
								$code = 1; 
								$msg = '编辑成功'; 
							} else {
								Db::rollback();
								$code = 0; 
								$msg = '编辑失败'; 
							}
					
						
				}
					} catch(\Exception $e){
						Db::rollback();
						$code = 0; 
						$msg = '系统错误,请联系管理员'; 
						
					}
					return ajax($code, $msg);
			}
			if($id){				
				$data  =  ProjectCostCompileModel::getOne($id);
			} else {
				$data = [];
			}
			
			$this -> assign('obj_id', projectList(['status' => 1], true));
		return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);
	}
	public function details($id = null){
	    $data = ProjectCostCompileModel::getOne($id);

			$this -> assign('obj_id', projectList(['status' => 1], true));
	    
		return $this->fetch('sponsor/details',['data'=>$data]);
	
	}
	public function delete($ids = ''){
		if(!$ids){
			return ajax(0, '参数错误');
		}
		if(ProjectCostCompileModel::destroy($ids)){
			return ajax(1, '删除成功');
			
		} else {
			return ajax(0, '删除失败');
			
		}
	}
	
}
