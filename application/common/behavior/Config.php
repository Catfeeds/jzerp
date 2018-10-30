<?php
namespace app\common\behavior;

use app\admin\model\ConfigModel;

/**
 * 初始化配置信息行为
 * 将系统配置信息合并到本地配置
 * @package app\common\behavior
 * @author CaiWeiMing <314013107@qq.com>
 */
class Config
{
    /**
     * 执行行为 run方法是Behavior唯一的接口
     * @access public
     * @param mixed $params  行为参数
     * @return void
     */
    public function run(&$params)
    {
        // 如果是安装操作，直接返回
        if(defined('BIND_MODULE') && BIND_MODULE === 'install') return;

        // 获取当前模块名称
        $module = '';
        $dispatch = request()->dispatch();
        if (isset($dispatch['module'])) {
            $module = $dispatch['module'][0];
        }

        // 获取入口目录
        $base_file = request()->baseFile();
        $base_dir  = substr($base_file, 0, strripos($base_file, '/') + 1);
        define('PUBLIC_PATH', $base_dir);

        // 视图输出字符串内容替换
        $view_replace_str = [
            // 静态资源目录
            '__STATIC__'    => PUBLIC_PATH. 'static',
            // 文件上传目录
            '__UPLOADS__'   => PUBLIC_PATH. 'uploads',
            // JS插件目录
            '__LIBS__'      => PUBLIC_PATH. 'static/libs',
            // 后台CSS目录
            '__ADMIN_CSS__' => PUBLIC_PATH. 'static/admin/css',
            // 后台JS目录
            '__ADMIN_JS__'  => PUBLIC_PATH. 'static/admin/js',
            // 后台IMG目录
            '__ADMIN_IMG__' => PUBLIC_PATH. 'static/admin/img',
            // 前台CSS目录
            '__HOME_CSS__'  => PUBLIC_PATH. 'static/home/css',
            // 前台JS目录
            '__HOME_JS__'   => PUBLIC_PATH. 'static/home/js',
            // 前台IMG目录
            '__HOME_IMG__'  => PUBLIC_PATH. 'static/home/img',
            // 表单项扩展目录
            '__EXTEND_FORM__' => PUBLIC_PATH.'extend/form'
        ];
        config('view_replace_str', $view_replace_str);

        // 定义模块资源目录
        config('view_replace_str.__MODULE_CSS__', PUBLIC_PATH. 'static/'. $module .'/css');
        config('view_replace_str.__MODULE_JS__', PUBLIC_PATH. 'static/'. $module .'/js');
        config('view_replace_str.__MODULE_IMG__', PUBLIC_PATH. 'static/'. $module .'/img');
        config('view_replace_str.__MODULE_LIBS__', PUBLIC_PATH. 'static/'. $module .'/libs');
        // 静态文件目录
        config('public_static_path', PUBLIC_PATH. 'static/');

        // 读取系统配置
        $system_config = cache('system_config');
        if (!$system_config) {
            $ConfigModel   = new ConfigModel();
            $system_config = $ConfigModel->getConfig();
            
            // 非开发模式，缓存系统配置
            if ($system_config['develop_mode'] == 0) {
                cache('system_config', $system_config);
            }
        }

        // 设置配置信息
        config($system_config);
    }
}