<?php
namespace Admin\Controller;
use Think\Controller;
class ProductController extends AuthController {
	
	/**
	 * 显示添加商品页面
	 */
    public function index(){
    	$this->pattr=M('pattr')->select();
    	$this->ptype=M('ptype')->select();
    	$this->shopname = $_SESSION['shopname'];
    	$this->shop_id = $_SESSION[C('USER_AUTH_KEY')];
    	$this->display();
    }
    
    /**
     * 添加商品
     */
    public function add(){
    	if(!IS_POST) $this->error ("页面不存在！");
		$product = $_POST;
		$upload = new \Think\Upload (); // 实例化上传类
		$upload->maxSize = 3145728; // 设置附件上传大小
		$upload->exts = array (	'jpg','png'); // 设置附件上传类型
		$upload->rootPath = './UpLoads/';
		$upload->savePath = '/product/images/'; // 设置附件上传目录
			                                 
		// 更新product(产品)表
		//检测数据完整性
		$product['shopcount'] = 0;
		$pattr_ids = $product['pattr_id'];
		unset($product['pattr_id']);
		$product['addtime'] = time();
		$proinfoDao = M('product');
		$product_id = $proinfoDao->add($product);
		if(!$product_id) $this->error ("添加商品失败！");
		
		//更新pattr(产品属性)表
		$product_pattrDao = M('product_pattr');
		foreach ( $pattr_ids as $pattr_id ) {
			if(!$product_pattrDao->add(array('product_id'=>$product_id,'pattr_id'=>$pattr_id))){
				$this->error("添加商品属性失败！"); 
			}
		}
		                                               
		// 接受上传的图像文件
		$info = $upload->upload ();
		
		if (! $info) { // 上传错误提示错误信息
			$this->error ("上传图像文件失败！");
		} else {
			//更新product_imgurl(产品图像)表
			$product_imgurlDao = M('product_imgurl');
			foreach ( $info as $file ) {
				$imgurl = '/UpLoads'.$file ['savepath'] . $file ['savename'];
				
				//处理图像.....图像是上传后处理成统一格式还是显示的时候处理
				import ( "Fly.MyImage", "." );
				\MyImage::thumb ( "." . $imgurl, 400, 400);
				
				
				if(!$product_imgurlDao->add(array('product_id'=>$product_id,'imgurl'=>$imgurl))){
					$this->error("添加图像文件失败！");
				}
			}
			
			
		}
		$this->success("添加商品成功");
	}
	
	public function find(){
		$this->display('Product/find');
	}
    
}