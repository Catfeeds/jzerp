<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class TrainingcourseModel extends Model
{
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = true;
    protected $name ='training_course';

    public function setCourseTimeAttr($value){
		return strtotime($value)?strtotime($value):'';
	}
	public function getCourseTimeAttr($value){
		return date('Y-m',$value)?date('Y-m-d',$value):'';
	}

    public static function getOne($id = ''){
		$data = self::where('id',$id)->find();
		return $data;
	}

    public static function getList($map = [], $order = '', $parm = []){
        return self::where($map)
        ->order($order)
        ->paginate('', false, $parm)
        ->each(function($item, $key){
            $item['course_lecturer'] = TraininglecturerModel::where('id',$item['course_lecturer'])->value('lecturer_name');
                return $item;
            return $item;
        });
    }
}
