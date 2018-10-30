<?php
namespace app\admin\controller;
use app\admin\model\ActionModel;
use app\admin\validate\ActionValidate;
use think\Db;
    /*
    
    行为控制器

    */
class ActionController extends AdminController
{
    /**
     * 首页
     */

    public function index_action($sort='asc')
    {   
        $map = [];
        $order = 'create_time '.$sort;
        $keywords = $this -> request -> get();
        $keys = ['id','name','title'];
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
            //dump($query);die;
        $page = input('page') ? input('page') : 1;
        
        $page_parm = [
            'page' => $page,
            "query" => $query
        ];
        $data = ActionModel::getSearch($map, $order,$page_parm);
        return $this -> fetch('', ['data' => $data, 'keywords' => $query, 'page' => $page]);
    }

    /**
    * 添加行为
    */

    public function add_action(){
           $data = $this->request->post();

            $res = $this -> validate($data, 'ActionValidate');
            if(true !== $res){
                return ajax(0, $res);
            }
           $ActionModel = model('ActionModel');
           $res = $ActionModel->save($data);           
            if($res){
          //添加行为日志
           $details = '节点标题('.$data['name'].')';
           action_log('action_add','admin_action','',UID,$details);
            return ajax('1','添加成功!','',$data);
        }else{
            return $this->error('添加失败!');
        }
    }


    /**
    * 修改行为
    */
    public function edit_action($id = ''){
        if($this -> request -> isGet()){
        //查询原数据
            $data = ActionModel::GetOne($id);
            $this->assign('data',$data);
            return $this->fetch('edit_action');
        }
        //提交修改
        if($this -> request -> isPost()){
           $data = $this->request->post();
           $res = $this -> validate($data, 'ActionValidate');
           if(true !== $res){
             return ajax(0, $res);
            };
           $res =Db::name('admin_action')
                ->where('id',$data['id'])
                ->update($data);
        if($res){
            return $this->success('修改成功!','index_action');
        }else{
            return $this->error('修改失败!');
        }

        }

    }

    /**
    * 删除行为
    */

    public function action_del($ids = ''){
            if($ids == '') {
                return ajax(0, '参数错误');
            }
            $m = ActionModel::destroy($ids);
            if($m){
                return ajax(1, '删除成功');
            } else {
                return ajax(0, '删除失败');
            }
        }


}