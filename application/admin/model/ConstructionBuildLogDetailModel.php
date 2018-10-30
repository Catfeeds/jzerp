<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 设计变更 模型
 * @package app\admin\model
 */
class ConstructionBuildLogDetailModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_build_log_detail';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    //首页搜索
    

    //查询单条数据
    public static function GetOne($id=''){
        $data = self::where('id',$id)->find();
        return $data;
    } 





    
}