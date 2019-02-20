<?php
namespace Common\Model;
use Think\Model\RelationModel;
class ShopRoleModel extends RelationModel{
	//定义主表
	protected $tableName = 'shop';
	
	//定义关联关系
	protected $_link = array(
		'role'=>array(
				'mapping_type' => self::MANY_TO_MANY,
				'class_name'  =>  'role',
				'foreign_key'=>'user_id',
				'relation_key'=>'role_id',
				'relation_table'=>'fz_role_user',
				'mapping_fields'=>'id,remark'
		)	
	);
}