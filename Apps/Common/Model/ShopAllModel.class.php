<?php
namespace Common\Model;
use Think\Model\RelationModel;
class ShopAllModel extends RelationModel{
	//定义主表
	protected $tableName = 'shop';
	
	//定义关联关系
	protected $_link = array(
		'imgurl' => array(    
				'mapping_type'  => self::HAS_ONE,   
				'class_name'    => 'shop_imgurl', 			//要关联的模型类名  
				'foreign_key'   => 'shop_id',    			//关联的外键名称
// 				'mapping_name'  => 'articles',
				'mapping_name'  => 'imgurl',
// 				'mapping_fields'=> 'imageurl',
				'as_fields'=>'imgurl',
		),	
			
		'show'=>array(
				'mapping_type' => self::HAS_ONE,
				'class_name'    => 'shop_home', 			//要关联的模型类名
				'foreign_key'   => 'shop_id',    			//关联的外键名称
				'mapping_fields'=> 'show',
				'as_fields'=>'show',
		)
	);
}