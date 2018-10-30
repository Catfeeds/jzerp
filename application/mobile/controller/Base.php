<?php


namespace app\mobile\controller;

//use app\common\controller\Common;
use app\admin\model\Menu;
use think\Controller;
use app\admin\model\Mobilemenu as MobilemenuModel;

/**
 * 前台公共控制器
 * @package app\index\controller
 */
class Base extends Controller
{
    public function _initialize()
    {
        parent::_initialize();

        // 判断是否登录，并定义用户ID常量
        defined('UID') or define('UID', $this->isLogin());

        //判断是否是是pc访问


        //判断是否ajax提交
        if (!$this->request->isAjax()) {
            // 读取顶部菜单
//            $menulocation = MobilemenuModel::getLocation('', true);
//          $this->assign('_top_menus', MobilemenuModel::getTopMenu(5, '_mobile_footer_menus'));//底部菜单
//          $this->assign('_location', $menulocation);//当前节点位置
//          $this->assign('_sidebar_menus', MobilemenuModel::getSidebarMenu());//当前节点的父级节点下所有节点
//          $this->assign('_this_link',$menulocation[count($menulocation)-1]);        }

        }
    }
     protected function isLogin()
    {

        // 判断是否登录
        if ($uid = is_signin()) {

            // 已登录
            return $uid;
        } else {
            // 未登录
           
            $this->redirect('user/publics/signin');
        }
    }
   
   
}
