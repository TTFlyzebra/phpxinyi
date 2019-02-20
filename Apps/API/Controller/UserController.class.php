<?php

namespace API\Controller;

use Think\Controller;
/**
 * 移动端登陆验证
 * @author FlyZebra
 *
 */
class UserController extends Controller {
	
	public function index() {
	}
	/**
	 * 注册用户
	 */
	public function register() {
		if (! IS_POST) $this->error("页面不存在！");
		//如果传入的参数没有帐号和密码这两个参数，直接结束。
		if($_POST['loginname']==""&&$_POST['loginword']=="") die("us empty");
		//导入自定义User处理类
		import("Cls.User",APP_PATH);
		//用户名已存在返回错误信息。
		if(\User::verifyName("user", $_POST['loginname'])) die("us exist");
		//向数据表插入新用户数据。
		$data=\User::insertUser("user", $_POST);
		if(!$data) die("注册帐号失败，请重试！");
		//插入成功，更新用户登陆信息
		$log=\User::insertLog("user_log", $data["id"]);
		if(!$log) die("注册帐号成功，请登陆！");
		// 返回包含用户信息的json字符串
		\User::echoUserJson( $data, $log );
	}
	
	/**
	 * 验证登陆信息
	 */
	public function login() {
		if (!IS_POST) $this->error("页面不存在！");
		import("Cls.User",APP_PATH);
		
		// 使用客户端注册用户登陆
		if ($_POST ['loginname']){
			$data = \User::verifyUser("user", $_POST['loginname'], $_POST['loginword']);
			if($data == -1) die("no user");
			if($data == 0) die("pw error");
			//验证通过，更新用度等级//因为用用户登陆次数来判断用户等级
			if (!(\User::upUserLevel ('user', $data)))	die("更新数户数据出错，请重试！");
			// 更新用户登陆信息
			$log = \User::insertLog ( "user_log", $data ["id"] );
			if (! $log)	die( "更新用户信息出错，可能服务器连接超时，请重试！" );
			\User::echoUserJson( $data, $log );
		}	

		// 使用QQ第三方登陆,使用BAIDU第三方登陆
		elseif ($_POST ['loginwith'] == "QQ" || $_POST ['loginwith'] == "BAIDU") {
			// 如果已经注册返回已数据表中的已有用户信息
			$data = M('user')->where ( array('openid'=>$_POST['openid']) )->find ();
			// 如果QQ方式没有注册则注册新用户。这里为什么会超时?
			if(!$data){
				$data=\User::insertUser("user", $_POST);
				if(!$data) die("注册帐号失败，请重试！");
			}else {
				if (!(\User::upUserLevel ('user', $data)))	die("更新数户数据出错，请重试！");
			}
			$log = \User::insertLog ( "user_log", $data ["id"] );
			if (! $log)	die( "更新用户信息出错，可能服务器连接超时，请重试！" );
			\User::echoUserJson( $data, $log );
		}	
		
		// 使用SINA第三方登陆
		elseif ($_POST ['loginwith'] == "SINA") {
		}
		
		
	}
	
	/**
	 * 更新用户登陆信息
	 */
	public function upLoginInfo() {
		if (! IS_POST)	die ();
		//导入自定义User处理类
		import("Cls.User",APP_PATH);
		$data = M("user")->where(array('id'=>$_POST['id']))->find();
		//验证通过，更新用度等级//因为用用户登陆次数来判断用户等级
		if (!(\User::upUserLevel ('user', $data)))	die ("更新数户数据出错，请重试！");
		// 更新用户登陆信息
		$log = \User::insertLog ( "user_log", $data ["id"] );
		if (! $log)	die ( "更新用户信息出错，可能服务器连接超时，请重试！" );
		// 返回包含用户信息的json字符串
		\User::echoUserJson( $data, $log );
	}
	
}