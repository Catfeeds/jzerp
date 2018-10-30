<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class MeetingModel extends Model
{
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='meeting';

    public function setMeetingTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getMeetingTimeAttr($value){
		return date('Y-m-d',$value)?date('Y-m-d',$value):'';
	}

	public function setCtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getCtimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}

	public function setEtimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getEtimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}

	public static function getOne($id)
	{
		return self::where('id',$id)->find();
	}

	public static function search($map=[],$order='',$page_parm=[])
    {

    	$data = self::where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
				$item['meeting_room'] = MetingroomModel::where('id',$item['meeting_room'])->value('room_title');
			    return $item;
			});

    	return  $data;
    }

    public static function getSingle($uid,$map=[],$order='',$page_parm=[])
    {
    	$user = self::column('id,meeting_user');
        foreach ($user as $key => $value) {
            $arr = explode(",", $value);
            foreach ($arr as $k => $v) {
                if($v == $uid){
                    $name[$key] = $key;
                    continue;
                }
            }
        }

        $data = self::where('id','in',$name)->where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
				$item['meeting_room'] = MetingroomModel::where('id',$item['meeting_room'])->value('room_title');
			    return $item;
			});
        return $data;
    }
}
