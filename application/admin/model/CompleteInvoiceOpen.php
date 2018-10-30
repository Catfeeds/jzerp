<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/14 0014
 * Time: 11:03
 */

namespace app\admin\model;
use think\model;

//开票
class CompleteInvoiceOpen extends model
{
    protected $autoWriteTimestamp = 'datetime';
    //存入的时间格式竟然是根据输出的格式来的
    protected $dateFormat='Y-m-d';

    public static function getList($map = [], $order = 'create_time desc', $page_parm = [])
    {
        return self::where($map)->order($order)->paginate(10, false, $page_parm);
    }

    /**
     * @param $value
     * @return false|string
     *
     */
    public function setDateAttr($value)
    {
        return $value ? $value : date('Y-m-d', time());
    }
}

