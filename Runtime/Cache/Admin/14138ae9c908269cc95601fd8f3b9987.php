<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/md5.js"></script>
<script type="text/javascript"> var ajaxurl= '<?php echo U("/Admin/Ajax/reg");?>'</script>
<link rel="stylesheet" type="text/css" href="/myweb/xinyi/Apps/Admin/Public/css/admin.css" />
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-register.js"></script>
</head>
<body>
	<div class="crumb-wrap">
		<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> <span class="crumb-step">&gt; <a href="#">注册商店</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<form action="<?php echo U('/Admin/Register/register');?>" method="post" id="registerFrom" name="registerFrom" enctype="multipart/form-data">
				<div id="message" class="msg">注册提示信息！</div>
				<table class="insert-tab" width="100%">
					<tbody>
						<tr>
							<th width="120"><span class="require-red">*</span>商店名称：</th>
							<td><input class="common-text" id="shopname" name="shopname" size="50" value="" type="text"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>店主姓名：</th>
							<td><input class="common-text" id="peoplename" name="peoplename" size="20" value="" type="text"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>密&emsp;&emsp;码：</th>
							<td><input class="common-text" id="loginword" name="loginword" size="20" value="" type="password"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>确认密码：</th>
							<td><input class="common-text" id="loginword2" size="20" value="" type="password"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>店主手机：</th>
							<td><input class="common-text" id="peoplephone" name="peoplephone" size="20" value="" type="text"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>商店电话：</th>
							<td><input class="common-text" id="shopphone" name="shopphone" size="20" value="" type="text"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>商店地址：</th>
							<td><input class="common-text" id="address" name="address" size="100" value="" type="text"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>展示图像1：</th>
							<td><input class="common-text" name="proimg1" id="proimg1" type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span></td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>展示图像2：</th>
							<td><input class="common-text" name="proimg2" id="proimg2" type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span></td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>展示图像3：</th>
							<td><input class="common-text" name="proimg3" id="proimg3" type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>备注信息：</th>
							<td><textarea class="common-textarea" name="describe" id="describe" cols="30" style="width: 98%;" rows="10"></textarea></td>
						</tr>
						<tr>
							<th></th>
							<td><input type="button" class="btn btn-primary btn6 mr10" value="注册" id="register"> <input type="reset" class="btn btn-primary btn6 mr10" value="重置"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</body>
</html>