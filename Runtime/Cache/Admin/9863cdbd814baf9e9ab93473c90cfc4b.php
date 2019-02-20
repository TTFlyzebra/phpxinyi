<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技登陆界面</title>
<link rel="stylesheet" type="text/css" href="/myweb/xinyi/Apps/Admin/Public/css/login.css" />
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/md5.js"></script>
<script type="text/javascript"> var ajaxurl= '<?php echo U("/Admin/Ajax/log");?>'</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-login.js"></script>
</head>
<body>
<div class="login-mask"></div>
<div class="login-center">
	<form name="loginform" id="loginform" accept-charset="utf-8" action="<?php echo U('/Admin/Login/login');?>"  method="post">
		<table class="login-tab" width=100%>
			<tbody>
				<tr>
					<th colspan="2">管理员登陆</th>
				</tr>
				<tr>
					<td style="width:35%;text-align:right">帐号：</td>
					<td><input class="common-text" id="shopname" name="shopname" size="20" value="" type="text"></td>
				</tr>
				<tr>
					<td style="text-align:right">密码：</td>
					<td><input class="common-text" id="password" name="password" size="20" value="" type="password"></td>
				</tr>
				<tr>
					<th colspan="2" >
						<input type="button" class="btn btn-primary btn100" value="登陆" id="login"> 
						<input type="reset"  class="btn btn-primary btn100" value="重置"></th>
				</tr>
				<tr>
					<td style="text-align:center" colspan="2">
						<div id="message"></div>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>