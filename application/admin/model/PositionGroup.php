<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/4 0004
 * Time: 13:58
 */

namespace app\admin\model;

use think\Model;


//部门职位
class PositionGroup extends  Model
{
    protected $name = 'position_group';


    protected $autoWriteTimestamp = 'datetime';
    //存入的时间格式竟然是根据输出的格式来的
    protected $dateFormat = 'Y-m-d';

    /**
     * @return \think\model\relation\HasOne
     * 职位部门 <-> 职位 一对一
     */
    public function getPosition()
    {
        return $this->hasOne('positionModel','id','position_id')->field('name');
    }

    public function getGroup()
    {
        return $this->hasOne('organization','id','group_id')->field('title');
    }


}