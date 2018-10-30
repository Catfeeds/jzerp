<?php
use \Workerman\Worker;
use \Workerman\Lib\Timer;
use app\test\controller\TestController;
use app\gateway\controller\OvertimeController;
require_once dirname(__FILE__) . '/../../../vendor/autoload.php';

$task = new Worker();
$task->onWorkerStart = function($task)
{

	global $db;
    $db = new \Workerman\MySQL\Connection('192.168.3.230', '3306', 'jzerp', 'jzerp', 'jzerp');
	
    // 10秒后发送一次邮件
    $f = new OvertimeController;
    Timer::add(3, array($f, 'overtime'), array());
};

// 运行worker
Worker::runAll();