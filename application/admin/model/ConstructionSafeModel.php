<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;


/**
 * 安全日志模型
 * @package app\admin\model
 */
class ConstructionSafeModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_safe_log';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    public function setDateAttr($value){
        return strtotime($value)?strtotime($value):'';
    }
    public function getDateAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

    public static function getList($map = [], $order = '', $parm = []){
        return self::view('construction_safe_log')
               -> view('personnel_user_basic', 'nickname', 'construction_safe_log.maker=personnel_user_basic.id', 'left')
               -> view('project_list', 'title', 'construction_safe_log.obj_id=project_list.id', 'left')
               -> where($map) -> order($order) -> paginate('', false, $parm);
    }



    //首页搜索
    public static function getSearch($map = [],$order='date desc',$page_parm=[]){
        return self::view('construction_safe_log a')
                 ->view('project_list b',['title'=>'obj_id'],'a.obj_id=b.id')
                 ->view('personnel_user_basic c',['nickname'=>'maker'],'a.maker=c.id')
                 ->where($map)
                 ->order($order)
                 ->paginate(Config::get('pageSize'), false, $page_parm);
    }

    //查询单条数据
    public static function GetOne($id=''){
        $data = self::where('id',$id)->find();
        return $data;
    } 





    
}