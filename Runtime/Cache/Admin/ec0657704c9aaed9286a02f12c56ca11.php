<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理-移动端管理</title>
<link rel="stylesheet" type="text/css" href="/myweb/xinyi/Apps/Admin/Public/css/welcome.css" />
<link rel="stylesheet" type="text/css" href="/myweb/xinyi/Apps/Admin/Public/css/font-awesome.min.css" />
<script type="text/javascript"> var imgnum = <?php echo ($imgnum); ?>;</script>
<style type="text/css">
.imgBox {
	position: absolute;
	clear: both;
	list-style-type: none;
	width: <?php echo ($imgnum*480); ?>px;
}
.currentNum {
	position: absolute;
	left: 50%;
	top: 780px;
	width: 480px;
	height: 11px;
	margin-left: -<?php echo ($imgnum*7); ?>px;
}
</style>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-welcome.js"></script>
</head>
<body>
	<div class="crumb-wrap">
		<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> <span class="crumb-step">&gt; <a href="#">移动端首页广告管理</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<div class="showimgs">
				<div class="content">
					<ul class="imgBox">
						<?php if(is_array($images)): foreach($images as $key=>$v): ?><li>
							<a href="javascript:delDlg('<?php echo ($v["id"]); ?>')"><img src="<?php echo U($v['imageurl']);?>"></a>
						</li><?php endforeach; endif; ?>
					</ul>
					<div class="currentNum">
						<span class="imgNum mark-color"></span>
						<?php for($i=1;$i<$imgnum;$i++){?>
						<span class="imgNum"></span>
						<?php } ?>
					</div>
					<div class="control to-left">
						<i class="fa fa-angle-left"></i>
					</div>
					<!-- div class="control to-center"><a>删除</a></div-->
					<div class="control to-right">
						<i class="fa fa-angle-right"></i>
					</div>
					<div class="dlg-content1">
						<form name="delFrom" id="delFrom" accept-charset="utf-8" action="<?php echo U('/Admin/welcome/del');?>" method="post">
							<input type="hidden" value="" name="id" id="imageID">
							你确定要删除该图像吗
							<table width="100%">
								<tr>
									<td><input type="submit" class="btn btn-primary" value="删除"></td>
									<td><input type="button" class="btn btn-primary" onclick="javascript:closeDlg()" value="取消"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
			<form action="<?php echo U('/Admin/Welcome/add');?>" method="post" id="addFrom" name="addFrom" enctype="multipart/form-data">
				<table class="insert-tab" width="100%">
					<tbody>
						<tr>
							<th><span class="require-red">*</span>上传图像：</th>
							<td><input class="common-text" name="proimg1" id="proimg1" type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*800。</span> <!--<input class="btn btn6" type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>-->
							</td>
							<td><input type="submit" class="btn btn-primary btn6 mr10" value="上传" id="add"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<!-- 添加菜单 Start-->
	<script src="/myweb/xinyi/Apps/Admin/Public/js/img-show.js"></script>
</body>
</html>