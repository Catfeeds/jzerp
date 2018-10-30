<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;
/**
 * 日志记录模型
 * @package app\admin\model
 */
class SystermLogModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__ADMIN_LOG__';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    /**
     * 获取所有日志
     * @param array $map 条件
     * @param string $order 排序
     */
    public static function getAll()
    {
          $data = self::view('admin_log', true)
                    ->view('admin_action', 'title', 'admin_action.id=admin_log.action_id', 'left')
                    //角色联查 ->view('admin_user', 'username', 'admin_user.id=admin_log.user_id', 'left')
                    ->where('admin_log.status',1)
                    ->order('admin_log.create_time desc')
                    ->paginate();      
        return $data;
    }
     //日志详情
     public static function getDetail($id = '')
    {
        $data_list = self::view('admin_log', true)
            ->view('admin_action', 'title', 'admin_action.id=admin_log.action_id', 'left')
            ->view('personnel_user_basic', 'nickname', 'personnel_user_basic.id=admin_log.user_id', 'left')
            ->where('admin_log.status',1)
            ->where('admin_log.id',$id)
            ->order('admin_log.create_time desc')
            ->find();
        return $data_list;
    }
    //首页搜索
    public static function getSearch($map = [],$order='create_time desc',$pageParam=[]){
        //dump($map);die;
        $data = self::view('admin_log', true)
            ->view('admin_action', 'title', 'admin_action.id=admin_log.action_id', 'left')
            ->view('personnel_user_basic', 'nickname', 'personnel_user_basic.id=admin_log.user_id', 'left')
            ->where($map)  
            ->order($order)
            ->paginate(Config::get('pageSize'),false,$pageParam);
        return $data;
    }
}