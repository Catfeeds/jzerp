<?php
namespace app\admin\controller;
use think\Db;
use \tp5er\Backup;
class DatabaseController extends AdminController
{
    protected $db = '', $datadir;
    public function _initialize(){
        parent::_initialize();
        $this->config=array(
            'path'     => config('database_backup_path'),//数据库备份路径
            'part'     => config('database_backup_size'),//数据库备份卷大小
            'compress' => config('database_backup_iszip'),//数据库备份文件是否启用压缩 0不压缩 1 压缩
            'level'    => config('database_backup_level') //数据库备份文件压缩级别 1普通 4 一般  9最高
        );
        $this->db = new Backup($this->config);
    }
    public function index(){
        $list = $this->db->dataList();
        foreach ($list as $k => $v) {
            $list[$k]['size'] = format_bytes($v['data_length']);
        }
        $this->assign('list',$list);
        return $this -> fetch();
    }
    //优化
    public function optimize() {
        $tables = input('post.tables/a');
        if (empty($tables)) {
            return ajax(0, '请选择要优化的表');
        }
        if($this->db->optimize($tables)){
            return ajax(1, '数据表优化成功！');
        }else{
            return ajax(0, '数据表优化出错请重试！');
        }
    }
    //修复
    public function repair() {
        $tables = input('post.tables/a');
        if (empty($tables)) {
            return ajax(0, '请选择要修复的表');
        }
        if($this->db->repair($tables)){
            return ajax(1, '数据表修复成功！');
        }else{
            return ajax(0, '数据表修复出错请重试！');
        }
    }
    //备份
    public function backup(){
        $tables = input('post.tables/a');
        if (!empty($tables)) {
            foreach ($tables as $table) {
                $this->db->setFile()->backup($table, 0);
            }
            return ajax(1, '备份成功');
        } else {
            return ajax(0, '请选择要备份的表');
        }
    }
    //备份列表
    public function restore(){
        $list =  $this->db->fileList();
        $this->assign('list',$list);
        return $this -> fetch();
    }
    //执行还原数据库操作
    public function import($time) {
        $list  = $this->db->getFile('timeverif',$time);
        $this->db->setFile($list)->import(1);
        return ajax(1, '还原成功！');
    }

    //下载
    public function downfile($time) {
        $this->db->downloadFile($time);
    }
    //删除sql文件
    public function delSqlFiles() {
        $time = input('post.time');
        if($this->db->delFile($time)){
            return ajax(1, '备份文件删除成功！');
        }else{
            return ajax(0, '备份文件删除失败，请检查权限！');
        }
    }
}