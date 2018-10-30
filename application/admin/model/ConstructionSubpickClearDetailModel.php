<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 设计变更 模型
 * @package app\admin\model
 */
class ConstructionSubpickClearDetailModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_subpick_clear_detail';
    public function setDateAttr($value){
        return strtotime($value)?strtotime($value):'';
    }
    public function getDateAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;   
}