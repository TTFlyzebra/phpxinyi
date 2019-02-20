<?php if (!defined('THINK_PATH')) exit();?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript"> var delurl= '<?php echo U("/Admin/Role/del");?>'</script>
<script type="text/javascript"> var statusurl= '<?php echo U("/Admin/Role/status");?>'</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-role.js"></script>
</head>
<body>
<div class="crumb-wrap">
			<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> 
			<span class="crumb-step">&gt; <a href="#">添加角色</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<table class="admin-tab" width="900px">
				<tbody align="right">
					<tr style="background:#e8e8e8">
						<th width=25%>角色名称</th>
						<th width=25%>角色描述</th>
						<th width=25%>使用状态</th>
						<th width=25%>执行操作</th>
					</tr>
					<?php if(is_array($role)): foreach($role as $key=>$v): ?><tr>
						<th><?php echo ($v["name"]); ?></th>
						<th><?php echo ($v["remark"]); ?></th>
						<th><?php if($v["status"]): ?>启用<?php else: ?>停用<?php endif; ?></th>
						<th>
							<a href="javascript:poststatus('<?php echo ($v["id"]); ?>','<?php echo ($v["name"]); ?>','<?php echo ($v["pid"]); ?>','<?php echo ($v["status"]); ?>','<?php echo ($v["remark"]); ?>');">
								<i class="icon-font">
									&#xe045;<?php if($v["status"]): ?>停用<?php else: ?>启用<?php endif; ?>
								</i>
							</a>&ensp;
							<a href="javascript:postdel('<?php echo ($v["id"]); ?>','<?php echo ($v["name"]); ?>','<?php echo ($v["pid"]); ?>','<?php echo ($v["status"]); ?>','<?php echo ($v["remark"]); ?>');">
								<i class="icon-font">&#xe037;删除</i>
							</a>
						</th>
					</tr><?php endforeach; endif; ?>
				</tbody>
			</table>
			<br>
			<form name="addFrom" id="addFrom" accept-charset="utf-8" action="<?php echo U('/Admin/Role/add');?>" method="post">
				<table class="admin-tab" width="900px">
					<tbody>
						<tr>
							<th style="background:#e8e8e8" colspan="2">添加角色</th>
						</tr>
						<tr>
							<th><span class="require-red">*</span>角色名称：</th>
							<td>
								<input class="common-text" type="text" id="role_name" name="role_name" size="40" value="">
							</td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>角色描述：</th>
							<td>
								<input class="common-text" type="text" id="role_remark" name="role_remark" size="40" value="">
							</td>
						</tr>
						<tr>
						
							<th><span class="require-red">*</span>是否启用：</th>
							<td>
								<input class="common-text" id="role_status" name="role_status" value="1" type="radio" checked = "checked">开启
								<input class="common-text" id="role_status" name="role_status" value="0" type="radio">关闭
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