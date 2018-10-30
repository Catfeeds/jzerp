<?php
namespace app\admin\controller;
use app\admin\model\FlowtypeModel;

//自定义表单     HJP
class FlowtypeController extends AdminController
{

	//流程类型
	public function index()
	{
		$keyword = ['title'];
		$sort = ['sort asc'];
		$result = $this -> page_parm_request($keyword, $sort);
		$list = FlowtypeModel::getlist($result['map'], $result['order']);
		$this->assign('list',$list);
		return $this->fetch('',['keywords' => $result['page_parm']['query']]);
	}


	//新增流程类型
	public function add()
	{
		$data = $this->request->Post();
		if(FlowtypeModel::where('title',$data['title'])->find()){
			return ajax('2','已存在','',$data);
		}
		if(FlowtypeModel::create($data)){
			return ajax('1','新增成功','',$data);
		}else{
			return ajax('0','新增失败','',$data);
		}
	}
	//编辑流程类型
	public function edit($id = null)
	{
		if($id == null) return ajax('0','确少参数');
		$info = FlowtypeModel::getone($id);
		if($this->request->isPost()){
			$data = $this->request->post();
			if(FlowtypeModel::where('id',$id)->update($data)){
				return ajax('1','修改成功','',$data);
			}else{
				return ajax('0','修改失败','',$data);
			}
		}
		return $info;
	}
	
	//删除
	public function delete($ids = null)
	{
		if($ids == null) return ajax('0','确少参数');
		if(FlowtypeModel::destroy($ids)){
			return ajax('1','删除成功');
		}else{
			return ajax('0','删除失败');
		}
	}
}
