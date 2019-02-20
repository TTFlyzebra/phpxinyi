<?php

namespace Home\Controller;

use Think\Controller;

class LoginController extends Controller {
	public function index() {
		$this->display ();
	}
	
	/**
	 * 注册用户
	 */
	public function register() {
		if (! IS_POST) $this->error("页面不存在！");
		
		//如果传入的参数没有帐号和密码这两个参数，直接结束。
		if($_POST['loginname']==""&&$_POST['loginword']=="") $this->error("传入参数不正确！");
		
		//导入自定义User处理类
		import("Cls.User",APP_PATH);
		//用户名已存在返回错误信息。
		if(\User::verifyName("user", $_POST['loginname'])) die("该用户名已注册！");
		
		//向数据表插入新用户数据。
		$data=\User::insertUser("user", $_POST);
		if(!$data) $this->error("注册帐号失败，请重试！");
		
		//插入成功，更新用户登陆信息
		$log=\User::insertLog("user_log", $data["id"]);
		if(!$log) $this->success("注册帐号成功，请登陆！");
		//缓存用户信息
		\User::saveSession($data, $log);		
		//跳转到主页
		$this->redirect("/");		
	}
	
	/**
	 * 验证登陆信息
	 */
	public function login() {
		if (! IS_POST) $this->error("页面不存在！");
		
		//如果传入的参数没有帐号和密码这两个参数，直接结束。
		if($_POST['loginname']==""&&$_POST['loginword']=="") $this->error("传入参数不正确！");
		
		//导入自定义User处理类
		import("Cls.User",APP_PATH);
		$data = \User::verifyUser("user", $_POST['loginname'], $_POST['loginword']);
		if($data == -1) $this->error("登陆帐号未注册！");
		if($data == 0) $this->error("用户名密码错误！");
		
		//验证通过，更新用度等级//因为用用户登陆次数来判断用户等级
		if (!(\User::upUserLevel ('user', $data)))	$this->error ("更新数户数据出错，请重试！");
		
		// 更新用户登陆信息
		$log = \User::insertLog ( "user_log", $data ["id"] );
		if (! $log)	$this->success ( "更新用户信息出错，可能服务器连接超时，请重试！" );
		// 缓存用户信息
		\User::saveSession ( $data, $log );
		// 跳转到主页
		$this->redirect ( "/" );
	}
	
	public function ajax(){
		if (!IS_POST) return;
		if ($_POST['loginname'] == "") die();
		import("Cls.User",APP_PATH);
		if ($_POST['loginword'] != "") {
			//导入自定义User处理类
			$data = \User::verifyUser("user", $_POST['loginname'], $_POST['loginword']);
			if ($data==-1) 	die ( '该用户尚未注册！' );
			if ($data==0) die ( '密码输入错误！' );
		} else {
			if(\User::verifyName("user", $_POST['loginname'])) die("该用户名已注册！");
		}
	}
}