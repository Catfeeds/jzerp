<?php

namespace app\admin\controller;

use think\Request;
use app\admin\model\ConfigModel;

class ConfigController extends AdminController
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index($group = 'base')
    {
        // 配置分组信息
        $list_group = config('config_group');

        $tab_list   = [];

        foreach ($list_group as $key => $value) {
            $tab_list[$key]['title'] = $value;
            $tab_list[$key]['url']   = url('index', ['group' => $key]);
        }

        // 查询
        $map           = getMap();
        $map['group']  = $group;
        $map['status'] = ['eq', 1];

        //搜索条件
        if($this->request->isGet()){
            $keywords = [
                'title'=>$this->request->get('title'),
                'name'=>$this->request->get('name')
            ];
            if(!empty($keywords)){
                $map['title'] = ['like',  '%'.$keywords['title'].'%'];
                $map['name'] = ['like',  '%'.$keywords['name'].'%'];
            }
        }

        // 排序
        $order = getOrder('sort asc,id asc');

        // 数据列表
        $data_list = ConfigModel::data_list($map,$order);  
        // dump(ConfigModel::getLastSql());

        $this->assign('group',$group);
        $this->assign('list_group',$list_group);
        $this->assign('data_list',$data_list);
        $this->assign('keywords',$keywords);
        return view('config/index');
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create($group = 'base')
    {
        // 配置分组信息
        $list_group = config('config_group');
        // 配置类型
        $type =  config('form_item_type');

        $this->assign('group',$group);
        $this->assign('list_group',$list_group);
        $this->assign('type',$type);
        return view('config/add');
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
        
        if(ConfigModel::create($data)){
            return ajax(9,"成功",url('index'));
        }else{
            return json(1,"失败");
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
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        // 配置分组信息
        $list_group = config('config_group');

        // 配置类型
        $type =  config('form_item_type');

        $this->assign('list_group',$list_group);
        $this->assign('type',$type);

        $data = ConfigModel::where('id',$id)->find();

        $this->assign('data',$data);
        return view('config/edit');
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request)
    {
        $data = $request->post();

        // 如果是快速联动
        if ($data['type'] == 'linkages') {
            $data['key']    = $data['key']    == '' ? 'id'   : $data['key'];
            $data['pid']    = $data['pid']    == '' ? 'pid'  : $data['pid'];
            $data['level']  = $data['level']  == '' ? '2'    : $data['level'];
            $data['option'] = $data['option'] == '' ? 'name' : $data['option'];
        }

     
        if ($config = ConfigModel::update($data)) {
            return ajax(9,"成功",url('index'));
        } else {
            return json(1,"失败");
        }
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        $res = ConfigModel::where('id',$id)->delete();
        if($res){
            return ajax(5,"成功");
        }else{
            return ajax(1,"失败");
        }
    }
}
