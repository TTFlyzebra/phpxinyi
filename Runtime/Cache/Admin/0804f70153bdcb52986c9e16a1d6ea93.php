<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript"> var ajaxurl= '<?php echo U("/Admin/Attr/del","","");?>'</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-attr.js"></script>
</head>
<body>
<div class="crumb-wrap">
			<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> 
			<span class="crumb-step">&gt; <a href="#">商品属性</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<table class="admin-tab" width="900px">
				<tbody align="right">
					<tr style="background:#e8e8e8">
						<th width="30%">属性名称</th>
						<th width="30%">加亮颜色</th>
						<th width="30%">执行操作</th>
					</tr>
					<?php if(is_array($pattr)): foreach($pattr as $key=>$v): ?><tr>
						<th><?php echo ($v["name"]); ?></th>
						<th><div style="margin-left: 135px;vertical-align:middle;width:20px;height:20px;background:<?php echo ($v["color"]); ?>"></div></th>
						<th><a href="javascript:postdel('<?php echo ($v["id"]); ?>','<?php echo ($v["name"]); ?>','<?php echo ($v["color"]); ?>');"><i class="icon-font">&#xe037;删除</i></a></th>
					</tr><?php endforeach; endif; ?>
				</tbody>
			</table>
			<br>
			<form name="addform" id="addform" accept-charset="utf-8" action="<?php echo U('/Admin/Attr/add');?>" method="post">
				<table class="admin-tab" width="900px">
					<tbody>
						<tr>
							<th style="background:#e8e8e8" colspan="2">添加属性</th>
						</tr>
						<tr>
							<th width = "200px"><span class="require-red">*</span>属性名称：</th>
							<td>
								<input class="common-text" id="name" name="name" size="40" value="" type="text">
							</td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>属性颜色：</th>
							<td>
								<input class="common-text" id="color" name="color" size="15" value="#FF0000" type="text">&emsp;以#开头的6位16进制
							</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<input type="submit"class="btn btn-primary btn6 mr10" value="添加" id="add"> 
								<input type="reset"	class="btn btn-primary btn6 mr10" value="重置">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</body>
</html>