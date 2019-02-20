<?php
namespace Common\Model;
use Think\Model\RelationModel;
class ProductAllModel extends RelationModel{
	//定义主表
	protected $tableName = 'product';
	
	//定义关联关系
	protected $_link = array(
		'imgurl' => array(    
				'mapping_type'  => self::HAS_ONE,   
				'class_name'    => 'product_imgurl', 			//要关联的模型类名  
				'foreign_key'   => 'product_id',    			//关联的外键名称
// 				'mapping_name'  => 'articles',
				'mapping_name'  => 'imgurl',
				'mapping_order' => 'product_id desc',   		//关联查询的排序
// 				'mapping_fields'=> 'imageurl',
				'as_fields'=>'imgurl',
		),
		'pattr'=>array(
				'mapping_type' => self::MANY_TO_MANY,
				'class_name'  =>  'pattr',
				'foreign_key'=>'product_id',
				'relation_key'=>'pattr_id',
				'relation_table'=>'fz_product_pattr',
				'mapping_fields'=>'name,color',
		),
			
		'ptype_name'=>array(
				'mapping_type'  => self::BELONGS_TO,
				'class_name'    => 'ptype', 			//要关联的模型类名
				'foreign_key'   => 'ptype_id',    			//关联的外键名称
// 				'mapping_name'  => 'ptype_name',
				'mapping_fields'=> 'ptype_name',
				'as_fields'=>'ptype_name',
		),
			
	);
}