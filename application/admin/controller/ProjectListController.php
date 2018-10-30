<?php
namespace app\admin\controller;
use app\admin\model\ProjectListModel;
use app\admin\model\ProjectTypeModel;
use app\admin\model\Organization;
use app\admin\model\ProjectQualityModel;

//项目
class ProjectListController extends FlowcommonController{
	public function index(){
		$keywords = [['nickname' => 'personnel_user_basic.nickname'], 'title'];
		$sort = ['create_time', 'end_time', 'start_time'];
		$bet = [
			'create_time' => [
				's_time',
				'e_time',
				'time',
				'project_list.create_time'
			]
		];
		$result = $this -> page_parm_request($keywords, $sort, $bet);
		$list = ProjectListModel::getList($result['map'], $result['order'], $result['page_parm']);
		return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page'], 'result' => $result]);
	}
	//导出Excel 
	//$data 搜索条件
	public function DowmLoadExcels($data = '[]'){
		$result = json_decode($data, true);
		$list = ProjectListModel::getList($result['map'], $result['order'], $result['page_parm']);
		$excel = new AdminFilesController();
		$excel -> DownloadExcel(['编号', '项目', '开始日期', '结束日期', '联系人', '联系电话', '状态', '创建时间'], $list, ['number', 'title', 'start_time', 'end_time','nickname','dev_phone','status', 'create_time']);
		

	}
	
	public function add($id = null){
		if($this -> request -> isPost()){
			$data = $this -> request -> post();
			
			$result = $this -> validate($data, 'ProjectListValidate');
			if($result !==  true){
				return ajax(0, $result);
			}
			$data['date'] = strtotime($data['date']);
			$data['end_time'] = strtotime($data['end_time']);
			$data['start_time'] = strtotime($data['start_time']);
			
			if($data['start_time'] > $data['end_time']){
				return ajax(0, '开始日期不得大于结束日期');
			}
			if(empty($data['id'])){
				$plist = new ProjectListModel;
				if($plist -> allowField(true) -> save($data)){
					//审批
					flow_approval($plist->id);	
					return ajax(1, '新增成功');
				} else {
					return ajax(0, '新增失败');
				}
			} else {
				$model = new ProjectListModel;
				if($model ->  allowField(true) -> save($data, ['id' => $data['id']])){
					return ajax(1, '编辑成功');
				} else {
					return ajax(0, '编辑失败');
				}
			}
		}
		if($id){
			$data = ProjectListModel::getOne($id);
		} else {
			$data = [];
		}
		//项目分类
		$type = ConfigType('project_type');
		$this -> assign('obj_type', $type);
		//所属部门
		$this -> assign('part', Organization::column('id,title'));
		//质量等级
		$this -> assign('quality', ConfigType('project_grade'));
		return $this->fetch('sponsor/sponsor_list', ['data' => $data]); 
	}
	
	
	public function details($id = null){
	    $data = ProjectListModel::getOne($id);
	    $type = ConfigType('project_type');
		$this -> assign('obj_type', $type);
		//所属部门
		$this -> assign('part', Organization::column('id,title'));
		//质量等级
		$this -> assign('quality', ConfigType('project_grade'));
		return $this->fetch('sponsor/details',['data'=>$data]);
	
	}
	
	public function delete($ids = null){
		if($ids == null){
			return ajax(0, '缺少参数');
		}
		if(ProjectListModel::destroy($ids)){
			return ajax(1, '删除成功');
		} else {
			return ajax(0, '删除失败');
		}
	}
}