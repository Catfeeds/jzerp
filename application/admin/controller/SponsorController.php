<?php
namespace app\admin\controller;
use app\admin\model\FlowModel,
	app\admin\model\FlowtypeModel,
	app\admin\model\FormTableModel,
	app\admin\model\SteprecordModel,
	app\admin\model\FlowstepModel,
	app\admin\model\FlowapprovalModel,
	app\gateway\controller\MessageController,
	think\db,
	think\auth\Auth,
	think\Loader;
//发起流程	HJP
class SponsorController extends AdminController
{
	public function index()
	{
		$auth = new Auth;
		$flowtype = FlowtypeModel::order('sort','asc')->field('id,title')->select();
		$flow = FlowModel::where('status',1)->field('id,flow_type,title,form_id')->order('sort','asc')->select();
		$form_url = FormTableModel::where('status',1)->column('id,form_url');
		$arr = [];
		$auth_url = $auth->getAuthList(UID,1);
		if($auth_url){
        	foreach($form_url as $key=>$value){
        		foreach($auth_url as $k=>$v){        			
        			if($v){
        				if(Loader::parseName($value,0) == $v){        					       					
        					$arr[$key] = $v; 	        					        					        				     				
	        			}
        			}        			
        		}       		
        	}
        	 $this->assign('form_url',$arr);        
		  }else{
		  	 $this->assign('form_url',$form_url);        
		  }
		$this->assign('flowtype',$flowtype);
        $this->assign('flow',$flow);
       
		return $this->fetch();
	}	
	public function linkage($id = '' ,$table = '', $action = '' ,$jofield = '' ,$morelinkage = '')
	{
		if($morelinkage){
			$data = db::name($table)->where($morelinkage,$id)->column('id,title');
		}else{
			$data = db::name($table)->where('id',$id)->find();
			if($action){
				if(!function_exists($action)){
					$data = $action.'方法不存在！';
				}else{
					$data['field_nickname'] = $action($data[$jofield]);
				}			
			}
		}		
		return $data;
	}
	//待办流程
	public function backlog_flow(){
		$map['flow_approval.status'] = 0;
		$list = FlowapprovalModel::backlog($map);
		return $this->fetch('',['list'=>$list]);
	}
	//已办流程
	public function finished_flow(){
		$map['flow_approval.status'] = ['not in','0'];
		$list = FlowapprovalModel::backlog($map);
		return $this->fetch('backlog_flow',['list'=>$list,'status'=>1]);
	}
	//我的申请
	public function myapply(){
		$list = SteprecordModel::getMyapply();
		return $this->fetch('backlog_flow');
	}
	//获取流程步骤及审批情况
	public function getStep($flow_id = '',$record_id = ''){
		$data = FlowstepModel::getList($flow_id);			
		$finished = FlowapprovalModel::getFinished($record_id);
		foreach($data as $key=>$value){
			foreach($finished as $k=>$v){
				if($v['step_id'] == $value['id']){
					$data[$key]['status'] = $v['status'];
					$data[$key]['remark'] = $v['remark'];
					$data[$key]['before_id'] = $v['before_id'];
					$data[$key]['create_time'] = $v['create_time'];
				}
			}
		}		
		return $data;
	}
	//提交审批
	public function addflow(){
		$data = $this->request->post();		
		$arr = [];
		//获取流程名称
		$flow_id = SteprecordModel::where('id',$data['record_id'])->value('flow_id');
		$title = FlowModel::where('id',$flow_id)->value('title');
		$added = FlowstepModel::where('id',$data['step_id'])->value('added');	
		$msgarr = [
        	'title' => $title,
        	'time'  => date('Y-m-d H:i:s',time())
        ];	
		if($data['step_id'] == 1 || $data['status'] == -1){
			//最后一步或者不同意			
			$consignee_id = SteprecordModel::where('id',$data['record_id'])->value('uid');
			FlowapprovalModel::update($data,['status'=>0,'record_id'=>$data['record_id']],'status,remark');
			$data['step'] = 0;
			SteprecordModel::update($data,['id'=>$data['record_id']],'status');
			$addid = SteprecordModel::where('id',$data['record_id'])->value('add_id');	
			if($added){
				Db::name($data['table'])->where('id',$addid)->update(['status'=>$data['status'],$added=>$data['added']]);
			}else{
				Db::name($data['table'])->where('id',$addid)->update(['status'=>$data['status']]);
			}					
			if($data['status'] == 1){
				$msgarr['state'] = '通过';
			}
			if($data['status'] == -1){
				$msgarr['state'] = '不通过';
			}
			//通知发起者   
	        $config = new MessageController;
	        $config->sendMsg('待办流程','待办流程','audit',$consignee_id,'',[$msgarr]);
		}else{
			//同意
			FlowapprovalModel::update($data,['status'=>0,'record_id'=>$data['record_id']],'status,remark');
			FlowapprovalModel::create($data,'step_id,record_id,before_id');
			SteprecordModel::where('id',$data['record_id'])->update(['step'=>1]);
			//通知下一位审批人
			$consignee_id = FlowstepModel::where('id', $data['step_id'])->value('ban_id');			
            $consignee_id = explode(',', trim($consignee_id,',')); 
			if($data['before_id']){
				$consignee_id = $data['before_id'];
			}
            $msgarr = [
            	'title' => '待办流程',
            	'time'  => date('Y-m-d H:i:s',time()),
            	'state' => '中'
            ];
            for($i=0;$i<sizeof($consignee_id);$i++){
            	$arr[] = $msgarr;
            }   
            $config = new MessageController;
            $config->sendMsg('待办流程','待办流程','audit',$consignee_id,'',$arr);
		}				               
		return ajax(1,'审批成功');
	}
}
