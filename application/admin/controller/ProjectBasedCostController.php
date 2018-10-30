<?php
namespace app\admin\controller;
use app\admin\model\ProjectBasedCostModel;
use app\admin\model\ProjectBasedCostDetailsModel;
use think\Db;

//物料需求总计划

class ProjectBasedCostController extends FlowcommonController{
	public function index(){
			$keywords = [['title' => 'project_based_cost.title'], ['obj_title' => 'project_list.title']];
			$sort = ['create_time'];
			$bet = [
				'create_time' => [
					's_time',
					'e_time',
					'time'
				]
			];
			$result = $this -> page_parm_request($keywords, $sort, $bet);
			$list = ProjectBasedCostModel::getList($result['map'], $result['order'], $result['page_parm']);
			return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page'], 'result' => $result]);
	}
	//导出Excel 
	
	public function DowmLoadExcels($data = '[]'){
		$result = json_decode($data, true);
		$list = ProjectBasedCostModel::getList($result['map'], $result['order'], $result['page_parm']);
		
		$excel = new AdminFilesController();
		$excel -> DownloadExcel(['编号', '名称', '制定人', '日期', '项目', '状态', '创建时间'], $list,['number', 'based_title', 'nickname', 'date','obj_title','status', 'create_time']);
		

	}
	public function add($id=''){
			if($this -> request -> isPost()){
				try{
					Db::startTrans();
					$data = $this -> request -> post();
					$v = $this -> validate($data, 'ProjectBasedCostValidate');
					if($v !== true){
						return ajax(0, $v);
					}
					if(empty($data['id'])){
						if($c = ProjectBasedCostModel::add($data)){
						
							flow_approval($c->id);	
							Db::commit();
							return ajax(1, '新增成功');
						} else {
							
							Db::rollback();
							
							return ajax(0, '新增失败');
						}
					} else {
						
						$model = new ProjectBasedCostModel;
						$modelDetails = new ProjectBasedCostDetailsModel;
						$result = MakeData($data, ['materialsd'], ['details_id' => 'id']);
						
						if($model -> allowField(true) -> save($result['main'], ['id' => $result['main']['id']])&& $modelDetails -> allowField(true) -> saveAll($result['details'])){
							
							Db::commit();
							return ajax(1, '编辑成功');
						} else {
							Db::rollback();
							return ajax(0, '编辑失败');
						}
					}
				
				} catch (\Exception $e){
					
					Db::rollback();
				}
				
			} else {
				if($id){				
					$data  =  ProjectBasedCostModel::getOne($id);
				} else {
					$data = [];
				}
			
				$this -> assign('obj_id', projectList(['status' => 1], true));
				return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);
			}
			
	}
		public function details($id = null){
		    $data = ProjectBasedCostModel::getOne($id);
			$this -> assign('obj_id', projectList(['status' => 1], true));
		   
		   return $this->fetch('sponsor/details',['data'=>$data]);
		
		}
	public function delete($ids = ''){
		if(!$ids){
			return ajax(0, '参数错误');
		}
		if(ProjectBasedCostModel::destroy($ids)){
			return ajax(1, '删除成功');
			
		} else {
			return ajax(0, '删除失败');
			
		}
	}
	
}
