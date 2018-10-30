<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/22 0022
 * Time: 13:51
 */

namespace app\admin\controller;

use app\admin\model\Menu as Menu;
use DirectoryIterator;
use think\Cache;
use think\Exception;
use think\Loader;
use think\Model;
use util\Tree;

class MenuController extends AdminController
{
    /**
     * 节点首页
     * @param string $group 分组
     * @throws \Exception
     * @return mixed
     */
    public function index($group = 'admin')
    {
        // 保存模块排序
        if ($this->request->isPost()) {
            $modules = $this->request->post('sort/a');
            if ($modules) {
                $data = [];
                foreach ($modules as $key => $module) {
                    $data[] = [
                        'id'   => $module,
                        'sort' => $key + 1
                    ];
                }
                $Menu = new Menu();
                if (false !== $Menu->saveAll($data)) {
                    $this->success('保存成功');
                } else {
                    $this->error('保存失败');
                }
            }
        }
        cookie('__forward__', $_SERVER['REQUEST_URI']);
        // 配置分组信息
        $list_group = Menu::getGroup();
        $tab_list = [];

        foreach ($list_group as $key => $value) {
            $tab_list[$key]['title'] = $value;
            $tab_list[$key]['url'] = url('index', ['group' => $key]);
        }
        // 模块排序
        if ($group == 'module-sort') {
            $map['status'] = 1;
            $map['pid'] = 0;
            $modules = Menu::where($map)->order('sort,id')->column('icon,title', 'id');
            $this->assign('modules', $modules);
        } else {
            // 获取节点数据
            $data_list = Menu::getMenusByGroup($group);
            //返回多少层
            $max_level = $this->request->get('max', 0);

//            dump($data_list);
            $this->assign('menus', $this->getNestMenu($data_list, $max_level));

        }


        $this->assign('tab_nav', ['tab_list' => $tab_list, 'curr_tab' => $group]);
        $this->assign('page_title', '节点管理');
        return $this->fetch();
    }

    /**
     * 新增节点
     * @param string $module 所属模块
     * @param string $pid 所属节点id
     * @return mixed
     */
    public function add($id = '', $module = 'admin', $pid = '')
    {
        if ($id == null) {
            $data = [
                "pid"       => '0',
                "title"     => '',
                "url_value" => '',
                "icon"      => '',
                "status"    => '',
                "sort"      => '100',
                'module'    => $module,
            ];
        } else {
            $data = Menu::getOne($id);
        }
        // 保存数据
        if ($this->request->isPost()) {
            $data = $this->request->post();
            // 验证
            $result = $this->validate($data, 'Menu');
            // 验证失败 输出错误信息
            if (true !== $result) return ajax(0, $result);
            if (empty($data['id'])) {
                $menu = Menu::create($data);
                $msg = '新增';
            } else {
                $menu = Menu::update($data);
                $msg = '修改';
            }
            if ($menu) {
                //这个玩意是清空所有缓存
                Cache::clear();
                return ajax(1, $msg . '成功');
            } else {
                return ajax(0, $msg . '失败');
            }
        }


        $bsf = $id ? $id : $pid;
        //获取节点
        if ($bsf) {
            if ($a=Menu::where(['id' => $bsf])->column('url_value')[0]) {
                $a= explode('/', $a);
                if (is_array($a) && count($a)==3){
                    $this->assign('menu', Menu::getActions($a['0'])[Loader::parseName($a[1],1).'Controller']);
                }else{
                    throw new Exception('节点链接格式错误！');
                }
            }else{
                $this->assign('menu', Menu::getActions($data['module']));
            }
        }else{
            $this->assign('menu', Menu::getActions($data['module']));
        }
        $this->assign('icon_list', getIcon());
        return $this->fetch('add', ['title' => Menu::getMenuTree(0, '', $module), 'pid' => $pid, 'data' => $data]);
    }


