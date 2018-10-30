<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 设计变更 模型
 * @package app\admin\model
 */
class ConstructionServiceRateModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_service_rate';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    public function setDateAttr($value){
        return strtotime($value)?strtotime($value):'';
    }
    public function getDateAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }
    //首页搜索
    public static function getSearch($map = [],$order='date desc',$page_parm=[]){
        return self::view('construction_service_rate a')
            ->view('project_list b',['title'=>'obj_id'],'a.obj_id=b.id')
            ->view('personnel_user_basic c',['nickname'=>'maker'],'a.maker=c.id')
            ->where($map) 
            -> order($order)
            -> paginate(Config::get('pageSize'), false, $page_parm);
    }

    //查询单条数据
    public static function getOne($id=''){
        $data = self::where('id',$id)->find();
        return $data;
    }
}