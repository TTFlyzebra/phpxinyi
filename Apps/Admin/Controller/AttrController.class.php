<?php
namespace Admin\Controller;
use Think\Controller;
class AttrController extends AuthController {
	
	/**
	 * 商品属性页面
	 */
    public function index(){
    	$this->pattr=M('pattr')->select();
    	$this->display();
    }
    
    /**
     * 添加商品属性
     */
    public function add(){
    	if(!IS_POST) $this->error("页面不存在！");
    	if($_POST['name']==null||$_POST['color']==null){
    		$this->error("传入参数错误！");
    	}
    	$pattrDao = M('pattr');
    	if($pattrDao->add($_POST)){
    		$this->redirect("/Admin/Attr");
    	}else{
    		$this->error($pattrDao->getError());
    	}
    }
    
    /**
     * 删除商品属性
     */
    public function del(){
    	if (! IS_POST) $this->error("页面不存在！");
    	$pattrDao = M('pattr');
    	if($pattrDao->where(array($_POST))->delete()){
    		$this->redirect("/Admin/Attr");
    	}else{
    		$this->error($pattrDao->getError());
    	}
    }
    
}