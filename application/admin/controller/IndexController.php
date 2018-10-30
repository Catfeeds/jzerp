<?php

namespace app\admin\controller;
//use think\Session;
use app\admin\model\IndexAllocationModel;

class IndexController extends AdminController
{
    public function index()
    {
        return $this -> fetch();
    }

    public function home()
    {
    	
    	$d = IndexAllocationModel::where(['user_id' => UID]) -> field('content,active') -> find();
    	$this -> assign('data', isset($d['content']) ? $d['content'] : '[]');
    	$this -> assign('dataList', empty($d['active']) ? [] : $this -> getTypeList(json_decode($d['active'])));
        return $this -> fetch();
    }

	//首页配置
	public function allocation(){
		
		if($this -> request -> isAjax()) {
			$data = $this -> request -> post();
			if(count(IndexAllocationModel::getOne(UID)) == 0) {
				if(IndexAllocationModel::create($data)) {
					return ajax(1, '配置成功');
				} else {
					return ajax(0, '配置失败');
				}
			} else {
				if(IndexAllocationModel::where(['user_id' => UID]) -> update($data)) {
					return ajax(1, '编辑成功');
				} else {
					return ajax(0, '编辑失败');
				}
			}
			} else {
				$r = IndexAllocationModel::where(['user_id' => UID]) -> field('content,row') -> find();
	    		$this -> assign('data', $r['content']);
	    		$this -> assign('row', $r['row']);
				return $this -> fetch();
			}
	}
	public function getTypeList($type = []){
		$data_list = [];
		static $func_type;
		$func_type= [
			'notice' => function(){
				return [];
			},
			'meeting' => function(){
				return [];
			},
			'flow' => function(){
				return [
					[
						'title' => '北方有王老吉,绝世而独立(flow)',
						'time'  => '2017-02-12'
					],	[
						'title' => '北方有王老吉,绝世而独立(flow)',
						'time'  => '2017-02-12'
					],	[
						'title' => '北方有王老吉,绝世而独立(flow)',
						'time'  => '2017-02-12'
					],
				];
			},
		];
		
		foreach($type as $v){
			$data_list[$v] = isset($func_type[$v]) ? $func_type[$v]() : [];
		}
		
		return $data_list;

	}
}
	
	