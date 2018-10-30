<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
use util\Tree;

class PositionModel extends model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $table ='jz_system_position';
    public static function getAllCate(){
    	return self::order('create_time desc') -> select();
    }
    public static function getOne($id = null){
    	return self::where(['id' => $id]) -> field('id,name,pid,prepare_number,responsibility,requirements,description') -> find();
    }

    /**
     * @return false|string
     * @throws \think\exception\DbException
     * 得到部门下拉框树结构数据
     */
    public static function getZwxlk()
    {
        $data = PositionModel::all();

        //表字段name改为title 为适应 Tree类
        foreach ($data as $v) {
            $v['title'] = $v['name'];
        }
        $data = Tree::toList($data);
        return json_encode($data);
    }

}
