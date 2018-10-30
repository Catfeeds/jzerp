<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/17 0017
 * Time: 10:49
 */

namespace app\admin\model;

use think\Model;

//竣工申请

class CompleteApplyForCompletion extends Model
{

    protected $autoWriteTimestamp = 'datetime';
    //存入的时间格式竟然是根据输出的格式来的
    protected $dateFormat = 'Y-m-d';

    public static function getList($map = [], $order = 'create_time desc', $page_parm = [])
    {
        return self::where($map)->order($order)->paginate(10, false, $page_parm);
    }
}