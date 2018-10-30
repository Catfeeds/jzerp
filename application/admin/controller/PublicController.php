<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/10 0010
 * Time: 09:35
 */

namespace app\admin\controller;

use think\Controller;
use think\Hook;
use app\admin\model\Personnel;
use GatewayWorker\Lib\Gateway;
class PublicController extends Controller
{
    /**
     * 用户登录
     * @return mixed
     */
    public function signin()
    {
        if ($this->request->isPost()) {
            // 获取post数据
            $data = $this->request->post();
            $rememberme = isset($data['rememberMe']) ? true : false;

            // 登录钩子
            $hook_result = Hook::listen('signin', $data);
            if (!empty($hook_result) && true !== $hook_result[0]) {
                $this->error($hook_result[0]);
            }

            // 验证数据
            $result = $this->validate($data, 'User.signin');
            if (true !== $result) {
                // 验证失败 输出错误信息
                return ajax(0, $result);
            }

            // 验证码
            if (config('captcha_signin')) {
                $captcha = $this->request->post('captcha', '');
                $captcha == '' && $this->error('请输入验证码');
                if (!captcha_check($captcha)) {
                    //验证失败
                    return ajax(7, '验证码错误或失效');
                };
            }

            // 登录
            $Personnel = new Personnel();
            $uid = $Personnel->login($data['username'], $data['password'], $rememberme);
            if ($uid) {
                // 记录行为
                action_log('user_signin', 'public', $uid, $uid);
                
				$message = json_encode([
					'type' => 'offline',
					'msg' => '您的账号已在其他设备登录。</br> 如非本人操作,请及时更改密码!'
				]);
				foreach(Gateway::getClientIdByUid($uid) as $v){
					Gateway::sendToClient($v, $message);
					Gateway::closeClient($v);
				}
		
                return ajax('1', '登录成功');
            } else {
                return ajax(0, $Personnel->getError());
            }
        } else {
            $hook_result = Hook::listen('signin_sso');
            if (!empty($hook_result) && true !== $hook_result[0]) {
                if (isset($hook_result[0]['url'])) {
                    $this->redirect($hook_result[0]['url']);
                }
                if (isset($hook_result[0]['error'])) {
                    $this->error($hook_result[0]['error']);
                }
            }

            if (is_signin()) {
                $this->redirect('/');
            } else {
                return $this->fetch('public/signin');
            }
        }
    }

    /**
     * 退出登录
     */
    public function signout()
    {
        $hook_result = Hook::listen('signout_sso');
        if (!empty($hook_result) && true !== $hook_result[0]) {
            if (isset($hook_result[0]['url'])) {
                $this->redirect($hook_result[0]['url']);
            }
            if (isset($hook_result[0]['error'])) {
                $this->error($hook_result[0]['error']);
            }
        }

        session(null);
        cookie('uid', null);
        cookie('signin_token', null);

        $this->redirect('public/signin');
    }
}