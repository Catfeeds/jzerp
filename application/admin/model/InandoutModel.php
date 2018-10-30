<?php
namespace app\admin\model;
use traits\model\SoftDelete,
	think\Model,
	app\admin\model\InandoutdetailsModel,
	app\admin\model\MaterialModel,
	think\Db;
class InandoutModel extends model
{
	use SoftDelete;
	protected $autoWriteTimestamp = true;
	protected $deleteTime = 'delete_time';
	protected $table = 'jz_stock_inandout';
	public function getCreateTimeAttr($value){
		return date('Y-m-d H:i:s',$value)?date('Y-m-d H:i:s',$value):'';
	}
	public function inandout_details(){
		return $this->hasMany('InandoutdetailsModel','inandout_id','id',[],'left');
	}		
	public static function getList($map = [], $order = '', $parm = []){
		return self::view('stock_inandout')
		->view('personnel_user_basic',['nickname'=>'maker_name'],'personnel_user_basic.id=stock_inandout.maker','left')
		->view('supplier_basic_mes',['supplier_name'=>'s_name'],'supplier_basic_mes.id=stock_inandout.supandpos','left')
		->view('project_list',['title'=>'obj_name'],'project_list.id=stock_inandout.supandpos','left')
		->where($map)
		->order($order)
		->paginate('', false, $parm);
	}
	public static function getOne($id = '', $map = []){
		$data = self::where('id',$id)->where($map)->find();
		$data['details'] = $data->inandout_details()->select();
		return $data;
	}
	//关联新增
	public static function addMany($data = []){
		$Material = new MaterialModel;
		if(count($data) == 0){
			return false;
		}
		$result = MakeData($data, ['m_named', 'details_id']);
		$m_id = [];
		$m_name = [];
		$newdata = [];		
		foreach($result['details'] as $key=>$value){			
			$m_id[] = $value['m_name'];
			$m_name[$key]['price'] = $value['price'];
			$m_name[$key]['stock'] = $value['num'];
			$m_name[$key]['total'] = $value['total'];
		}		
		$materialsit = $Material->where('id','in',$m_id)->field('id,price,stock,total')->select();
		if($result['main']['state'] == 1){
			foreach($materialsit as $key=>$value){			
				foreach($m_name as $k=>$v){
					if($key == $k){
						$newdata[$key]['id'] = $value['id'];
						$newdata[$key]['stock'] = $value['stock'] + $v['stock'];
						$newdata[$key]['total']	= $value['total'] + $v['total'];
						$newdata[$key]['price']	= $newdata[$key]['total'] / $newdata[$key]['stock'];
					}				
				}			
			}
		}else{
			$sub = true;
			foreach($materialsit as $key=>$value){			
				foreach($m_name as $k=>$v){
					if($key == $k){
						$newdata[$key]['id'] = $value['id'];						
						$newdata[$key]['stock'] = $value['stock'] - $v['stock'];
						if($newdata[$key]['stock']<0){
							$sub = false;
							break;
						}
						$newdata[$key]['total']	= $value['total'] - $v['total'];
						$newdata[$key]['price']	= $newdata[$key]['total'] / $newdata[$key]['stock'];
					}				
				}			
			}
		}	
		if($sub){
			$mdata = $Material->saveAll($newdata);			
			$res = self::create($result['main']);
			return $res->inandout_details()->saveAll($result['details']);
		} else {			
			return 3;
		}		
	}
}
