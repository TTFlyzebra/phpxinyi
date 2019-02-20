<?php
return array (
		// '配置项'=>'配置值'
		//---RBAC配置-----/
		// 超级管理员名称
		'RBAC_SUPERADMIN' => 'flyzebra',
		// 超级管理员识别
		'ADMIN_AUTH_KEY' => 'superman',
		// 是否开启验证
		'USER_AUTH_ON' => true,
		// 验证类型（1：登陆验证，2：实时验证）
		'USER_AUTH_TYPE' => 2,
		// 用户认证识别号
		'USER_AUTH_KEY' => 'uid',
		// 无需认证的控制器
		'NOT_AUTH_CONTROLLER' => 'Register,Index',
		// 无需认证的动作方法
// 		'NOT_AUTH_ACTION' => 'login,logout,register',
		// 角色表名称
		'RBAC_ROLE_TABLE' => 'fz_role',
		// 角色与用户的中间表名称
		'RBAC_USER_TABLE' => 'fz_role_user',
		// 权限表名称
		'RBAC_ACCESS_TABLE' => 'fz_access',
		// 节点表名称
		'RBAC_NODE_TABLE' => 'fz_node', 
		//---RBAC配置-----/
		
		//配置__PUBLIC__
		'TMPL_PARSE_STRING'=>array(
				// 站点资源文件目录
				'__PUBLIC__' => __ROOT__.'/Apps/Admin/Public',
		),
		//默认错误跳转对应的模板文件
		'TMPL_ACTION_ERROR' => 'JumpHtml:error',//默认成功跳转对应的模板文件
		'TMPL_ACTION_SUCCESS' => 'JumpHtml:success',
);