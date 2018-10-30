<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;

class FormTableModel extends model{
	use SoftDelete;
	protected $autoWriteTimestamp = true;
	protected $deleteTime = 'delete_time';
    protected $table ='jz_flow_form';
    
    public static function getlist($map = [], $order = 'sort desc', $page_parm=[])
    {
    	$data = self::view('flow_form')
    	->where($map)
    	->view('flow_type',['title'=>'type'],'flow_type.id=flow_form.type','left')    	
    	->where('flow_form.status',1)
    	->order($order)
    	->order('flow_form.create_time desc')    	
    	->paginate(Config('pageSize'), false, $page_parm);
    	return $data;
    }
    public static function getone($id = null)
    {
    	$data = self::where('id',$id)->where('status',1)->find();
    	return $data;
    }

    //获取指定流程类型下的表单名称
    public static function getTypeList($type = null){
        return self::where('type',$type)->where('status',1)->column('id,title');
    }


}