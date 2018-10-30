<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;
use think\Config;

class CertificatemoneyModel extends Model{
	use SoftDelete;
	protected $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
	protected $field = true;
    protected $name ='certificates_money';
    
    public function setEndTimeAttr($value){
        return strtotime($value)?strtotime($value):'';
    }

    public function getEndTimeAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

    public function setStartTimeAttr($value){
        return strtotime($value)?strtotime($value):'';
    }

    public function getStartTimeAttr($value){
        return date('Y-m-d',$value)?date('Y-m-d',$value):'';
    }

	public static function getList($map = [], $order = 'create_time desc', $page_parm=[]){
		return self::where($map) -> order($order) -> paginate(Config::get('pageSize'), false, $page_parm);
	}
	
	public static function getOne($id){
		$data = self::where(['id' => $id])->find();
        $res = CertificatesModel::where('id',$data['username'])->field('sex,certificate_type,certificate_number')->find();
        // $data['username'] = $res['username'];
        $data['sex'] = get_sex($res['sex']);
        $data['certificate_name'] = get_certificate_type($res['certificate_type']);
        $data['certificate_number'] = $res['certificate_number'];
        return $data;
	}
    public static function search($map='',$order='',$page_parm='')
    {               
        $data = self::alias('a')
            ->field('a.id,a.code,a.start_time,a.end_time,a.money,b.username as name,b.certificate_number,b.certificate_type')
            ->join('certificates b','a.username = b.id')
            // ->where($map)
            ->order($order)
            ->paginate('',false,$page_parm)
            ->each(function($item, $key){
                $item['certificate_type'] = TypeModel::where('id',$item['certificate_type'])->value('name');
                return $item;
            });
        return  $data;
    }
}
