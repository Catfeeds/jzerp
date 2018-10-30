<?php
namespace app\Test\controller;
use app\admin\controller\AdminController;
use think\Redis;

class testController extends AdminController{
//  public function __construct() {
//  	$r = redis();
//  	dump($r -> get('name'));
//  }
      public function index(){
      	return $this -> fetch();
      }
    /**
     * redis队列入栈操作
     * 
     * @param string $key
     * @param string $action
     * @param array $params
     * @param number $id
     * @param number $queueNums
     * @return boolean|integer 添加到队列后的返回值
     */
    public function push($key, $action, array $params, $id = 1, $queueNums = 1){

        $key = $this->_filter($key);

        $action = $this->_filter($action);

        if(!$key || !$action){

            log_message('error', 'Redis: params error.');

            return false;
        }

        $mod = $id%$queueNums;

        $key = strtolower($key.'_'.$mod);

        $params = json_encode($params);

        $val = $action.'||1||'.$params;

        return $this->_redis->lpush($key, $val);
    }
    /**
     * redis队列出栈操作
     * 
     * @param string $key
     * @return boolean|array 队列中取出的对应数据
     */
    public function pop(string $key){

        $key = $this->_filter($key);

        if(!$key){

            log_message('error', 'Redis: pop params error.');
            return false;
        }

        $key = strtolower($key);        

        $return_data = [];

        $data = $this->_redis->rpop($key);

        if(!$data){

            return false;
        }

        $val = $data;

        $data = explode('||', $data);

        $key_arr = ['action', 'times', 'params'];

        $return_data = array_combine($key_arr, $data);

        $return_data['params'] = json_decode($return_data['params']);

        $return_data['val'] = $val;

        return $return_data;
    }
    /**
     * redis队列重复入栈操作
     * 
     * @param string $key
     * @param string $val
     * @param string $reason
     * @return void|boolean|integer 执行重复入队列返回值
     */
    public function rePush(string $key, string $val, $reason = ''){

        $key = $this->_filter($key);

        if(!$key){

            log_message('error', 'Redis: pop params error.');

            return false;
        }

        $val_arr = explode('||', $val);

        $val_arr[1] += 1;

        if($val_arr[1] >= self::OPERATE_TIMES){

            $reason = empty($reason)?'请求失败次数频繁':$reason;

            $this->recordFailLog($key, $val, $val_arr[1], $reason);

            return ;
        }

        $key = strtolower($key);

        $val = implode('||', $val_arr);

        return $this->_redis->lpush($key, $val);
    }

    /**
     * 过滤字符串
     * 
     * @param string $str
     * @return boolean|mixed
     */
    private function _filter($str){

        $str = str_replace(' ', '', $str);

        if(empty($str)){

            return false;
        }

        return $str;
    }
    /**
     * 重复执行入队列次数过多后添加到失败日志表
     * 
     * @param string $key
     * @param string $val
     * @param number $times
     * @param string $msg
     * @return boolean 添加数据返回值
     */
    private function recordFailLog($key, $val, $times = self::OPERATE_TIMES, $msg = '请求次数超时'){

        $this->ci->load->model('SystemRedisFailLog');

        $time = time();

        $vals = explode('||', $val);

        $data = [];

        $data['redis_key'] = $key;
        $data['redis_action'] = $vals[0];
        $data['times'] = $times;
        $data['param'] = $val;
        $data['reason'] = $msg;
        $data['createtime'] = $time;
        $data['status'] = 0;

        $ret = $this->ci->SystemRedisFailLog->add($data);

        return $ret;
    }
    /**
     * 调试用
     * 
     * @param unknown $val
     * @return array
     */
    public function debug($val){

        $vals = explode('||', $val);

        $key_arr = ['action', 'times', 'params'];

        $return_data = array_combine($key_arr, $vals);

        $return_data['params'] = json_decode($return_data['params']);

        $return_data['val'] = $val;

        return $return_data;
    }
    /**
     * 添加redis数据缓存
     * 
     * @param string $key
     * @param unknown $value
     * @param number $ttl
     * @return boolean
     */
    public function hMset(string $key, $value, $ttl = 60){
        switch ($data_type = gettype($value))
        {
            case 'array':
            case 'object':
                $value = serialize($value);
                break;
            case 'boolean':
            case 'integer':
            case 'double': // Yes, 'double' is returned and NOT 'float'
            case 'string':
            case 'NULL':
                break;
            case 'resource':
            default:
                return false;
        }
        if ( ! $this->_redis->hmset($key, ['__ci_type' => $data_type, '__ci_value' => $value]))
        {
            return false;
        }
//         $this->_redis->expireat($key, time() + $ttl);

        return true;
    }
    /**
     * 获取redis缓存数据
     * 
     * @param string $key
     * @return boolean|mixed|boolean|unknown
     */
    public function hMget(string $key){

        $data = array_combine(
            ['__ci_type', '__ci_value'], $this->_redis->hmget($key, ['__ci_type', '__ci_value'])
        );

        if ( ! isset($data['__ci_type'], $data['__ci_value']) OR $data['__ci_value'] === false)
        {
            return false;
        }

        switch ($data['__ci_type'])
        {
            case 'array':
            case 'object':
                return unserialize($data['__ci_value']);
            case 'boolean':
            case 'integer':
            case 'double': // Yes, 'double' is returned and NOT 'float'
            case 'string':
            case 'NULL':
                return settype($data['__ci_value'], $data['__ci_type']) ? $data['__ci_value'] : false;
            case 'resource':
            default:
                return false;
        }
    }
    /**
     * 删除redis缓存数据
     * 
     * @param string $key
     * @return boolean
     */
    public function hMdel(string $key){

        return ($this->_redis->del($key) === 1);
    }

    /**
     * Determines if the driver is supported on this system.
     *
     * @return boolean
     */
    public function isSupported(): bool
    {
        return class_exists('\Predis\Client');
    }

}
