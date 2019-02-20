<?php if (!defined('THINK_PATH')) exit();?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
	var ajaxurl = '<?php echo U("/Admin/Verify/verify");?>'
</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-verify.js"></script>
</head>
<body>
	<div class="crumb-wrap">
			<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> 
			<span class="crumb-step">&gt; <a href="#">申核用户</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<table class="admin-tab" width="100%">
				<tbody align="right">
					<tr style="background: #efefef">
						<th width="5%">ID</th>
						<th width="10%">商店名称</th>
						<th width="8%">店主姓名</th>
						<th width="10%">店主手机</th>
						<th width="10%">商店电话</th>
						<th>商店地址</th>
						<th width="14%">注册时间</th>
						<th width="15%">申核操作</th>
					</tr>
					<?php if(is_array($shop)): foreach($shop as $key=>$s): ?><tr>
						<th><?php echo ($s["id"]); ?></th>
						<td><?php echo ($s["shopname"]); ?></td>
						<td><?php echo ($s["peoplename"]); ?></td>
						<th><?php echo ($s["peoplephone"]); ?></th>
						<th><?php echo ($s["shopphone"]); ?></th>
						<td><?php echo ($s["address"]); ?></td>
						<th><?php echo (date("Y-m-d H:i",$s["regtime"])); ?></th>
						<th><select style="padding-bottom: 5px; height: 26px; font-size: 14px" name="role<?php echo ($s["id"]); ?>" id="role<?php echo ($s["id"]); ?>">
								<option>未申核</option>
								<?php if(is_array($role)): foreach($role as $key=>$r): if($r['id'] == $s['role_id']): ?><option value="<?php echo ($r["id"]); ?>" selected="selected"><?php echo ($r["remark"]); ?></option>
								<?php else: ?>
								<option value="<?php echo ($r["id"]); ?>"><?php echo ($r["remark"]); ?></option><?php endif; endforeach; endif; ?>
							</select><input type="button" class="btn btn-primary" value="通过申核" onclick="javascript:verify('<?php echo ($s["id"]); ?>');">
						</th>
					</tr><?php endforeach; endif; ?>
				</tbody>
			</table>
		</div>
	</div>
	<div class="dlg-mask"></div>
	<!-- 添加菜单 Start-->
	<div class="dlg-content">正在向服务器提交请求.....</div>
</body>
</html>