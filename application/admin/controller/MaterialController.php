<?php

namespace app\admin\controller;

use think\Request;
use think\Db;
use app\admin\model\MaterialModel;
use app\admin\model\MaterialTypeModel;
use app\admin\model\AdminFilesModel;
use app\admin\model\HouseModel;

/*
    材料库控制器
*/
class MaterialController extends AdminController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
 
    public function index($id = '')
    {
        $materialtype = MaterialTypeModel::ptree(); 
        $house = HouseModel::gettitle();      
        //搜索条件
       	$keywords = ['name', 'type_id', 'number', 'house_id'];  
       	$result = $this -> page_parm_request($keywords);      
        $data = MaterialModel::Material_list($result['map']);
        $this->assign('materialtype',$materialtype);
        $this->assign('data',$data);
        $this->assign('house',$house);
        $this->assign('keywords',$result['page_parm']['query']);
        return view('index');
    }
public function getAll($type_id = ''){
	if($this -> request -> isAjax()){
		$map = [];
		if($type_id){
			$map['type_id'] = $type_id;
		}
		if($list = MaterialModel::getAll($map, 'create_time desc')){
			return ajax(1,'查询成功' ,'',$list);
		} else {
			return ajax(0,'查询失败');
		}
	}
}
    /**
     * 显示创建、修改资源表单页.
     *
     * @return \think\Response
     */
    public function create($id = "")
    {
        if($this->request->isPost()){
            $request = $this->request->post();

            $r = $this -> validate($request, 'MaterialValidate');
            if(true !== $r){
                return ajax(0, $r);
            }
            // dump($request);die;
            if(!isset($request['id']) || $request['id'] == 'undefined' || $request['id'] == ''){
                $request['number'] = 'CL'.date('Ym').'-'.substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 5);

                $details = '向材料库中添加了('.$request['name'].')材料';
                action_log('material_create_add','material/create','',UID,$details);

                $res = MaterialModel::create($request);
                $msg = "新增";
            }else{
                $details = UID.'修改了材料库中的('.$request['name'].')材料';
                action_log('material_create_edit','material/create','',UID,$details);

                $res = MaterialModel::where('id',$request['id'])->update($request);
                $msg = "编辑";
            }

            if($res){
                return ajax('9',$msg."成功",url('index'));
            }else{
                return ajax('0',$msg."失败");
            }
        }
        // 物品类型
        $type_id = MaterialTypeModel::ptree();
        // 仓库
        $house = HouseModel::gettitle();

        $data = [];

        if($id != ""){
            $data = MaterialModel::where('id',$id)->find();
            $img_id = explode(',', $data['img_id']);
            $map = [];
            $map['id'] = ['in', $img_id];
            $images = AdminFilesModel::where($map) -> select();
            // dump($images);
            $this -> assign('images', $images);
        }else{
            $data = [
                "id" => '',
                "name" => '',
                "number" => '',
                "specifications" => '',
                "metering" => '',
                "type_id" => 0,
                "price" => '',
                "sort" => '',
                "cost" => '',
                "stock" => '',
                "supplier_id" => '',
                "notes" => '',
                "files_id" => '',
                "img_id" => '',
                "crate" => '',
                "house_id" => '',
            ];
        }
        // dump($type_id);
        $this->assign('data',$data);
        $this->assign('type_id',$type_id);
        $this->assign('house',$house);
        return view('add');
    }
   


    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete(Request $request)
    {
        $id = $request->get('id');
        // dump($id);
        if(MaterialModel::where('id',$id)->delete()){
            return ajax(9,"成功");
        }else{
            return ajax(1,"失败");
        }
    }




}
