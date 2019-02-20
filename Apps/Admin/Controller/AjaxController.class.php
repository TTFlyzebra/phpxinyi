<?php
namespace Admin\Controller;
use Think\Controller;
class AjaxController extends Controller {
    public function index(){
    	echo  __ACTION__;
    }
    
    public function log(){
    	if (!IS_POST) $this->error("页面不存在！");
    	$data = $_POST;
    	if ($data['shopname'] == "") die("no shopname！");
    	$user = M ( 'shop' )->where(array('shopname'=>$data['shopname']))->find();
    	if(!$user) die ( '用户未注册！' );
    	if ($data['loginword'] == "") die("no loginword！");
    	if ($user['loginword']!=md5($data['loginword'])) die("密码错误！");
    }
    
    public function reg(){
    	if (!IS_POST) $this->error("页面不存在！");
    	$data = $_POST;
    	if ($data['shopname'] == "") die("no shopname！");
    	$count = M ( 'shop' )->where(array('shopname'=>$data['shopname']))->find();
    	if ($count) die ( '商店名称已注册，请尝试在商店名称前加上地址信息以区分！' );
    }
    
}