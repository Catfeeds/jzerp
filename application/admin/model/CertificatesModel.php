<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
use think\Config;

class CertificatesModel extends Model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
    protected $name ='certificates';
    
    public function setEndTimeAttr($value){
        return strtotime($value)?strtotime($value):'';
    }

    public function getEndTimeAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

	public static function getList($map = [], $order = 'create_time desc', $page_parm=[]){
		return self::where($map) -> order($order) -> paginate(Config::get('pageSize'), false, $page_parm);
	}
	
	public static function getOne($id){
		return self::where(['id' => $id]) -> find();
	}
    

    public static function search($map='',$order='',$page_parm='')
    {

    	$data = self::where($map)->order($order)->paginate('',false,$page_parm)->each(function($item, $key){
			    
				$item['certificate_type'] = TypeModel::where('id',$item['certificate_type'])->value('name');
                $aa = explode(",", $item['status']);
                $arr = array();
                foreach ($aa as $key => $value) {
                    switch ($value) {
                        case '0':
                            $arr[$key] = "到期";
                            break;
                        case '1':
                            $arr[$key] = "即将到期";
                            break;
                        case '5':
                            $arr[$key] = "借出";
                            break;
                        case '2':
                            $arr[$key] = "异常";
                            break;
                        case '9':
                            $arr[$key] = "闲置";
                            break;
                    }
                }
                $item['status'] = $arr;
			    return $item;
			});

    	return  $data;
    }
}
