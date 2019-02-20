<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends AuthController {
    public function index(){
    	for($i=0;$i<10;$i++){
    		echo "00".$i."<i class=\"icon-font\">&#xe00".$i.";</i>";
    	}
    	
    	for($i=10;$i<70;$i++){
    		echo "0".$i."<i class=\"icon-font\">&#xe0".$i.";</i>";
    	}
    }
    
}