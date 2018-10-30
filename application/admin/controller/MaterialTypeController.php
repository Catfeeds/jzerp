<?php

namespace app\admin\controller;

use think\Request;
use app\admin\model\MaterialModel;
use app\admin\model\MaterialTypeModel;
/*
    材料类型控制器
*/
class MaterialTypeController extends AdminController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
       public function getMaterial(request $request){
    	if($request -> isAjax()){
    		if($type = MaterialTypeModel::getAll()){
    			return ajax(1, '请求成功', '', $type);
    		} else {
    			return ajax(0, '请求失败');
    		}
    	} 
    }
    public function index()
    {

        $materialtype = MaterialTypeModel::tree();

        // dump($materialtype);
        $this->assign('materialtype',$materialtype);

        return view('material_typt/index');
    }


    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        $data = $request->post();

        $res = MaterialTypeModel::uoc($data);

        if($res == 9 || $res == 5){
            return ajax(9,"成功",url('index'));
        }else{
            return ajax(1,"失败");
        }
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        if($this->request->isGet()){
            $name_type = $this->request->get();
            
            $data = MaterialTypeModel::details($name_type);
            return $data;
        }
    }


    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete(Request $request)
    {  
        $id = $request->post('id');
        // dump($id);
        if(MaterialTypeModel::where('id',$id)->delete()){
            return ajax(9,"成功");
        }else{
            return ajax(1,"失败");
        }
    }
}
