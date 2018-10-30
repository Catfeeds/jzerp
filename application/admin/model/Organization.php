<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/27 0027
 * Time: 17:19
 */

namespace app\admin\model;

use think\model;
use util\Tree;

class Organization extends model
{
    protected $name = 'system_organization';

    /**
     * @return false|string
     * @throws \think\exception\DbException
     * 得到部门下拉框树结构数据
     */
    public static function getBmxlk()
    {
        $data = Organization::all();

        $data = Tree::toList($data);

        return json_encode($data);
    }
}