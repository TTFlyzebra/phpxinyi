<?php
return array (
		// 数据库配置信息
		'DB_TYPE' => 'mysql', // 数据库类型
		'DB_HOST' => '127.0.0.1', // 服务器地址
		'DB_NAME' => 'xinyi', // 数据库名
		'DB_USER' => 'root', // 用户名
		'DB_PWD' => 'flyme', // 密码
		'DB_PORT' => 3306, // 端口
		'DB_PREFIX' => 'fz_', // 数据库表前缀
		'DB_CHARSET' => 'utf8', // 字符集
		
		//其它配置
		'DEFAULT_MODULE' => 'Home',// 默认模块
		'URL_MODEL' => '2', // URL模式
		'SESSION_AUTO_START' => true, // 是否开启session
		'URL_CASE_INSENSITIVE' => false,  //false为默认项，表示URL访问区分大小写
// 		'MODULE_ALLOW_LIST' => array('Home','Admin','API'),//允许访问的模块
		'URL_HTML_SUFFIX' => '',//修改伪.html后缀
				
		
		//Cookie设置
		
// 		'COOKIE_EXPIRE'         =>  0,    // Cookie有效期
// 		'COOKIE_DOMAIN'         =>  '',      // Cookie有效域名
// 		'COOKIE_PATH'           =>  '/',     // Cookie路径
// 		'COOKIE_PREFIX'         =>  '',      // Cookie前缀 避免冲突
// 		'COOKIE_HTTPONLY'       =>  '',     // Cookie的httponly属性 3.2.2新增
		
// 		//数据缓存设置		
// 		'DATA_CACHE_TIME'       =>  0,      // 数据缓存有效期 0表示永久缓存
// 		'DATA_CACHE_COMPRESS'   =>  false,   // 数据缓存是否压缩缓存
// 		'DATA_CACHE_CHECK'      =>  false,   // 数据缓存是否校验缓存
// 		'DATA_CACHE_PREFIX'     =>  '',     // 缓存前缀
// 		'DATA_CACHE_TYPE'       =>  'File',  // 数据缓存类型,支持:File|Db|Apc|Memcache|Shmop|Sqlite|Xcache|Apachenote|Eaccelerator
// 		'DATA_CACHE_PATH'       =>  TEMP_PATH,// 缓存路径设置 (仅对File方式缓存有效)
// 		'DATA_CACHE_SUBDIR'     =>  false,    // 使用子目录缓存 (自动根据缓存标识的哈希创建子目录)
// 		'DATA_PATH_LEVEL'       =>  1,        // 子目录缓存级别
);	
?>