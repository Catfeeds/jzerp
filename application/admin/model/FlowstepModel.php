<?php
namespace app\admin\model;
use think\Model;

class FlowstepModel extends model{
    protected $autoWriteTimestamp = true;
    protected $name ='flow_step';
    public function getCreateTimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}
    public static function getList($flow_id=null)
    {
        $flow_step = self::where('flow_id',$flow_id)->order('next_step_id desc')->column('id,next_step_id,step_title,ban_type,ban_id,added');       	     
        $array = [];
		foreach($flow_step as $key=>$v){
			if($v['ban_type']==0){
				$array[$key] = $v;	
				$next = $v['next_step_id'];
				unset($flow_step[$key]);					
			}		
		}			
	    foreach($flow_step as $key=>$v){			
	    	if($next==0){
	    		$array[] = $flow_step[$key];
	    	}else{
	    		if($next==1) {
	    			$array[] = $flow_step[$key];
	    		}else{
	    			$next_flow = $flow_step[$next];
					$array[$next] = $next_flow;			
					$next = $next_flow['next_step_id'];	
	    		}	    			
	    	}	    	
		}	        	
        return $array;
    }
    public static function getone($id = null)
    {
    	$data = self::where('id',$id)->find();
    	return $data;
    }
    public static function gettitle($flow_id,$id = '')
    {
    	if($id){
    		$type = self::where('flow_id',$flow_id)->where('id','neq',$id)->whereOr('flow_id','0')->order('create_time desc')->column('id,step_title');
    	}else{
    		$type = self::where('flow_id',$flow_id)->whereOr('flow_id','0')->order('create_time desc')->column('id,step_title');
    	}   	
    	return $type;
    }
    
	
}