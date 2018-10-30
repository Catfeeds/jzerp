<?php
namespace app\admin\model;
use traits\model\SoftDelete;
use think\Model;

class FlowModel extends model{
    
    use SoftDelete;
    protected $autoWriteTimestamp = true;
    protected $deleteTime = 'delete_time';
    protected $name ='flow';

    public static function getlist($map = [], $order = 'sort desc', $page_parm=[])
    {
        $data = self::view('flow')
        ->view('flow_form',['title'=>'type_title'],'flow_form.id=flow.form_id','left')
        ->view('flow_type',['title'=>'form_title'],'flow_type.id=flow.flow_type','left')
        ->where($map)
        ->order($order)
        ->order('sort,flow.id desc')
        ->paginate(Config('pageSize'), false, $page_parm);
        return $data;
    }
    public static function getone($id = null)
    {
    	$data = self::where('id',$id)->where('status',1)->find();
    	return $data;
    }
    public static function gettitle()
    {
    	$type = self::where('status',1)->order('create_time desc')->column('id,title');
    	return $type;
    }

}