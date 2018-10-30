<?php
namespace app\admin\model;
use think\Model;

class SteprecordModel extends model{
	protected $autoWriteTimestamp = true;
	protected $name = 'step_record';
	public function getCreateTimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}
	//我的申请
	public static function getMyapply(){
		$data = self::view('step_record')
		->where('uid',UID)
		->view('flow',['title','form_id'],'flow.id=step_record.flow_id','left')
		->view('personnel_user_basic','nickname','personnel_user_basic.id=step_record.uid','left')
		->view('flow_approval','step_id','step_record.id=flow_approval.record_id','left')
		->view('flow_step','step_title','flow_step.id=flow_approval.step_id','left')
		->view('flow_form','form_details','flow_form.id=flow.form_id','left')
		->paginate();
		return $data;
	}		
}
