<?php

namespace Admin\Controller;

use Think\Controller;

class TypeController extends AuthController {
	/**
	 * 商品分类管理
	 */
	public function index() {
		$this->ptype=M('ptype')->select();
		$this->display();
	}
	
	/**
	 * 添加商品分类
	 */
	public function add(){
		if(!IS_POST) $this->error("页面不存在！");
		if($_POST['pid']==null||$_POST['ptype_name']==null||$_POST['order']==null){
			$this->error("传入参数错误！");
		}
		$ptypDao = M('ptype');
		if($ptypDao->add($_POST)){
			$this->redirect("/Admin/Type");
		}else{
			$this->error($ptypDao->getDbError());
		}
	}
	/**
	 * 删除商品分类
	 */
	public function del(){
		if (! IS_POST) $this->error("页面不存在！");
		$ptypDao = M('ptype');
		if($ptypDao->where(array($_POST))->delete()){
			$this->redirect("/Admin/Type");
		}else{
			$this->error($ptypDao->getError());
		}
	}
}