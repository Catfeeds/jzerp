<?php
namespace app\admin\controller;
use app\admin\model\FormTableModel;
use app\admin\model\FlowtypeModel;
use app\admin\model\FlowformlistModel;
//自定义表单     HJP
class FormtableController extends AdminController
{
	protected $table;
	//自定义表单首页
	public function index()
	{
		$keyword = [['title' => 'flow_form.title'], ['type' => 'flow_form.type']];
		$sort = ['sort asc'];
		$result = $this -> page_parm_request($keyword, $sort);
		$list = FormTableModel::getlist($result['map'], $result['order'], $result['page_parm']);
		$type = FlowtypeModel::gettitle();
		$this->assign('list',$list);
		$this->assign('type',$type);
		return $this->fetch('',['keywords' => $result['page_parm']['query']]);
	}
	
	public function add()
	{		
		$data = $this->request->Post();
		if(FormTableModel::where('title',$data['title'])->find()){
			return ajax('2','已存在','',$data);
		}
		if(FormTableModel::create($data)){
			return ajax('1','新增成功','',$data);
		}else{
			return ajax('0','新增失败','',$data);
		}
	}

	public function edit($id = null)
	{
		if($id == null) return ajax('0','确少参数');
		$info = FormTableModel::getone($id);
		if($this->request->isPost()){
			$data = $this->request->post();
			if(FormTableModel::where('id',$id)->update($data)){
				return ajax('1','修改成功','',$data);
			}else{
				return ajax('0','修改失败','',$data);
			}
		}
		return $info;
	}

	public function delete($ids = null)
	{
		if($ids == null) {return ajax('0','确少参数');}
		if(FormTableModel::destroy($ids)){
			return ajax('1','删除成功');
		}else{
			return ajax('0','删除失败');
		}
	}
	//自定义表单
	public function custom($id = null)
	{
		$list = FlowformlistModel::where(['pid'=>$id])->order('row asc,col asc')->select();
		$max = FlowformlistModel::where('pid',$id)->max('col');
		$title = FormTableModel::where('id',$id)->value('title');
		$this->assign('max',$max);
		$this->assign('list',$list);
		$this->assign('title',$title);
		return $this->fetch();
	}

	//保存表单
	public function customadd()
	{		
		$table = new FlowformlistModel;
		$data = $this->request->post('data/a');	
		$tem = [];
		$temlists = [];
		foreach($data as $key=>&$value){
			if(!isset($value['lists'])){
				continue;
			}else{
				if(!isset($temlists['lists'.$value['lists']])){				
					$temlists['lists'.$value['lists']]['title'] = $value['dtitle'];
					$temlists['lists'.$value['lists']]['type'] = 'lists';
					$temlists['lists'.$value['lists']]['pid'] = $value['pid'];
					$temlists['lists'.$value['lists']]['readonly'] = isset($value['readonly'])?$value['readonly']:null;
					$temlists['lists'.$value['lists']]['placeholder'] = isset($value['placeholder'])?$value['placeholder']:null;
					$temlists['lists'.$value['lists']]['pname'] = isset($value['pname'])?$value['pname']:null;
					$temlists['lists'.$value['lists']]['action'] = isset($value['action'])?$value['action']:null;
					$temlists['lists'.$value['lists']]['total'] = isset($value['total'])?$value['total']:null;
					$temlists['lists'.$value['lists']]['id'] = isset($value['id'])?$value['id']:null;
					$temlists['lists'.$value['lists']]['row'] = $value['row'];
					$temlists['lists'.$value['lists']]['col'] = 1;
					unset($value['dtitle']);
					unset($value['pid']);
					unset($value['status']);
					if($value['type']=='select') $value['option'] = json_decode($value['option'],true);
					$temlists['lists'.$value['lists']]['option'][] =  $value;					
				}else{
					unset($value['dtitle']);
					unset($value['pid']);
					unset($value['status']);
					if($value['type']=='select' && $value['type']=='radio' && $value['type']=='checkbox') $value['option'] = json_decode($value['option'],true);
					$temlists['lists'.$value['lists']]['option'][] = $value;
				}				
				unset($data[$key]);
			}
		}		
		foreach($temlists as $k=>&$v){
			$v['option'] = json_encode($v['option']);
			$data[] = $v;
		}
		//dump($data);die;
		if($table->saveAll($data)){
			return ajax('1','保存成功');
		}else{
			return ajax('0','保存失败');
		}
		
}

	//获取表单名称
	public function getlist($type = null){
		
		if($type == null) return ajax('0','缺少参数');
		
		$form = FormTableModel::getTypeList($type);

		return $form ? ajax(1,'成功','',$form) : ajax(0,'该类下没有表单');
	}
	//预览
	public function preview($id = null){
		if($id == null) return ajax('0','确少参数');
		$list = FlowformlistModel::where('pid',$id)->order('row asc')->order('col asc')->select();
		$max = FlowformlistModel::where('pid',$id)->max('col');
		$title = FormTableModel::where('id',$id)->value('title');
		$this->assign('max',$max);
		$this->assign('list',$list);
		$this->assign('title',$title);
		return $this->fetch();
	}
	//删除表格
	public function tabledel($ids = null){
		if($ids == null) return ajax('0','确实参数');
		if(FlowformlistModel::destroy($ids)){
			ajax('1');
		}else{
			ajax('0');
		}
	}
}








