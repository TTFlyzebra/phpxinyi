<?php

namespace Admin\Controller;

use Think\Controller;

class RegisterController extends AuthController {
	public function index() {
		$this->display ();
		// $this->display ( "Register/register" );
	}
	public function register() {
		if (! IS_POST)	$this->error ( "页面不存在！" );
			
			// 注册用户
		$upload = new \Think\Upload (); // 实例化上传类
		$upload->maxSize = 3145728; // 设置附件上传大小
		$upload->exts = array (	'jpg','png'); // 设置附件上传类型
		$upload->rootPath = './UpLoads/';
		$upload->savePath = '/shop/images/'; // 设置附件上传目录
		$data = $_POST;
		$data ['regtime'] = time (); // 添加注册时间
		$data ['regIP'] = get_client_ip ();
		$data ['loginword'] = md5 ( $data ['loginword'] ); // 密码MD5加密
		$db = M ( 'shop' );
		if ($shop_id = $db->add ( $data )) {
			// 接受上传的图像文件
			$info = $upload->upload ();
			if (! $info) { // 上传错误提示错误信息
				$this->error ( "帐号已注册成功，上传图像文件失败，可登陆再修改！" );
			} else {
				// 更新product_imgurl(产品图像)表
				$product_imgurlDao = M ( 'shop_imgurl' );
				foreach ( $info as $file ) {
					$imgurl = '/UpLoads' . $file ['savepath'] . $file ['savename'];
					if (! $product_imgurlDao->add ( array (
							'shop_id' => $shop_id,
							'imgurl' => $imgurl  
					) )) {
						$this->error ( "帐号已注册成功，添加图像文件失败，可登陆再修改！！" );
					} else {
						import ( "Fly.MyImage", "." );
						\MyImage::thumb ( "." . $imgurl, 480, 320);
					}
				}
				// 处理图像.....图像是上传后处理成统一格式还是显示的时候处理
			}
			$this->success ( "注册成功！" );
		} else {
			$this->error ( "注册失败！" );
		}
	}
}