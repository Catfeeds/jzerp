<?php
//自定义表单     HJP
namespace app\admin\controller;
use app\admin\model\FlowtypeModel,
	app\admin\model\FormTableModel,
	app\admin\model\FlowstepModel,
	app\admin\model\FlowModel,
	app\admin\model\PositionGroup,
	think\Request;

class FlowController extends AdminController
{
    //流程
	public function index()
	{		
		$keyword = [['title' => 'flow.title'], 'type'];
		$sort = ['sort asc'];
		$result = $this -> page_parm_request($keyword, $sort);
		$list = FlowModel::getlist($result['map'], $result['order'], $result['page_parm']);
		$type = FlowtypeModel::gettitle();
		$this->assign('list',$list);
		$this->assign('type',$type);
		return $this->fetch('',['keywords' => $result['page_parm']['query']]);
	}


	//新增流程类型
	public function add()
	{
		$data = $this->request->Post();
		$res = $this -> validate($data, 'FlowValidate');
		if(true !== $res){
			return ajax(0, $res);
		}
		if(FlowModel::create($data)){
			return ajax('1','新增成功','',$data);
		}else{
			return ajax('0','新增失败','',$data);
		}
	}

	//编辑流程
	public function edit($id = null)
	{
		if($id == null) return ajax('0','确少参数');
		if($this->request->isPost()){
			$data = $this->request->post();
			$data['id'] = $id;
			$r = $this -> validate($data, 'FlowValidate');
			if(true !== $r){
				return ajax(0, $r);
			}
			if(FlowModel::update($data)){
				return ajax('1','修改成功','',$data);
			}else{
				return ajax('0','修改失败','',$data);
			}
		}
		$info = FlowModel::getone($id);
		//表单类型
		$formlist = FormTableModel::getTypeList($info->flow_type);
		$option = "";
		foreach ($formlist as $key => $value) {
			 $selected = $key==$info->form_id ? " selected" : '';
			 $option.='<option value="'.$key.'"'.$selected.'>'.$value.'</option>';
		}
		$info->formlist = $option;
		return $info;
	}
	public function setstatus($id){
		if($this->request->isPost()){			
			$data = $this->request->post();
			$data['id'] = $id;
			if(FlowModel::update($data)){
				return ajax('1','修改成功');
			}else{
				return ajax('0','修改失败');
			}
		}
	}

	//删除
	public function delete($ids = null)
	{
		if($ids == null) return ajax('0','确少参数');
		if(FlowModel::destroy($ids)){
			return ajax('1','删除成功');
		}else{
			return ajax('0','删除失败');
		}
	}
	//删除
	public function stepdelete($ids = null)
	{
		if($ids == null) return ajax('0','确少参数');
		if(FlowstepModel::destroy($ids)){
			return ajax('1','删除成功');
		}else{
			return ajax('0','删除失败');
		}
	}

	public function steplist($id = null){
		$steplist = FlowstepModel::getList($id);
		//dump($steplist);
		$this->assign('steplist',$steplist);
		return $this->fetch();
	}
	//新增审批步骤
	public function addstep($id = '',$flow_id = ''){
		if($id){
			$data = FlowstepModel::getone($id);	
			$setplist = FlowstepModel::gettitle($flow_id,$id);		
		}else{
			$data = [
				'step_title'=>'',
				'ban_type'=>'0',
				'ban_id'=>'',
				'time'=>'2',
				'time_type'=>'0',
				'next_step_id'=>'',
				'warning'=>'2',
				'warning_type'=>'',
				'added'=>'',
			];
			$setplist = FlowstepModel::gettitle($flow_id);
		}
		if($this->request->isPost()){
			$data = $this->request->post();	
			if(!preg_match("/^,[\s\S]*,$/", $data['ban_id'])){
				if(!empty($data['ban_id'])){
					$data['ban_id'] = ','.$data['ban_id'].',';
				}
			}		      					
			if(empty($data['id'])){
				$menu = FlowstepModel::create($data);
				$msg = '新增';
			}else{
				$menu = FlowstepModel::update($data);
				$msg = '修改';
			}
			if($menu){
				return ajax(1,$msg.'成功');
			}else{
				return ajax(0,$msg.'失败');
			}
		}
		return $this->fetch('',['data'=>$data,'setplist'=>$setplist]);
	}
	
	
}
