<?php
namespace app\gateway\controller;
use app\Sms\controller\SmsController;
class OvertimeController
{
	//审批人办理办理时间，超时未办理直接同意    
	public function overtime(){
		global $db;
		$time = time();
    	$steparr = $db->query('SELECT `id`,`step_id`,`create_time`,`record_id` FROM `jz_flow_approval` WHERE `status` = 0');
    	foreach($steparr as $key=>$value){
    		$step = $db->query('SELECT `time`,`time_type`,`next_step_id`,`ban_id`,`warning_type` FROM `jz_flow_step` WHERE `id` = '.$value["step_id"].' LIMIT 1');
    		if($step[0]['time_type'] == 0){
    			$second = $step[0]['time']*24*60*60;
    		}else{
    			$second = $step[0]['time']*60*60;
    		}
    		if($time>($value['create_time']+$second)){
    			$arr = [];
    			$db->query('UPDATE `jz_flow_approval` SET `status`= '.$step[0]['warning_type'].' WHERE `id` = '.$value['id'].'');    				
    			if($step[0]['next_step_id'] == 1 || $step[0]['warning_type'] == -1){    				
    				$record_id = $db->query('SELECT `add_id`,`form_id`,`uid`,`flow_id` FROM `jz_step_record` WHERE `id` = '.$value['record_id'].' LIMIT 1');
					$table = $db->query('SELECT `table` FROM `jz_flow_form` WHERE `id` = '.$record_id[0]['form_id'].' LIMIT 1');
					$title = $db->query('SELECT `title` FROM `jz_flow` WHERE `id` = '.$record_id[0]['flow_id'].' LIMIT 1');
    				$db->query('UPDATE `jz_step_record` SET `status` = '.$step[0]['warning_type'].',`step` = 0 WHERE `id` = '.$value['record_id'].'');
    				$db->query('UPDATE `jz_'.$table[0]['table'].'` SET `status` = '.$step[0]['warning_type'].' WHERE `id` = '.$record_id[0]['add_id'].'');
    				$phone = $db->query('SELECT `mobile` FROM `jz_personnel_user_basic` WHERE `id` = '.$record_id[0]['uid'].' LIMIT 1'); 
    				if($step[0]['warning_type'] == 1){
    				$msgarr = [
			        	'title' => $title[0]['title'],
			        	'time'  => date('Y-m-d H:i:s',$time),
			        	'state' => '通过'
			        ];	
	    			}else{
	    				$msgarr = [
				        	'title' => $title[0]['title'],
				        	'time'  => date('Y-m-d H:i:s',$time),
				        	'state' => '不通过'
				        ];	
	    			}   		  				
    				SmsController::sendSms($phone[0]['mobile'],$msgarr,'SMS_146290710','二三奇七');
    			}else{
    				$db->query('INSERT INTO `jz_flow_approval` (`step_id`,`record_id`,`create_time`,`update_time`) VALUES ('.$step[0]['next_step_id'].','.$value['record_id'].','.$time.','.$time.')');
    				$db->query('UPDATE `jz_step_record` SET `step` = 1 WHERE `id` = '.$value['record_id'].'');
    				$consignee_id = trim($step[0]['ban_id'],','); 
    				$u_id = explode(',', trim($consignee_id,',')); 
    				$phone = $db->query('SELECT `mobile` FROM `jz_personnel_user_basic` WHERE `id` IN ('.$consignee_id.')');    				
    				foreach($phone as $k=>$v){
    					$phone[$k] = $v['mobile'];
    				}
		            $msgarr = [
		            	'title' => '待办流程',
		            	'time'  => date('Y-m-d H:i:s',$time),
		            	'state' => '中'
		            ];
		            for($i=0;$i<sizeof($u_id);$i++){
		            	$arr[] = $msgarr;
		            }   		            
		            SmsController::sendBatchSms($phone,$arr,'SMS_146290710','二三奇七');
    			}
    		}    		
    	}
	}
}
