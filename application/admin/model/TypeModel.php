<?php
namespace app\admin\model;
use think\Model;
use think\Db;
use think\Config;

/**
 * 日志模型
 * @package app\admin\model
 */
class TypeModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'type_all';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    public static function getSearch(){
        $cateres = self::order('create_time desc')->select(); 
        return self::sort($cateres);
    }

    public static function sort($data,$pid=0,$level=0){
        static $arr = array();
        if(is_array($data)){
        foreach($data as $k=>$v){
            if($v['pid'] == $pid){
                $v['level'] = $level;
                $arr[] = $v;
                self::sort($data,$v['id'],$level+1);
            }
        }
    }
        return $arr;
        }


    public static function ptree()
    {
        $categorys = self::select();

        return self::getTree($categorys,'indentify','id','pid');
    }
    public static function getTree($data,$field_name,$field_id='id',$field_pid='pid',$fid=0)
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





    //查询父节点名称   
    public static function getName(){
        $data = self::where('pid',0)->select();
        
        return $data;
    }
    //获取子节点类型
    public static function getType($type = ''){
        $pid = self::where('indentify',$type)->value('id');
        //dump($pid);die;
        $data = self ::where('pid',$pid)->select();
        //dump($data);die;
        return $data;
    }

    //获取标识
    public static function getOne($id = null){
        //dump($id);die;
        if(null == $id){
            return false;
        }
        $data = self::where(['id' => $id])->field('pid,indentify')->find();
        return $data; 
    }

    //获取详情
    public static function Getdetail($id){
        $data = self::where('id',$id)->find();
        return $data;
    }

    //存储
    public static function uoc($data)
    {
        $res = self::where('name',$data['name'])->find();
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

    //获取单个
    public static function details($id)
    {
        $data = self::get($id);
        return $data;
    }



}