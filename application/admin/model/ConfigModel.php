<?php
namespace app\admin\model;

use think\Model;

class ConfigModel extends Model
{
    //
    protected $name = 'admin_config';


    // 自动写入时间戳
    protected $autoWriteTimestamp = true;

    /**
     * 获取配置信息
     * @param  string $name 配置名
     * @return mixed
     */
    public function getConfig($name = '')
    {

        $configs = self::column('value,type', 'name');

        $result = [];
        foreach ($configs as $config) {
            switch ($config['type']) {
                case 'array':
                    $result[$config['name']] = parse_attr($config['value']);
                    break;
                default:
                    $result[$config['name']] = $config['value'];
                    break;
            }
        }

        return $name != '' ? $result[$name] : $result;
    }
    public static function data_list($map = '',$order= '')
    {
        $data_list = self::where($map)->order($order)->paginate(10)->each(function($item, $key){
                switch ($item['type']){
                    case "text":
                        // 代办任务
                    $item['type'] = '单行文本';
                    break;
                    case "textarea":
                        // 代办任务
                    $item['type'] = '多行文本';
                    break;
                    case "switch":
                        // 代办任务
                    $item['type'] = '开关';
                    break;
                    case "array":
                        // 代办任务
                    $item['type'] = '数组';
                    break;
                    case "number":
                        // 代办任务
                    $item['type'] = '数字';
                    break;
                    case "tags":
                        // 代办任务
                    $item['type'] = '标签';
                    break;
                    case "image":
                        // 代办任务
                    $item['type'] = '单张图片';
                    break;
                    case "radio":
                        // 代办任务
                    $item['type'] = '单选按钮';
                    break;
                }
                if($item['status'] == 1){
                    $item['status'] = "启用";
                }else if($item['status'] == 0){
                    $item['status'] = "禁用";
                }
                return $item;
            });
        return $data_list;
    }
}