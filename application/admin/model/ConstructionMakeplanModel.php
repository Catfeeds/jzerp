<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 设计变更 模型
 * @package app\admin\model
 */
class ConstructionMakeplanModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_makeplan';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;


    public static function getList($map = [], $order = '', $parm = []){
        return self::view('construction_makeplan')
               -> view('personnel_user_basic', 'nickname', 'construction_makeplan.maker=personnel_user_basic.id', 'left')
               -> view('project_list', 'title', 'construction_makeplan.obj_id=project_list.id', 'left')
               -> where($map) -> order($order) -> paginate('', false, $parm);
    }

    
    //首页搜索
    public static function getSearch($map = [],$order='date desc',$page_parm=[]){
        return self::view('construction_makeplan a')
                ->view('project_list c',['title'=>'obj_id'],'a.obj_id=c.id')
                ->view('personnel_user_basic d',['nickname'=>'maker'],'a.maker=d.id')
                ->where($map)
                -> order($order) 
                -> paginate(Config::get('pageSize'), false, $page_parm);
    }

    //查询单条数据
    public static function GetOne($id=''){
        $data = self::where('id',$id)->find();
        return $data;
    } 





    
}