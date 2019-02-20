<?php
namespace Admin\Controller;
use Think\Controller;
class HomeShopController extends AuthController {
    public function index(){
    	$shops = D('ShopAll')->field('loginword,token,describe,regIP,describe,countshop,countmoney,level,lock,type',true)
    	->where(array('type'=>1))
    	->relation('show')
    	->select();
    	$this->shops=$shops;
//     	dump($shops);
    	$this->display();
    }
    
    public function add(){
    	if(!IS_POST) die();
    	M('shop_home')->add(array('shop_id'=>I('shop_id'),'show'=>1));
    }
    
    public function del(){
    	if(!IS_POST) die();
    	M('shop_home')->where(array('shop_id'=>I('shop_id')))->delete();
    	
    }
    
}