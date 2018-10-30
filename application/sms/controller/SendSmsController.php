<?php
namespace app\sms\controller;
use app\admin\controller\AdminController;
class SendSmsController extends AdminController{
	private $send = null;
	public $template = null;
	public $phone = null;
	public $msg = null;
	
	public function _initialize(){
		parent::_initialize();
		$this -> send = new SmsController;
	}
	
	public function parameter($template = '', $phone = '', $msg = '', $send = true){
		$this -> template = $template;
		$this -> phone = $phone;
		$this -> msg = $msg;
		if($send){
			$this -> sendSms();
		}
		return $this;
	}
	//发送会议消息
		//	$msg = [
		//		'name' => '',
		//		'title' => '',
		//		'time' => ''
		//	];$phone为单人
		//	$msg = [
		//		[
			//		'name' => '',
			//		'title' => '',
			//		'time' => ''
		//		],
		//		...
		//	];$phone为数组
	public function sendSms(){
		
		if(is_array($this -> phone)){
			$this -> send -> sendBatchSms($this -> phone, $this -> msg, $this -> template);
		} else {
			$this -> send -> sendSms($this -> phone, $this -> msg, $this -> template);
		}
		
	}
	
//	//发送会议消息
//	public function sendMeeting(){
//		$this -> sendSms();
//	}
//	//发送通知消息
//	public function sendNotice(){
//		$this -> sendSms();
//		
//	}
//	
//	//发送审批消息
//	public function sendAudit(){
//		$this -> sendSms();
//		
//	}
}
