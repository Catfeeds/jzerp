<?php

namespace app\admin\model;

use think\Model;

class MaterialTypeModel extends Model
{
    protected $name = 'material_type';

	public static function getAll($map = [], $order = ''){
		return self::where($map) -> order($order) ->field('id,name_type') -> select();
	}
    public static function tree()
    {
    	$categorys = self::select();

        return self::trees($categorys,0);
    }

 //树状图
	public static function trees($data, $id, $level = 0){
		$tree = [];
		$level ++;
		foreach($data as $v){
			if($v['fid'] == $id){
				$v['level'] = $level;
				$v['text'] = $v['name_type'];
				$v['state'] =  array('opened' => true);
				$v['children'] = self::trees($data, $v['id'],$level);
				
				$tree[] = $v;
			}
		}
		return $tree;
	}

    public static function ptree()
    {
        $categorys = self::select();

        return self::getTree($categorys,'name_type','id','fid');
    }
    public static function getTree($data,$field_name,$field_id='id',$field_pid='fid',$fid=0)
    {
        $arr = array();
        foreach ($data as $k=>$v){
            if($v->$field_pid==$fid){
                $data[$k]["_".$field_name] = $data[$k][$field_name];
                $arr[] = $data[$k];
                foreach ($data as $m=>$n){
                    if($n->$field_pid == $v->$field_id){
                        $data[$m]["_".$field_name] = '┢─ '.$data[$m][$field_name];
                        $arr[] = $data[$m];
                    }
                }
            }
        }
        return $arr;
    }


    public static function details($id)
    {
    	$data = self::get($id);
    	return $data;
    }

    public static function uoc($data)
    {
    	$res = self::where('name_type',$data['name_type'])->find();


    	if(empty($res)){
    		
    		if(self::create($data)){
    			return $result = 9;
    		}else{
    			return $result = 1;
    		}
    	}else{
    		if(self::where('id',$res['id'])->update($data)){
    			return $result = 5;
    		}else{
    			return $result = 1;
    		}
    	}
    }
}
