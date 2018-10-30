<?php
namespace app\admin\model;
use think\Model;
use think\Db;
use think\Config;
use traits\model\SoftDelete;
/*
	供应商基础信息模型
	supplier_basic
	
*/

class BSupplierModel extends Model
{
	//软删除
	use SoftDelete;
	protected $deleteTime = 'delete_time';


	// 设置当前模型对应的完整数据表名称
    protected $name = 'supplier_basic_mes';

    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
	//获取所有供应商
    public static function GetAll($map = [],$order= 'supplier_linkman_mes.create_time desc',$page_parm=[]){
    	return self::view('supplier_basic_mes',true)
    			->view('supplier_linkman_mes','phone,qq,bank,bank_account,bank_name,index,address,postcode,remark,file','supplier_linkman_mes.fid=supplier_basic_mes.id','left')
    			->where('supplier_basic_mes.status',1)
    			->where($map)
    			->order($order)
    			->select();
    }


    //带条件的获取全部供应商
    
    public static function GetList($map = [],$order= 'supplier_linkman_mes.create_time desc',$page_parm=[]){
    	$data = self::view('supplier_basic_mes',true)
    			->view('supplier_linkman_mes','phone,qq,bank,bank_account,bank_name,index,address,postcode,remark,file','supplier_linkman_mes.fid=supplier_basic_mes.id','left')
    			->view('type_all',['name'=>'supplier_type'],'type_all.id=supplier_basic_mes.supplier_type','left')
    			->view('type_all a',['name'=>'supplier_level'],'a.id=supplier_basic_mes.supplier_level','left')   			
    			->where('supplier_basic_mes.status',1)
    			->where($map)
    			->order($order)
    			->paginate('', false, $page_parm);
    	return $data;
    }
    //获取单个数据（修改）
    public static function GetOne($id=''){
    	$data = self::view('supplier_basic_mes',true)
    			->view('supplier_linkman_mes','phone,qq,bank,bank_account,bank_name,index,address,postcode,remark,file','supplier_linkman_mes.fid=supplier_basic_mes.id','left')
    			->where('supplier_basic_mes.status',1)
    			->where('supplier_linkman_mes.fid',$id)
    			->where('supplier_basic_mes.id',$id)
    			->find();
    			//dump($data);die;
    	return $data;
    }

    public static function getName($id){
        $name = self::where('supplier_id',$id)->value('name');
        return $name;
    }



  

}