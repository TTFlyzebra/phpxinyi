<?php

namespace Admin\Controller;

use Think\Controller;

class LoginController extends Controller {
	public function index() {
		$this->display ();
	}
	
	public function login(){
		if(!IS_POST) $this->error("页面不存在！");
		$db = M('shop');
		$data = $db->where(array('shopname'=>$_POST['shopname'],'loginword'=>md5($_POST['password'])))->find();
		if($data==null) $this->error("用户名密码错误!");
		//添加记录登陆信息代码；
		import("Cls.User",APP_PATH);
		$log = \User::insertLog('shop_log',$data['id'],'shop_id');
		
		if(!$log) $this->error("更新登陆信息失败！");
		//session
		session(C('USER_AUTH_KEY'),$data['id']);
		session('shopname',$data['shopname']);
		session('loginIP',$log['loginIP']);
		session('logtime',$log['logintime']);
		//如果是超级管理员，不需要认证
		if($data['shopname']==C('RBAC_SUPERADMIN')){
			session(C('ADMIN_AUTH_KEY'),true);
		}
		
		//RBAC
		\Org\Util\Rbac::saveAccessList();
// 		dump($_SESSION);
// 		die();
		
		//其它需要的操作
		$this->redirect("/Admin");//跳转到主页
	}
	
	public function logout(){
		session_unset();
		session_destroy();
		$this->redirect("/Admin/Login");
	}
	
}