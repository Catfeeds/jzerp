<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 质量检查模型
 * @package app\admin\model
 */
class ConstructionQuantityModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_quality_look';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

   public function setDateAttr($value){
        return strtotime($value)?strtotime($value):'';
    }
    public function getDateAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }


    public static function getList($map = [], $order = '', $parm = []){
        return self::view('construction_quality_look')
               -> view('personnel_user_basic', 'nickname', 'construction_quality_look.maker=personnel_user_basic.id', 'left')
               -> view('project_list', 'title', 'construction_quality_look.obj_id=project_list.id', 'left')
               -> where($map) -> order($order) -> paginate('', false, $parm);
    }

    //首页展示
    // public static function getList(){

    //     $data = self::view('construction_quality_look a')
    //             ->view('project_list b',['title'=>'obj_id'],'a.obj_id=b.id')
    //             ->view('personnel_user_basic c',['nickname'=>'maker'],'a.maker=c.id')
    //             ->paginate(Config::get('pageSize'), false);
    //             //dump($data);
    //     return $data;
    // } 

    //首页搜索
    //
    //
    public static function getSearch($map = [],$order='date desc',$page_parm=[]){
        
        $data = self::view('construction_quality_look a')
                ->view('project_list b',['title'=>'obj_id'],'a.obj_id=b.id')
                ->view('personnel_user_basic c',['nickname'=>'maker'],'a.maker=c.id')
                ->where($map)
                ->order($order)
                ->paginate(Config::get('pageSize'), false, $page_parm);
        return $data;
    }

    //查询单条数据
    public static function GetOne($id=''){
        $data = self::where('id',$id)->find();
        return $data;
    } 





    
}