<?php
namespace app\admin\controller;
use app\admin\model\TypeModel;
use think\Db;
use think\Request;
/**
 * 
 */
class TypeController extends AdminController
{
    	// //主页

    	// public function index($sort='asc')
     //    {   
     //        $map = [];
     //        $order = 'create_time '.$sort;
     //        $keywords = $this -> request -> get();
     //        $keys = ['id','name','pid'];
     //        $query = [
     //            'sort' => $sort
     //        ];
     //        foreach($keys as $v){
     //            $vs = empty($keywords[$v]) ? '' : $keywords[$v];
     //            $map[$v] = ['like',  '%'.$vs.'%'];
     //            $arr = [];
     //            $arr[$v] = $vs;
     //            $query = array_merge($query, $arr);
     //            }
     //        $page = input('page') ? input('page') : 1;
            
     //        $page_parm = [
     //            'page' => $page,
     //            "query" => $query
     //        ];
     //        $name = TypeModel::getName();
     //        $data = TypeModel::getSearch($map, $order,$page_parm);
     //        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page,'name'=>$name]);
     //    }

    	// //添加
    	// public function add(){
    	// 	if($this->request->isPost()){
    	// 	$data =$this->request->post();
    	// 	//dump($data);die;
    	// 	$TypeModel = model('TypeModel');
    	// 	//验证数据
    	// 	$res = $this -> validate($data, 'TypeValidate');
    	// 	if(true !== $res){
    	// 		return ajax(0, $res);
    	// 	}
    	// 	if(!$data['pid'] > 0){




    	// 	}

    	// 	if($TypeModel->save($data)){
    	// 		return ajax('1','添加类型成功！','',$data);
    	// 		}else{
    	// 		return ajax('0','添加类型失败！','',$data);
    	// 	}
    	// 	}
    	// }

    	// //获取
    	// public function TypeOne($id = null){
    	// 		//dump($this->request->post('pid'));
    	// 		if(is_null($id)){
    	// 			return ajax(0, '参数错误');
    	// 		} else {
    	// 			$data = TypeModel::getOne($id);
    	// 			if($data){
    	// 				return ajax(1, '获取成功', '', $data);
    	// 			} else {
    	// 				return ajax(0, '获取失败');
    	// 			}
    	// 		}
    	// 	}


    	// //修改
    	// public function edit($id = ''){

    	// 	if($this -> request -> isGet()){
     //        //查询原数据

     //            $data = TypeModel::Getdetail($id);
     //            return ajax(1,'', '',$data);
     //        }
     //        //提交修改
     //        if($this -> request -> isPost()){

     //           $data = $this->request->post();
     //           dimp($data);die;
     //           $res = $this -> validate($data, 'TypeValidate');
     //           if(true !== $res){
     //             return ajax(0, $res);
     //            };
     //           $res =Db::name('type_all')
     //                ->where('id',$data['id'])
     //                ->update($data);
     //        if($res){
     //            return $this->success('修改成功!','index');
     //        }else{
     //            return $this->error('修改失败!');
     //        }

     //        }
    	// }
    	// //删除
    	// public function delete($ids= ''){
     //    	if($ids == '') {
     //                return ajax(0, '参数错误');
     //            }
     //            $res1 = TypeModel::destroy($ids);

     //            if($res1){
     //                return ajax(1, '删除成功');
     //            } else {
     //                return ajax(0, '删除失败');
     //            }
     //        }

    //首页
    public function index()
    {
        $data = TypeModel::getSearch();
        $this->assign('data',$data);
        $name = TypeModel::getName();
        $this->assign('name',$name);
        
        //dump($data);die;

        return $this->fetch();
    }
    //存储新类型
    public function add(Request $request)
    {
        $TypeModel = model('TypeModel');
        $data = $request->post();
        $r = $this->validate($data,'TypeValidate');

        if($r){
            $res = TypeModel::create($data);
  
            return ajax(1,"添加成功",url('index'),$data);    
        }else{
            return ajax(0,"添加失败");
          }
        //echo 111;die;
    }

    public function edit($id = null)
    {
        if($id == null) return ajax('0','确少参数');
        $info = TypeModel::Getdetail($id);
        if($this->request->isPost()){
            $data = $this->request->post();
            if(TypeModel::where('id',$id)->update($data)){
                return ajax('1','修改成功','',$data);
            }else{
                return ajax('0','修改失败','',$data);
            }
        }
        return $info;
    }


    //点击展示
    //删除
    public function delete(Request $request)
    {  
        $id = $request->post('ids');
        if(TypeModel::where('id',$id)->delete()){
            return ajax(1,"删除成功！");
        }else{
            return ajax(0,"删除失败！");
        }
    }




    public function GetOne($id=''){
        
        $data = TypeModel::getOne($id);
        if($data){
            return ajax(1,'', '',$data);
        }
    }

    public function Getindentify($id=''){
        if(is_null($id)){
                return ajax(0, '参数错误');
            } else {
                $data = TypeModel::getOne($id);
                if($data){
                    return ajax(1, '获取成功', '', $data);
                } else {
                    return ajax(0, '获取失败');
                }
            }
        }



}