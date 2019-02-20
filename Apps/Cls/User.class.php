<?php
class User{
	
	/**
	 * 验证数据库中的帐号是否存在。
	 * 返回值:帐号不存在近回NULL否则返回帐号。
	 * @param string $tabla 数据表名
	 * @param string $userName 帐号
	 * @param string $name_id 帐号在数据表中的字段名
	 */
	public static function verifyName($tabla='user',$userName,$name_filed="loginname"){
		return M($tabla)->field($name_filed)->where(array($name_filed=>$userName))->find();
	}
	
	/**
	 * 验证数据库中的帐号和密码是否正确。
	 * 返回值:-1，验证帐号不存在;0,验证密码不正确;验证通过返回用户在数据表中的记录。
	 * @param string $tabla 数据表名
	 * @param string $userName 帐号
	 * @param string $userPswd 密码
	 * @param string $name_id 帐号在数据表中的字段名
	 * @param string $pwsd_id 密码在数据表中的字段名
	 * 
	 */
	public static function verifyUser($tabla='user',$userName,$userPswd,$name_filed="loginname",$pwsd_filed="loginword"){
		$data=M($tabla)->where(array($name_filed=>$userName))->find();
		if(!$data) return -1;
		if($data[$pwsd_filed]!=md5($userPswd)) return 0;
		return $data;
	}
	/**
	 * 向数据表$table中插入一条数据$data。
	 * 成功返回插入的数据，失败返回false。
	 * @param unknown $table
	 * @param unknown $data
	 */
	public static function insertUser($table='user',$data){
		//初始化其它要插入的数据
		$data['level'] = 1;
		$data['logincount'] = 1;
		$data['regtime'] = time();
		//暂时使用用户名作为昵称。
		$data['nickname'] = $data ['nickname'] != null ? $data ['nickname'] : $data ['loginname'];
		//密码进行md5加密。
		$data['loginword'] = md5($data['loginword']);
		
		$ret=M($table)->add($data);
		if($ret){
			$data['id']=$ret;
			return $data;
		}else{
			return false;
		}
	}
	
	/**
	 * 插入帐号登陆信息。成功返回插入信息，失败返回false。
	 * @param unknown $table
	 * @param unknown $id
	 */
	public static function insertLog($table='user_log',$id,$user_id='user_id'){
		$data = array (
				$user_id => $id,
				'logintime' => time (),
				'loginIP'=>get_client_ip(),
		);
		if(M($table)->add($data)){
			return $data;
		}else{
			return false;
		}
	}
	
	/**
	 * 保存cookie
	 * @param unknown $data
	 * @param unknown $log
	 * @param number $time
	 */
	public static function saveCookie($data,$log,$time=3600){
		cookie ( 'loginname', $data ['loginname'], $time );
		cookie ( 'nickname', $data ['nickname'] != null ? $data ['nickname'] : $data ['loginname'], $time );
		cookie ( 'level', $data ['level'], $time );
		cookie ( 'logincount', $data ['logincount'] );
		cookie ( 'id', $log ['user_id'], $time );
		cookie ( 'logintime', $log ['logintime'], $time );
		cookie ( 'loginIP', $log ['loginIP'], $time );
	}
	/**
	 * 保存session
	 * @param unknown $data
	 * @param unknown $log
	 */
	public static function saveSession($data,$log){
		session ( 'loginname', $data ['loginname'] );
		session ( 'nickname', $data ['nickname'] != null ? $data ['nickname'] : $data ['loginname'] );
		session ( 'level', $data ['level'] );
		session ( 'logincount', $data ['logincount'] );
		session ( 'id', $log ['user_id'] );
		session ( 'logintime', $log ['logintime'] );
		session ( 'loginIP', $log ['loginIP'] );
		
	}
	
	
	/**
	 * App返回包含用户信息的json字符串 
	 * @param unknown $data
	 * @param unknown $log
	 */
	public static function echoUserJson($data,$log){
		$data ['nickname']= $data ['nickname'] != null ? $data ['nickname'] : $data ['loginname'];
		$data['user_id'] = $log ['user_id'] ;
		$data ['logintime']= $log ['logintime'];
		unset($data['loginword']);
		unset($data['openid']);
		unset($data['regtime']);
		unset($data['lock']);
		echo json_encode($data);
	}
	
	/**
	 * 计算用户等级
	 * @param unknown $count
	 * @param unknown $step
	 * @return number
	 */
	public static function computeLevel($count,$step=1.3) {
		$level = 0;
		$num = $count;
		while ( $num > 0 ) {
			$level ++;
			$num = $num - round ( pow ( $step, $level ) + 0.5 );
		}
		return $level;
	}
	
	/**
	 * 更新用户等级
	 * @param unknown $userDao
	 * @param unknown $post_user
	 * @param unknown $sql_user
	 */
	public static function upUserLevel($table='user',&$data){
		$data['level']= \User::computeLevel( ++ $data ['logincount']);
		return M($table)->save($data);
	}
	
}