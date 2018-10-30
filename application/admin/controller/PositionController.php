<?php
namespace app\admin\controller;
use app\admin\model\PositionModel;
use app\admin\model\BalaceIndexModel;
use app\admin\model\AdminFilesModel;

//职位
class PositionController extends AdminController{
	
	public function index($id = null){
		if($this -> request -> isPost()) {
			$data = $this -> request -> post();
			$result = $this -> validate($data, 'PositionValidate');
			if(true !== $result) {
				return ajax(0, $result);
			}
			$position = new PositionModel;
			if(isset($data['id'])){
				$model = $position -> update($data);
				$msg = '修改';
			} else {
				$model = $position -> save($data);
				$msg = '添加';
			}
			if($model){
				return ajax(1, $msg.'成功', url('cate'));
			} else {
				return ajax(0, $msg.'失败', url('cate'));
			}

		}
		$data = PositionModel::getAllCate();
		$list = $this -> tree($data, 0);
		return $this -> fetch('', ['tree' => $list]);
		
	
		
	}
	
	public function CateGetOne($id = null){
		if(is_null($id)){
			return ajax(0, '参数错误');
		} else {
			$cate = PositionModel::getOne($id);
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
				$v['text'] = $v['name'];
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
		$m = PositionModel::destroy($ids);
		if($m){
			return ajax(1, '删除成功');
		} else {
			return ajax(0, '删除失败');
		}
	}
}

