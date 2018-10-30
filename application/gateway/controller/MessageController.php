<?php

namespace app\gateway\controller;

use \GatewayWorker\Lib\Gateway;
use app\admin\controller\AdminController;
use app\sms\controller\SendSmsController;
use app\gateway\model\MessageModel;
use app\gateway\model\MessageConsigneeModel as MC;
use app\admin\model\Personnel;
use app\admin\controller\MessageConfigController;
use think\Db;

//	消息
class MessageController extends AdminController
{
    protected $sms = null;

    public function _initialize()
    {

        Gateway::$persistentConnection = false;
        defined('UID') or define('UID', $this->isLogin());
        $this->sms = new SendSmsController();

    }

//		Uid绑定$client_id
    public function bindUid($client_id)
    {


        Gateway::bindUid($client_id, UID);
       
        return ajax(1, 'websocket is ok');
  
    }


    public function sendMsg($title = '', $msg = '', $msg_type = '', $consignee_id = '', $sender_id = '', $sms = [])
    {
    	
    	//详情见消息通知 提醒方式 <=-=>
    	$requireMsg = [1, 3, 4];		//消息提醒的类型
    	$requireSms= [2, 3, 4];			//短信提醒的类型
    	$allSms = [2,4];				//都要提醒的类型 
        Db::startTrans();
        try {
            if (!cache('messageConfig')) {
                $config = new MessageConfigController;
                $config->cacheMessageConfig();
            }

            $config = cache('messageConfig')[$msg_type];
			if($config['send_type'] == 5){
			    Db::rollback();
				return;
			}
            $send_id = $sender_id ? $sender_id : UID; // 发送ID
            $msg_list = [
                'title'     => $title,
                'content'   => $msg,
                'sender_id' => $send_id,
                'msg_type'  => $msg_type
            ];
            $model = MessageModel::create($msg_list);
            if (!is_array($consignee_id)) {
                $consignee_id = [$consignee_id];
            }
            $online = [];
            $offline = [];
            $consignee_list = [];
            foreach ($consignee_id as $c_i) {
                $arr = [
                    'msg_id'       => $model['id'],
                    'consignee_id' => $c_i,
                    'sender_id'    => $send_id,
                    'is_read'      => 0,
                    'send_type'	   => 1
                ];
                if (Gateway::isUidOnline($c_i)) {
                    $online[] = $c_i;
                    
                } else {
                    $offline[] = $c_i;
                  
                    
                }
                if(in_array($config['send_type'], $requireSms)){
                	$arr['is_read'] = 1;
                	$arr['send_type'] = 2;
                }
                $consignee_list[] = $arr;
            } 
           	 //发送消息
               if (in_array($config['send_type'], $requireMsg)) {
                    //向任意uid发送数据, $online 可为数组
                    //	$type = count($online) == 1 ? 'send_to_one' : 'send_to_all';
                    Gateway::sendToUid($online, json_encode(['type' => $msg_type, 'msg' => $msg]));
                }
                //发送短信
                if (in_array($config['send_type'], $requireSms)) {

                    if (in_array($config['send_type'], $allSms)) {
                        $offline = array_merge($offline, $online);
                    }
                    if (count($offline) > 0) {
                        $phone = Personnel::where('id', 'in', $offline)->field('mobile')->select();
	                      
	                      $args = [];
	                      foreach($phone as $p){
	                      	$p = $p -> toArray();
	                      	foreach($p as $v){
	                      		$args[] = $v;
	                      	}
	                      }
	                      $ceil = ceil(count($args)/100);
	                      for($i = 0;  $i < $ceil; $i++){
                        	$this->sms->parameter($config['template'], array_slice($args, $i *100, 100),  array_slice($sms, $i *100, 100));
	                      	
	                      }
                        //发送短信

                    }


                }
            $MC = new MC;
            if ($model && $MC->saveAll($consignee_list)) {
                Db::commit();
               
       
            } else {
                Db::rollback();
				
            }


        } catch (\Exception $e) {echo $e;
            Db::rollback();
            return ajax(0, '发送失败');
        }
    }
    

}
	