    /**
     * 获取嵌套式节点
     * @param array $lists 原始节点数组
     * @param int $pid 父级id
     * @param int $max_level 最多返回多少层，0为不限制
     * @param int $curr_level 当前层数
     * @return string
     */
    private function getNestMenu($lists = [], $max_level = 0, $pid = 0, $curr_level = 1)
    {
        $result = '';
        foreach ($lists as $key => $value) {
            if ($value['pid'] == $pid) {
                $disable = $value['status'] == 0 ? 'dd-disable' : '';

                // 组合节点
                $result .= '<li class="dd-item dd3-item ' . $disable . '" data-id="' . $value['id'] . '">';
                $result .= '<div class="dd-handle dd3-handle">拖拽</div><div class="dd3-content"><i class="' . $value['icon'] . '"></i> ' . $value['title'];
                if ($value['url_value'] != '') {
                    $result .= '<span class="link"><i class="fa fa-link"></i> ' . $value['url_value'] . '</span>';
                }
                $result .= '<div class="action">';
                $result .= '<a href="' . url('add', ['module' => $value['module'], 'pid' => $value['id']]) . '" title="新增子节点"><i class="list-icon fa fa-plus fa-fw"></i></a><a href="' . url('add', ['id' => $value['id']]) . '" data-toggle="tooltip" data-original-title="编辑"><i class="list-icon fa fa-pencil fa-fw"></i></a>';
                if ($value['status'] == 0) {
                    // 启用
                    $result .= '<a href="javascript:void(0);" data-ids="' . $value['id'] . '" class="enable" title="启用"><i class="list-icon fa fa-check-circle-o fa-fw"></i></a>';
                } else {
                    // 禁用
                    $result .= '<a href="javascript:void(0);" data-ids="' . $value['id'] . '" class="disable" title="禁用"><i class="list-icon fa fa-ban fa-fw"></i></a>';
                }
                $result .= '<a href="javascript:void(0);" onclick="deletes(' . $value['id'] . ')" title="删除" class="ajax-get confirm"><i class="list-icon fa fa-times fa-fw"></i></a></div>';
                $result .= '</div>';

                if ($max_level == 0 || $curr_level != $max_level) {
                    unset($lists[$key]);
                    // 下级节点
                    $children = $this->getNestMenu($lists, $max_level, $value['id'], $curr_level + 1);
                    if ($children != '') {
                        $result .= '<ol class="dd-list">' . $children . '</ol>';
                    }
                }

                $result .= '</li>';
            }
        }
        return $result;
    }


    /**
     * 设置角色权限
     * @param string $role_id 角色id
     * @param array $roles 角色id
     */
    private function setRoleMenu($role_id = '', $roles = [])
    {
        $RoleModel = new RoleModel();

        // 该节点的所有子节点，包括本身节点
        $menu_child = Menu::getChildsId($role_id);
        $menu_child[] = (int)$role_id;
        // 该节点的所有上下级节点
        $menu_all = Menu::getLinkIds($role_id);
        $menu_all = array_map('strval', $menu_all);

        if (!empty($roles)) {
            // 拥有该节点的所有角色id及节点权限
            $role_menu_auth = RoleModel::getRoleWithMenu($role_id, true);
            // 已有该节点权限的角色id
            $role_exists = array_keys($role_menu_auth);
            // 新节点权限的角色
            $role_new = $roles;
            // 原有权限角色差集
            $role_diff = array_diff($role_exists, $role_new);
            // 新权限角色差集
            $role_diff_new = array_diff($role_new, $role_exists);
            // 新节点角色权限
            $role_new_auth = RoleModel::getAuthWithRole($roles);

            // 删除原先角色的该节点权限
            if ($role_diff) {
                $role_del_auth = [];
                foreach ($role_diff as $role) {
                    $auth = json_decode($role_menu_auth[$role], true);
                    $auth_new = array_diff($auth, $menu_child);
                    $role_del_auth[] = [
                        'id'        => $role,
                        'menu_auth' => array_values($auth_new)
                    ];
                }
                if ($role_del_auth) {
                    $RoleModel->saveAll($role_del_auth);
                }
            }

            // 新增权限角色
            if ($role_diff_new) {
                $role_update_auth = [];
                foreach ($role_new_auth as $role => $auth) {
                    $auth = json_decode($auth, true);
                    if (in_array($role, $role_diff_new)) {
                        $auth = array_unique(array_merge($auth, $menu_all));
                    }
                    $role_update_auth[] = [
                        'id'        => $role,
                        'menu_auth' => array_values($auth)
                    ];
                }
                if ($role_update_auth) {
                    $RoleModel->saveAll($role_update_auth);
                }
            }
        } else {
            $role_menu_auth = RoleModel::getRoleWithMenu($role_id, true);
            $role_del_auth = [];
            foreach ($role_menu_auth as $role => $auth) {
                $auth = json_decode($auth, true);
                $auth_new = array_diff($auth, $menu_child);
                $role_del_auth[] = [
                    'id'        => $role,
                    'menu_auth' => array_values($auth_new)
                ];
            }
            if ($role_del_auth) {
                $RoleModel->saveAll($role_del_auth);
            }
        }
    }

