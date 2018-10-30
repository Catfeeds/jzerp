<?php
namespace app\admin\controller;

use app\admin\model\SystermLogModel;
use think\Db;


/**
 * 系统日志控制器
 * @package app\admin\controller
 */
class SystermLogController extends AdminController
{
    //日志首页
    public function index($sort='desc')
    {   
        $map = [];
        $order = 'create_time '.$sort;
		$keywords = $this -> request -> get();
		$keys = ['id','user_id'];
		$query = [
			'sort' => $sort
		];
		foreach($keys as $v){
			$vs = empty($keywords[$v]) ? '' : $keywords[$v];
			$map[$v] = ['like',  '%'.$vs.'%'];
			$arr = [];
			$arr[$v] = $vs;
			$query = array_merge($query, $arr);
			}

		$key = ['admin_log.id','admin_log.user_id'];
		$array = array();
		foreach($map as $v){
            $array = array_combine($key,$map);
            }
		$page = input('page') ? input('page') : 1;
		
		$page_parm = [
			'page' => $page,
			"query" => $query
		];	
        $data = SystermLogModel::getSearch($array,$order,$page_parm);
        $res = SystermLogModel::getLastSql();
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }

    //日志详情
    public function log_detail($id = null)
    {
        if ($id === null) $this->error('缺少参数');
        $data = SystermLogModel::getDetail($id);
        $this->assign('data',$data);
        return $this->fetch('log_detail');
    }




   
}