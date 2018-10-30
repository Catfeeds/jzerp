<?php
namespace app\admin\model;
use think\Model;
use traits\model\SoftDelete;

//文件上传model
class AdminFilesModel extends model{
	use SoftDelete;
	protected $autoWriteTimestamp = true;
	protected $deleteTime = 'delete_time';
    protected $name ='admin_files';
    /**
     * 根据附件id获取路径
     * @param  string|array $id 附件id
     * @return string|array     路径
     */
    public function getFilePath($id = '')
    {
        if (is_array($id)) {
            $data_list = $this->where('id', 'in', $id)->select();
            $paths = [];
            foreach ($data_list as $key => $value) {              
                $paths[$key] = $value['path'];
            }
            return $paths;
        } else {
            $data = $this->where('id', $id)->find();
            if ($data) {                
                return $data['path'];
            } else {
                return false;
            }
        }
    }
    /**
     * 根据附件id获取名称
     * $id 附件id
     * 名称
     */
    public function getFileName($id = '')
    {
        return $this->where('id', $id)->value('name');
    }
    /**
     * 根据图片id获取缩略图路径
     * @param string $id 图片id
     */
    public function getThumbPath($id = '')
    {
    	
        return $this->where('id', $id)->value('path');
    }
}
