<?php

namespace Common\Model;

use Think\Model\RelationModel;

class HomeShopModel extends RelationModel {
	// 定义主表
	protected $tableName = 'shop_home';
	
	// 定义关联关系
	protected $_link = array (
			'shop' => array (
					'mapping_type' => self::HAS_ONE,
					'class_name' => 'shop', // 要关联的模型类名
					'foreign_key' => 'id', // 关联的外键名称
					'as_fields' => 'shopname' 
			),
			
			'imgurl' => array(    
				'mapping_type'  => self::HAS_ONE,   
				'class_name'    => 'shop_imgurl', 			//要关联的模型类名  
				'foreign_key'   => 'shop_id',    			//关联的外键名称
// 				'mapping_name'  => 'articles',
				'mapping_name'  => 'imgurl',
// 				'mapping_fields'=> 'imageurl',
				'as_fields'=>'imgurl',
			),
	);
}