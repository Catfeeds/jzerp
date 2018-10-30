<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\ConfigModel;
use app\admin\model\AdminFilesModel;

class SystemController extends AdminController
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
            $tab_list[$key]['url']  = url('index', ['group' => $key]);
        }

        if (isset(config('config_group')[$group])) {
            // 查询条件
            $map['group']  = $group;
            $map['status'] = 1;

            // 数据列表
            $data_list = ConfigModel::where($map)
                ->order('sort asc,id asc')
                ->column('name,title,tips,type,value,options,ajax_url,next_items,param,table,level,key,option,ak,format');

            foreach ($data_list as &$value) {
                // 解析options
                if ($value['options'] != '') {
                    $value['options'] = parse_attr($value['options']);
                }
            }

            $img = [];
            foreach ($data_list as &$value) {
                if($value['type'] == 'image'){
                    $img = $value['value'];
                }
            }

            if (!empty($img) || is_string($img)) {
                $images = AdminFilesModel::where('id',$img) -> find();
                $this -> assign('images', $images);
            }
            // dump($images['path']);die;

            
            $this->assign('list_group',$list_group);
            $this->assign('group',$group);
            $this->assign('data_list',$data_list);
            return view('system/index');
        }else{
            $this->error('错误');
        }

    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request,$group = 'base')
    {
        $data = $request->post();
        
        $group = $data['group'];
        if (isset(config('config_group')[$group])) {
                // 查询该分组下所有的配置项名和类型
                $items = ConfigModel::where('group',$group)->where('status', 1)->column('name,type');
        // dump($items);die;
                foreach ($items as $name => $type) {
                    
                    ConfigModel::where('name', $name)->update(['value' => $data[$name]]);
                    
                }
            } else {
                $this->error('更新失败');
            }
            cache('system_config', null);
            
            return ajax(9, '更新成功', "url('index', ['group' => $group]");
    }

}
