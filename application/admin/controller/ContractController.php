<?php
namespace app\admin\controller;
use app\admin\model\ContractModel;
class ContractController extends FlowcommonController{
	public function index(){
			$keywords = ['title'];
			$sort = ['create_time'];
			$bet = [
				'create_time' => [
					's_time',
					'e_time',
					'time',
					
				]
			];
			$result = $this -> page_parm_request($keywords, $sort, $bet);
		$list = ContractModel::getList($result['map'], $result['order'], $result['page_parm']);
		
		return $this -> fetch('', ['list' => $list, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
	}
		public function DowmLoadExcels(){
		$list = ContractModel::getList();
			
		$excel = new AdminFilesController();
		$excel -> DownloadExcel(['编号', '合同名称', '客户名称', '客户电话', '金额', '开始时间', '结束时间'], $list,['number', 'title', 'c_name', 'c_phone','bigmoney','s_time','e_time']);
		

	}
	public function add($id = ''){
		if($this -> request -> isAjax()){
			$data = $this -> request -> post();
			$data['s_time'] = strtotime($data['s_time']);
			$data['e_time'] = strtotime($data['e_time']);
			if($data['s_time'] > $data['e_time']){
				return ajax(0, '开始时间不得大于结束时间');
			}
			$r = $this -> validate($data, 'contractValidate');
			if(true !== $r){
				return ajax(0, $r);
			}
			if(isset($data['id'])){
				$m = new ContractModel;
				if($m -> save($data, ['id' => $data['id']])){
					return ajax(1, '编辑成功');
				} else {
					return ajax(0, '编辑失败');
				}
			} else {
				if($c = ContractModel::create($data)){
					flow_approval($c->id);
					return ajax(1, '新增成功');
				} else {
					return ajax(0, '新增失败');
				}
			}
			
			
		}
		else {
			$data = [];
			if($id){
				$data = ContractModel::getOne($id);
			}
			$this -> assign('pay_type', configType('pay'));
			$this -> assign('finish_type', configType('finish_type'));
			$this -> assign('money_type', configType('currency'));
			
			return $this->fetch('sponsor/sponsor_list', ['data' => $data]); 
		}
		
	}
	public function details($id = ''){
		if($id){
			
			$this -> assign('pay_type', configType('pay'));
			$this -> assign('finish_type', configType('finish_type'));
			$this -> assign('money_type', configType('currency'));
			return $this->fetch('sponsor/details', ['data' => ContractModel::getOne($id)]); 
		
		} else {
			return json(ajax(0, '参数错误'));
		}
	}
	
	public function delete($ids = []){
		if($ids){
			if(ContractModel::destroy($ids)){
				return ajax(1, '删除成功');
			} else {
				return ajax(0, '删除失败');
			}
		} else {
			return ajax(0, '参数错误');
		}
	}
}
