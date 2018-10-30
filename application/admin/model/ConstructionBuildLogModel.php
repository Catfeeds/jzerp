<?php
namespace app\admin\model;

use think\Model;
use think\Db;
use think\Config;

/**
 * 设计变更 模型
 * @package app\admin\model
 */
class ConstructionBuildLogModel extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $name = 'construction_build_log';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    //首页搜索
    public static function getSearch($map = [],$order='date desc',$page_parm=[]){
        $data = self::view('construction_build_log a',true)
                ->view('construction_build_log_detail b','part,people,mes,ps','a.id=b.pid','left')
                ->view('project_list c',['title'=>'obj_id'],'a.obj_id=c.id')
                ->view('personnel_user_basic d',['nickname'=>'maker'],'a.maker=d.id')
                ->where($map)
                ->order($order)
                ->paginate(Config::get('pageSize'), false, $page_parm);
        return $data;
    }
    //查询单条数据
    public static function GetOne($id=''){
        $data = self::where('id',$id)->find();
        $data['details'] = $data ->details()->select();
        return $data;
    }
    public function details(){
        return $this -> hasMany('ConstructionBuildLogDetailModel', 'pid');
    }
    //添加
    public static function add($data = []){
        $main = [];
        $detail = [];
        $d = MakeData($data, ['details_id','partd']);
        // dump($d);
        // die;
        $res = self::create($d['main']);
        return $res -> details() -> saveAll($d['details']);
    }


}