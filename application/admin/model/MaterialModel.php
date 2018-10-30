<?php

namespace app\admin\model;

use think\Model;

class MaterialModel extends Model
{
    protected $name = 'material';
    public static function material_list($map = '',$order= 'update_time desc',$page_parm=[])
    {
    	$data = self::view('material')
    	->view('stock_house',['title'=>'house_name'],'stock_house.id=material.house_id','left')
    	->where($map)
    	->order($order)
    	->paginate('', false, $page_parm);
    	return $data;
    }
    public static function getAll($map = '',$order= ''){
    	return self::where($map)->order($order)->select();
    }
}	
