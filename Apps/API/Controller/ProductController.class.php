<?php

namespace API\Controller;

use Think\Controller\RestController;

class ProductController extends RestController {
	protected $allowMethod    = array('get','post','put','delete'); // REST允许的请求类型列表
	protected $allowType      = array('json'); // REST允许请求的资源类型列表
	public function index() {
		header ( 'Cache-Control:max-age=0' );
		header ( 'Content-Type:text/html;charset=utf-8 ', true );
		header ( 'Last-Modified: ' . gmdate ( 'D, d M Y H:i:s', time () ) . ' GMT', true );
		$data = D ( 'ProductAll' )->relation(true)->select();
		$this->response($data,'json');
	}
	
	public function type(){
		header ( 'Cache-Control:max-age=0' );
		header ( 'Content-Type:text/html;charset=utf-8 ', true );
		header ( 'Last-Modified: ' . gmdate ( 'D, d M Y H:i:s', time () ) . ' GMT', true );
		$data = D ( 'ProductAll' )->where(array('ptype_id'=>I('type')))->relation(true)->select();
		$this->response($data,'json');
	}
	
	public function id(){
		header ( 'Cache-Control:max-age=0' );
		header ( 'Content-Type:text/html;charset=utf-8 ', true );
		header ( 'Last-Modified: ' . gmdate ( 'D, d M Y H:i:s', time () ) . ' GMT', true );
		$data = D ( 'ProductAll' )->where(array('id'=>I('id')))->relation(true)->select();
		$this->response($data,'json');
	}
}