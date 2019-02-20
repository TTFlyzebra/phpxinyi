<?php

function compute_level($count,$step) {
	$level = 0;
	$num = $count;
	while ( $num > 0 ) {
		$level ++;
		$num = $num - round ( pow ( $step, $level ) + 0.5 );
	}
	return $level;
}

function result_user($user) {
	unset ( $user ['regtime'] );
	unset ( $user ['loginword'] );
	return  $user;
}

/**
 * logininfo表插入数据
 * @param unknown $id
 */
function insertLogin($id) { 
	if ($id && $id != "") {
		$loginDao = M ( 'ulogininfo' );
		$logininfo = array (
				'user_id' => $id,
				'clientIP' => get_client_ip (),
				'logintime' => time () 
		);
		$loginDao->add ( $logininfo );
	}
}


/**
 * userinfo表更新数据
 * @param unknown $userDao
 * @param unknown $post_user
 * @param unknown $sql_user
 */
function upUser($userDao,$post_user,&$sql_user){
	$sql_user ['level'] = compute_level ( ++ $sql_user ['logincount'], 1.3 );
	$sql_user ['lastlogintime'] = $sql_user ['logintime'];
	$sql_user ['logintime'] = time ();
	return $userDao->save( $sql_user );
}

/**
 * userinfo表插入数据
 * @param unknown $post_user
 * @param unknown $userDao
 */
function insertUser(&$post_user,$userDao){
	$post_user ['level'] = 1;
	$post_user ['logincount'] = 1;
	$post_user ['regtime'] = time ();
	$post_user ['logintime'] = $post_user ['regtime'];
	$post_user ['lastlogintime'] = $post_user ['regtime'];
	return $userDao->add ( $post_user );
}


/**
 * post提交数据
 * @param unknown $url
 * @param unknown $data
 * @return mixed
 */
function vpost($url,$data){ // 模拟提交数据函数
	$curl = curl_init();  // 启动一个CURL会话
	curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查
	curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1); // 从证书中检查SSL加密算法是否存在
	curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']); // 模拟用户使用的浏览器
	curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转
	curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
	curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求
	curl_setopt($curl, CURLOPT_POSTFIELDS, $data); // Post提交的数据包
	curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
	curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回
	
	//https请求 不验证证书和host
// 	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
// 	curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
	$result = curl_exec($curl); // 执行操作
	if (curl_errno($curl)) {
		echo 'Errno'.curl_error($curl);//捕抓异常
	}
	curl_close($curl); // 关闭CURL会话
	return $result; // 返回数据
}

function vget($url, $params) {
	if($params){
		$url = ($url . "?" . $params);
	}
	$ch = curl_init ();
	curl_setopt ( $ch, CURLOPT_URL, $url );
	curl_setopt ( $ch, CURLOPT_SSL_VERIFYPEER, false );
	curl_setopt ( $ch, CURLOPT_SSL_VERIFYHOST, false );
	$result = curl_exec ( $ch );
	return $result;
}