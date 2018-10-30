<?php
namespace app\admin\controller;
use app\admin\model\FormTableModel,
	app\admin\model\FlowformlistModel,
	app\admin\model\FlowModel;
class FlowcommonController extends AdminController
{		
	public function _initialize()
	{
        parent::_initialize();
		$url = $this->request->module().'/'.$this->request->controller().'/'.$this->request->action();
		$id = FormTableModel::where('form_url',$url)->whereOr('form_details',$url)->value('id');
		$list = FlowformlistModel::where(['pid'=>$id,'status'=>1])->order('row asc,col asc')->select();
		$title = FormTableModel::where('id',$id)->value('title');
		$max = FlowformlistModel::where('pid',$id)->max('col');		
		$this->assign('flow_id',FlowModel::where('form_id',$id)->value('id'));
		$this->assign('list',$list);		
		$this->assign('title',$title);
		$this->assign('max',$max);
		$this->assign('url',$url);
		$this->assign('form_id',$id);
	}
}
