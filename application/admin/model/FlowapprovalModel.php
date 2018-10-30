<?php
namespace app\admin\model;
use think\Model,
	app\admin\model\FlowstepModel,
	think\Db;

class FlowapprovalModel extends model{
	protected $autoWriteTimestamp = true;
	protected $table = 'jz_flow_approval';
	public function getCreateTimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}
	//待办已办
	public static function backlog($map){
		$data = self::view('flow_approval')
		->view('step_record',['add_id','flow_id','form_id','uid','status'=>'end_status'],'step_record.id=flow_approval.record_id','left')
		->view('personnel_user_basic','nickname','personnel_user_basic.id=step_record.uid','left')
		->view('flow_form',['form_details','table'],'flow_form.id=step_record.form_id','left')
		->view('flow','title','flow.id=step_record.flow_id','left')
		->view('flow_step',['step_title','ban_id'],'flow_step.id=flow_approval.step_id','left')
		->where($map)
		->where(function ($query) {
			    $query->where("before_id",UID)
			          ->whereor("locate(',".UID.",',`flow_step`.`ban_id`)>0");

		})
		->paginate();
		return $data;				
	}
	//已审批的数据
	public static function getFinished($record_id){
		$data = self::where(['record_id'=>$record_id])->select();
		return $data;
	}   		
}