    /**
     * 删除节点
     * @param array $record 行为日志内容
     * @return mixed
     */
    public function delete($record = [])
    {
        $id = $this->request->param('id');
        $menu = Menu::where('id', $id)->find();
        if ($menu['system_menu'] == '1') $this->error('系统节点，禁止删除');
        // 获取该节点的所有后辈节点id
        $menu_childs = Menu::getChildsId($id);
        // 要删除的所有节点id
        $all_ids = array_merge([(int)$id], $menu_childs);
        // 删除节点
        if (Menu::destroy($all_ids)) {
            Cache::clear();
            $this->success('删除成功');
        } else {
            $this->error('删除失败');
        }
    }

    /**
     * 保存节点排序
     * @return mixed
     */
    public function save()
    {
        if ($this->request->isPost()) {
            $data = $this->request->post();
            if (!empty($data)) {
                $menus = $this->parseMenu($data['menus']);
                foreach ($menus as $menu) {
                    Menu::update($menu);
                }
                Cache::clear();
                $this->success('保存成功');
            } else {
                $this->error('没有需要保存的节点');
            }
        }
        $this->error('非法请求');
    }

    /**
     * 添加子节点
     * @param array $data 节点数据
     * @param string $pid 父节点id
     */
    private function createChildNode($data = [], $pid = '')
    {
        $url_value = substr($data['url_value'], 0, strrpos($data['url_value'], '/')) . '/';
        $child_node = [];
        $data['pid'] = $pid;

        foreach ($data['child_node'] as $item) {
            switch ($item) {
                case 'add':
                    $data['title'] = '新增';
                    break;
                case 'edit':
                    $data['title'] = '编辑';
                    break;
                case 'delete':
                    $data['title'] = '删除';
                    break;
                case 'enable':
                    $data['title'] = '启用';
                    break;
                case 'disable':
                    $data['title'] = '禁用';
                    break;
                case 'quickedit':
                    $data['title'] = '快速编辑';
                    break;
            }
            $data['url_value'] = $url_value . $item;
            $data['create_time'] = $this->request->time();
            $data['update_time'] = $this->request->time();
            $child_node[] = $data;
        }

        if ($child_node) {
            $Menu = new Menu();
            $Menu->insertAll($child_node);
        }
    }

    /**
     * 递归解析节点
     * @param array $menus 节点数据
     * @param int $pid 上级节点id
     * @return array 解析成可以写入数据库的格式
     */
    private function parseMenu($menus = [], $pid = 0)
    {
        $sort = 1;
        $result = [];
        foreach ($menus as $menu) {
            $result[] = [
                'id'   => (int)$menu['id'],
                'pid'  => (int)$pid,
                'sort' => $sort,
            ];
            if (isset($menu['children'])) {
                $result = array_merge($result, $this->parseMenu($menu['children'], $menu['id']));
            }
            $sort++;
        }
        return $result;
    }


    /**
     * 启用节点
     * @param array $record 行为日志
     * @return void
     */
    public function enable($record = [])
    {
        $id = input('param.ids');
        $menu = Menu::where('id', $id)->find();
        $details = '节点ID(' . $id . '),节点标题(' . $menu['title'] . '),节点链接(' . $menu['url_value'] . ')';
        $this->setStatus('enable', ['menu_enable', 'admin_menu', $id, UID, $details]);
    }

    /**
     * 禁用节点
     * @param array $record 行为日志
     * @return void
     */
    public function disable($record = [])
    {
        $id = input('param.ids');
        $menu = Menu::where('id', $id)->find();
        $details = '节点ID(' . $id . '),节点标题(' . $menu['title'] . '),节点链接(' . $menu['url_value'] . ')';
        $this->setStatus('disable', ['menu_disable', 'admin_menu', $id, UID, $details]);
    }

    /**
     * 设置状态
     * @param string $type 类型
     * @param array $record 行为日志
     * @return void
     */
    public function setStatus($type = '', $record = [])
    {
        $id = input('param.ids');
        $status = $type == 'enable' ? 1 : 0;
        if (false !== Menu::where('id', $id)->setField('status', $status)) {
            Cache::clear();
            // 记录行为日志
            if (!empty($record)) {
                call_user_func_array('action_log', $record);
            }
            $this->success('操作成功');
        } else {
            $this->error('操作失败');
        }
    }

    public function getActions()
    {
        halt(Menu::getActions('admin', 'AdminController'));
    }
}
