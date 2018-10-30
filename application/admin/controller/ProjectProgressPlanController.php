<?php
namespace app\admin\controller;
use app\admin\model\ProjectProgressPlanModel;
use app\admin\model\ProjectProgressDetailsModel;
use think\Db;

	//进度计划
	class ProjectProgressPlanController extends FlowcommonController{
		public function index(){
			$keywords = [['title' => 'project_progress_plan.title'], ['ptitle' => 'project_list.title']];
			$sort = ['create_time'];
			$bet = [
				'create_time' => [
					's_time',
					'e_time',
					'time',
					'project_progress_plan.create_time'
				]
			];
			$result = $this -> page_parm_request($keywords, $sort, $bet);
			$list = ProjectProgressPlanModel::getList($result['map'], $result['order'], $result['page_parm']);
			return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
		}
		
		public function add($id = null){
			if($this -> request -> isPost()){
				$data = $this -> request -> post();
				$rule = [
					['title', 'require', '标题不能为空'],
					['date', 'require', '日期不能为空'],
					['obj_id', 'require|number', '所属项目不能为空|所属项目不能为空']
				];
				$r = $this -> validate($data, $rule);
				if(true !== $r){
					return ajax(0, $r);
				}
				Db::startTrans();
				try{
					if(empty($data['id'])){
						if(ProjectProgressPlanModel::add($data)){
							$code = 1; 
							$msg = '新增成功'; 
							Db::commit();
						} else {
							$code = 0; 
							$msg = '新增失败'; 
							Db::rollback();
						}
					} else {
						$d = MakeData($data, [], ['details_id' => 'id'], ['pid' => $data['id']]);
							$model = new ProjectProgressDetailsModel;
							if(ProjectProgressPlanModel::update($d['main']) && $model -> saveAll($d['details'])){
								Db::commit();
								$code = 1; 
								$msg = '编辑成功'; 
							} else {
								Db::rollback();
								$code = 0; 
								$msg = '编辑失败'; 
							}
						}
					} catch(\Exception $e) {
						echo $e;
						 Db::rollback();
						 $code = 0; 
						 $msg = '系统错误,请联系管理员!'; 
					}
				return ajax($code, $msg);
			}
			if($id){
				$data = ProjectProgressPlanModel::getOne($id);
			} else {
				$data = [];
			}
			$this -> assign('obj_id', ProjectList(['status' => 1], true));
			return $this -> fetch('sponsor/sponsor_list', ['data' => $data]);
		}
		
		public function details($id = null){
		   $data = ProjectProgressPlanModel::getOne($id);
			$this -> assign('obj_id', ProjectList(['status' => 1], true));
		   
			return $this->fetch('sponsor/details',['data'=>$data]);
		
		}
		
		//项目进度明细
		
//		public function progress($args = []){
//			
//			$m = new ProjectProgressDetailsModel;
//			$m -> saveAll($args);
//			
//		}
		public function delete($ids = null){
			if($ids == null){
				return ajax(0, '缺少参数');
			}
			if(ProjectProgressPlanModel::destroy($ids)){
				return ajax(1, '删除成功');
			} else {
				return ajax(0, '删除失败');
			}
		}
	}