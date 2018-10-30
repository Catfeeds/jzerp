<?php
namespace app\admin\controller;
use app\admin\model\LSupplierModel;
use app\admin\model\BSupplierModel;
use think\Db;

/**
 * 供应商控制器
 */
class SupplierController extends AdminController
{
	
	//获取所有供应商列表
	public function getAllSupplier(){
		if($this -> request -> isAjax()){
			if($data = BSupplierModel::GetAll()){
				return ajax(1, '获取成功', '', $data);
			} else {
				return ajax(0, '获取失败');
			}
		}
	}
	//获取所有供应商类型列表
	
	public function getAllType(){
		if($this -> request -> isAjax()){
			$info = ConfigType('supplier', false);
			if($info){
				return ajax(1, '获取成功', '', $info);
			} else {
				return ajax(0, '获取失败');
			}
		}
	}
	//供应商首页
	public function index($sort='asc'){
		$map = [];
        $order = 'supplier_basic_mes.create_time'.' '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['supplier_name','supplier_type','create_time'];
        $query = [
            'sort' => $sort
        ];
        foreach($keys as $v){
            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
            $map[$v] = ['like',  '%'.$vs.'%'];
            $arr = [];
            $arr[$v] = $vs;
            $query = array_merge($query, $arr);
            }
        $key = ['supplier_name','supplier_type','supplier_basic_mes.create_time'];
		$array = array();
		foreach($map as $v){
            $array = array_combine($key,$map);
            }
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = BSupplierModel::GetList($array,$order,$page_parm);

        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
	}

	//供应商添加
	public function add(){
		if($this->request->isGet()){
			$this->assign('type',ConfigType('supplier')); 
			$this->assign('industry',ConfigType('supplier_industry'));
			$this->assign('class',ConfigType('supplier_class'));
			$this->assign('area',ConfigType('supplier_area'));
			$this->assign('size',ConfigType('supplier_size'));
			$this->assign('source',ConfigType('supplier_source'));
			return	$this->fetch();
		}
		if($this->request->isPost()){
			$data = $this->request->post();
			//dump($data);die;
			//验证器验证表单数据
			$res = $this -> validate($data, 'SupplierValidate');
			if(true !== $res){
					return ajax(0, $res);
			}
			$LSupplierModel = model('LSupplierModel');
			//基础信息
			$data_basic = [
				'supplier_name' =>$data['supplier_name'],
				'supplier_type' =>$data['supplier_type'],
				'supplier_number' =>$data['supplier_number'],
				'supplier_industry' =>$data['supplier_industry'],
				'supplier_tell' =>$data['supplier_tell'],
				'supplier_area' =>$data['supplier_area'],
				'supplier_email' =>$data['supplier_email'],
				'supplier_size' =>$data['supplier_size'],
				'supplier_fax' =>$data['supplier_fax'],
				'supplier_source' =>$data['supplier_source'],
				'supplier_leader' =>$data['supplier_leader'],
				'supplier_level' =>$data['supplier_level'],
			];
		
			$res1 = BSupplierModel::create($data_basic);
			if($res1){ 
				//扩展信息
				$data_linkman = [
				'fid' => $res1['id'],
				'phone' =>$data['phone'],
				'qq' => $data['qq'],
				'bank' => $data['bank'],
				'bank_account' => $data['bank_account'],
				'bank_name' => $data['bank_name'],
				'index' => $data['index'],
				'address' => $data['address'],
				'postcode' => $data['postcode'],
				'remark' => $data['remark'],
				'file' => isset($data['file'])?$data['file']:'',
			];
			$res2= LSupplierModel::create($data_linkman); 
				if($res2){
					//添加日志行为记录
			   		$details = '节点标题('.$data['supplier_name'].')';
	           		action_log('supplier_add','supplier_add','',UID,$details);
	            	return ajax('1','添加成功!','',$data);
				}else{
					LSupplierModel::where('fid',$res1['id'])->delete();
					BSupplierModel::where('id',$data['id'])->delete();
					return ajax('0','添加失败');
				}
				//基础信息失败
			}else{
					BSupplierModel::where('id',$data['id'])->delete();
					return ajax('0','添加失败，请检查数据！');

			}
		}
	}

	//供应商修改

	public function edit($id=''){
        if($this -> request -> isGet()){
        //查询原数据
            $data = BSupplierModel::GetOne($id);
            $this->assign('vo',$data);
            return $this->fetch();
        }
        //提交修改
        if($this->request->isPost()){
			$data = $this->request->post();
			//验证器验证表单数据
			$res = $this -> validate($data, 'SupplierValidate');
			if(true !== $res){
					return ajax(0, $res);
				}
			//基础信息
			$data_basic = [
				'supplier_name' =>$data['supplier_name'],
				'supplier_type' =>$data['supplier_type'],
				'supplier_number' =>$data['supplier_number'],
				'supplier_industry' =>$data['supplier_industry'],
				'supplier_tell' =>$data['supplier_tell'],
				'supplier_area' =>$data['supplier_area'],
				'supplier_email' =>$data['supplier_email'],
				'supplier_size' =>$data['supplier_size'],
				'supplier_fax' =>$data['supplier_fax'],
				'supplier_source' =>$data['supplier_source'],
				'supplier_leader' =>$data['supplier_leader'],
				'supplier_level' =>$data['supplier_level'],
			];
			//扩展信息
			$BSupplierModel = new BSupplierModel;
			$res1 = $BSupplierModel->save($data_basic,['id'=>$data['id']]);
			if($res1){ 
				$data_linkman = [
				'phone' =>$data['phone'],
				'qq' => $data['qq'],
				'bank' => $data['bank'],
				'bank_account' => $data['bank_account'],
				'bank_name' => $data['bank_name'],
				'index' => $data['index'],
				'address' => $data['address'],
				'postcode' => $data['postcode'],
				'remark' => $data['remark'],
				'file' => $data['file'],
			];
			$LSupplierModel = new LSupplierModel;
			$res2 = $LSupplierModel->save($data_linkman,['fid'=>$data['id']]);
				if($res2){
	           		action_log('supplier_edit','supplier_edit','',UID,'');
	            	return ajax('1','修改成功!','',$data);
				}else{

					return ajax('0','修改失败!');
				}
				//基础信息错误，删除已添加的对应id基础信息。
			}else{




			}
		}

    }


    public function delete($ids= ''){
    	if($ids == '') {
                return ajax(0, '参数错误');
            }
            $fids = $ids;
            $res1 = BSupplierModel::destroy($ids);

            if($res1){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }



    //导出
    public function DowmLoadExcels(){
		$data = BSupplierModel::getList();
		//DUMP($data);die;
		$excel = new AdminFilesController();
		$excel -> DownloadExcel(['供应商编号', '供应商名称', '供应商类型', '联系电话'], $data, ['supplier_number', 'supplier_name', 'supplier_type', 'phone']);
		}




    }


