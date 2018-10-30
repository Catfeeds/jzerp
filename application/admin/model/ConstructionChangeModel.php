<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 施工日志 模型
 * @package app\admin\model
 */
class ConstructionChangeModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_change';
    public function setDateAttr($value){
        return strtotime($value)?strtotime($value):'';
    }
    public function getDateAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;


    public static function getList($map = [], $order = '', $parm = []){
        return self::view('construction_change')
               -> view('personnel_user_basic', 'nickname', 'construction_change.maker=personnel_user_basic.id', 'left')
               -> view('project_list', 'title', 'construction_change.obj_id=project_list.id', 'left')
               -> where($map) -> order($order) -> paginate('', false, $parm);
    }

    //查询单条数据
    public static function GetOne($id=''){
        $data = self::where('id',$id)->find();
        return $data;
    } 





    
}