<?php
namespace app\admin\controller;
use app\admin\model\Organization;
use app\admin\model\Personnel;
use  app\admin\model\PositionModel;

class ChoosePersonController extends AdminController{
	public $person = [];	//人选
	public $onlyOrganizations = null; 	//是否只请求部门
	public $initperson = [];
	public $checked = [];
	//是否请求职位
	public $position = null;
	public function setPerson(){
		$person = Personnel::field('id,nickname,group,position')->select();
		
		if($this -> position){
			$key = 'position';
		} else {
			$key = 'group';
		}
		foreach($person as &$p){
			$p = $p -> toArray();	
     		if(!isset($this -> person[$p[$key]])){
				$this -> person[$p[$key]] = [];
			}
			if(!$this -> onlyOrganizations && in_array($p['id'], $this -> checked)){
				$p['state'] = [];
				$p['state']['selected'] = true;
			}
			$p['icon'] = 'iconfont icon-bumen';
			$p['text'] = $p['nickname'];
			$p['id'] = 'p_'.$p['id'];
			$this -> initperson[$p['id']] = $p;
			$this -> person[$p[$key]][] = $p;
			
		}
		
	}
        
    public function index( $onlyOrganization = 'false', $checked = [], $position = false){
    	$this -> checked = $checked;
		if(is_string($position)) {
    		$this -> position = $position === 'false' ? false : true;
    	} else {
    		$this -> position = $position;
    	}
    	if(is_string($onlyOrganization)) {
    		$this -> onlyOrganizations = $onlyOrganization === 'false' ? false : true;
    	} else {
    		$this -> onlyOrganizations = $onlyOrganization;
    	}
		if(!$this -> onlyOrganizations){
			$this ->setPerson();
		}
		if($this -> position){
    		$o = PositionModel::field('id,name,pid')->select();
		} else {
    		$o = Organization::field('id,title,pid')->select();
    	}
    	$persons = $this -> personTree($o);
    	return [
    		'person' => $persons,
    		'initPerson' => $this -> initperson,
    		'initOrgan'	=> $o,
    		
    	];
    }
	public function personTree($data = [], $id = 0){
		$tree = [];
		$onlyOrganization = $this -> onlyOrganizations;
		foreach($data as &$v){
			
			if($v['pid'] == $id){
				$v['text'] = isset($v['title']) ? $v['title'] : $v['name'];
				$arr = array('opened' => true);
				if($onlyOrganization && in_array($v['id'], $this -> checked)){
					$arr = array_merge($arr, array('selected' => true));
				}
				if(!$onlyOrganization){
					$arr = array_merge($arr, array('disabled' => true));
					
				}
				$v['state'] = $arr;
				$v['icon'] = 'iconfont icon-bumen2';
				$v['children'] = [];
				if(!$onlyOrganization && isset($this -> person[$v['id']])){
					
					$v['children'] = array_merge($v['children'], $this -> person[$v['id']]);
				}
				$v['children'] = array_merge($v['children'], $this -> personTree($data, $v['id']));
				$v['id'] = 'o_'.$v['id'];
				$tree[] = $v;
			}
		}
		return $tree;
	}
}
