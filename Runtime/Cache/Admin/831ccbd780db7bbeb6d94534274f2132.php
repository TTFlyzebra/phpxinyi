<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
	var ajaxadd = '<?php echo U("/Admin/HomeShop/add");?>'
	var ajaxdel = '<?php echo U("/Admin/HomeShop/del");?>'
</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-homeshop.js"></script>
</head>
<body>
	<div class="crumb-wrap">
		<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> <span class="crumb-step">&gt; <a href="#">首页推荐商店设置</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<table class="admin-tab" width="100%">
				<tbody align="right">
					<tr style="background:#00e8e8">
						<th colspan="7">首页展示商店</th>
					</tr>
					<tr style="background:#e8e8e8">
						<th width="14%">商店名称</th>
						<th width="8%">店长姓名</th>
						<th width="10%">店长电话</th>
						<th width="10%">商店电话</th>
						<th width="13%">注册时间</th>
						<th >商店地址</th>
						<th width="12%">执行操作</th>
					</tr>
					<?php if(is_array($shops)): foreach($shops as $key=>$v): if($v['show'] == 1): ?><tr>
						<td><?php echo ($v["shopname"]); ?></td>
						<th><?php echo ($v["peoplename"]); ?></th>
						<th><?php echo ($v["peoplephone"]); ?></th>
						<th><?php echo ($v["shopphone"]); ?></th>
						<th><?php echo (date("Y-m-d H:i",$v["regtime"])); ?></th>
						<td><?php echo ($v["address"]); ?></td>
						<th><a href="javascript:delShow('<?php echo ($v["id"]); ?>');"><i class="btn btn-primary">取消展示</i></a></th>
					</tr><?php endif; endforeach; endif; ?>
				</tbody>
			</table>
			<br>
			<!--input class="common-text" placeholder="商店名称" name="keywords" size="40" value="" id="" type="text">
			<input class="btn btn-primary btn2" name="sub" value="搜索商店" type="submit"-->
			<table class="admin-tab" width="100%">
				<tbody align="right">
					<tr style="background:#00e8e8">
						<th colspan="7">首页未展示商店</th>
					</tr>
					<tr style="background:#e8e8e8">
						<th width="14%">商店名称</th>
						<th width="8%">店长姓名</th>
						<th width="10%">店长电话</th>
						<th width="10%">商店电话</th>
						<th width="13%">注册时间</th>
						<th >商店地址</th>
						<th width="12%">执行操作</th>
					</tr>
					<?php if(is_array($shops)): foreach($shops as $key=>$v): if($v['show'] != 1): ?><tr>
						<td><?php echo ($v["shopname"]); ?></td>
						<th><?php echo ($v["peoplename"]); ?></th>
						<th><?php echo ($v["peoplephone"]); ?></th>
						<th><?php echo ($v["shopphone"]); ?></th>
						<th><?php echo (date("Y-m-d H:i",$v["regtime"])); ?></th>
						<td><?php echo ($v["address"]); ?></td>
						<th><a href="javascript:addShow('<?php echo ($v["id"]); ?>');"><i class="btn btn-primary">首页展示</i></a></th>
					</tr><?php endif; endforeach; endif; ?>
				</tbody>
			</table>
		</div>
	</div>
	<div class="dlg-mask"></div>
	<!-- 添加菜单 Start-->
	<div class="dlg-content">正在向服务器提交请求.....</div>
</body>
</html>