<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class NoticeModel extends Model
{
    //公告
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='notice';

    public function setNoticeTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getNoticeTimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}

    public static function getScret($data)
    {
    	return self::create($data);
    }

    public static function getOne($id)
    {
    	return self::where('id',$id)->find();
    }

    public static function getList($map=[],$order='',$page_parm=[])
    {
		$data = self::where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
			    switch ($item['notice_status']) {
			    	case '0':
			    		$item['notice_status'] = "待发布";
			    		break;
			    	case '1':
			    		$item['notice_status'] = "已发布";
			    		break;
			    	case '2':
			    		$item['notice_status'] = "撤销";
			    		break;
			    };
				$item['notice_user'] = get_personnel($item['notice_user'],'nickname');
				$item['notice_type'] = TypeName($item['notice_type']);
			    return $item;
			});
		return $data;
    }


    public static function NoticeStatus($id='',$status='')
    {
    	return self::where('id',$id)->update(['notice_status'=>$status]);
    }

    public static function NoticePersonal($map=[],$order='',$page_parm=[])
    {
    	$data = self::where('notice_status',1)->column('id,notice_receive');

        $info = array();
        foreach ($data as $key => $value) {
            $arr = explode(",", $value);
            foreach ($arr as $k => $v) {
                if($v == UID){
                    $info[$key] = $key;
                }
            }
        }
        $a = self::where('id','in',$info)
        		->where($map)
        		->order($order)
        		->paginate('',false,$page_parm)
        		->each(function($item, $key){
					$item['notice_type'] = TypeName($item['notice_type']);
				    return $item;
				});
        return $a;
    }
}
