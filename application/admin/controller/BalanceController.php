<?php
namespace app\admin\controller;
use app\admin\model\BalaceCateModel;
use app\admin\model\BalaceIndexModel;
use app\admin\model\AdminFilesModel;
//资产
	class BalanceController extends AdminController{
		//资产管理
		public function index(){
			$keyword = ['code', 'title'];
			//假装排序与搜索有重名的示例, 其中 create_time作为重名处理, update_time 不重名
			//示例参数  $sort = [['create_time' => 'create_times desc'], 'update_time'] asc为默认排序, 可不传, 不传则默认desc
			$sort = [['create_time' => 'create_times asc']];
			$between = ['create_time' => ['s_time', 'e_time', 'time']];
			$result = $this -> page_parm_request($keyword, $sort, $between);
			$data = BalaceIndexModel::getList($result['map'], $result['order'], $result['page_parm']);
			return $this -> fetch('', ['data' => $data, 'keywords' => $result['page_parm']['query'], 'page' => $result['page_parm']['page']]);
			
		}
		//添加和编辑
		public function lists_add($id = '') {
			if($this -> request -> isPost()){
				$data = $this -> request -> Post();
				$r = $this -> validate($data, 'BalanceIndexValidate');
				if(true !== $r){
					return ajax(0, $r);
				}
				$data['end_time'] = strtotime($data['end_time']);
				$data['verification_date'] = strtotime($data['verification_date']);
				$data['invoice_date'] = strtotime($data['invoice_date']);
				$data['expir'] = strtotime($data['expir']);
				$balace = new BalaceIndexModel;
				if(empty($data['id'])) {
					$m = $balace ->allowField(true) -> save($data);
					$msg = '新增';
				} else {
					$m = $balace -> where(['id' => $data['id']]) -> update($data);
					$msg = '编辑';
				}
				if($m) {
					return ajax(1, $msg.'成功');
				} else {
					return ajax(0, $msg.'失败');
				}
				
			}
			$data = BalaceCateModel::getAllCate();
			$list = $this -> tree($data, 0);
			if($id === ''){
				$t = date("Y-m-d", time());
				$data = [
				    "title" =>  "",
				    "code" =>  "",
				    "cate" => '',
				    "spec" => "",
				    "random" =>  "",
				    "exact" => "",
				    "maker" =>  "",
				    "number" =>  "",
				    "purchaser" =>  "",
				    "end_time" => $t,
				    "age_limit" => '',
				    "remaining" => '',
				    "verification" =>  "",
				    "cycle" => '',
				    'invoice_date' => $t,
				    'invoice_moeny' => '',
				    "verification_number" => "",
				    "verification_date" => $t,
				    "result" =>  "",
				    "expir" => $t,
				    "recipient" => '',
				    "duty" => '',
				    "status" => '',
				    "note" => '',
				    "file" => '',
				];
			} else {
				$data = BalaceIndexModel::getOne($id);
				$files = explode(',', $data['file']);
				$map = [];
				$map['id'] = ['in', $files];
				$files = AdminFilesModel::where($map) -> select();
				$this -> assign('files', $files);
			}
			$icon = getIcon();
			$this -> assign('icon_list', $icon);
			return $this -> fetch('', ['data' => $data, 'tree' => $list]);
		}
		
		public function DowmLoadExcels(){
			$data = BalaceIndexModel::getList();
			$excel = new AdminFilesController();
			$excel -> DownloadExcel(['编码', '标题', '折旧年限(年)', '残值率(%)'], $data, ['code', 'title', 'age_limit', 'remaining']);
		}
		
		public function balance_delete($ids = '') {
			if(!$ids) {
				return ajax(0, '请传入要删除的项');
			}
			$m = BalaceIndexModel::destroy($ids);
			if($m){
				return ajax(1, '删除成功');
			} else {
				return ajax(0, '删除失败');
			}
		}
		
		//资产类别
		
		public function cate($id = null){
			if($this -> request -> isPost()) {
				$data = $this -> request -> post();
				
				$result = $this -> validate($data, 'BalanceCateValidate');
				if(true !== $result) {
					return ajax(0, $result);
				}
				$cate = new BalaceCateModel;
				if(isset($data['id'])){
					$model = $cate -> update($data);
					$msg = '修改';
				} else {
					$model = $cate -> save($data);
					$msg = '添加';
				}
				if($model){
					return ajax(1, $msg.'成功', url('cate'));
				} else {
					return ajax(0, $msg.'失败', url('cate'));
				}

			}
			$data = BalaceCateModel::getAllCate();
			$list = $this -> tree($data, 0);
			return $this -> fetch('', ['tree' => $list]);
			
		
			
		}
		
		public function CateGetOne($id = null){
			if(is_null($id)){
				return ajax(0, '参数错误');
			} else {
				$cate = BalaceCateModel::getOne($id);
				if($cate){
					return ajax(1, '获取成功', '', $cate);
				} else {
					return ajax(0, '获取失败');
				}
			}
		}
		
		public function tree($data, $id, $level = 0){
			$tree = [];
			$level ++;
			foreach($data as $v){
				if($v['pid'] == $id){
					$v['level'] = $level;
					$v['text'] = $v['title'];
					$v['state'] =  array('opened' => true);
					$v['children'] = $this -> tree($data, $v['id'],$level);
					
					$tree[] = $v;
				}
			}
			return $tree;
		}
		
		//分类删除
		public function delete($ids = ''){
			if($ids == '') {
				return ajax(0, '参数错误');
			}
			$m = BalaceCateModel::destroy($ids);
			if($m){
				return ajax(1, '删除成功');
			} else {
				return ajax(0, '删除失败');
			}
		}
	}

