<?php if (!defined('THINK_PATH')) exit();?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript"> var ajaxurl= '<?php echo U("/Admin/Type/del","","");?>'</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-type.js"></script>
</head>
<body>
<div class="crumb-wrap">
			<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> 
			<span class="crumb-step">&gt; <a href="#">商品分类</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<table class="admin-tab" width="900px">
				<tbody align="right">
					<tr style="background:#e8e8e8">
						<th width=%25>分类名称</th>
						<th width=%25>分类层次</th>
						<th width=%25>排列顺序</th>
						<th width=%25>执行操作</th>
					</tr>
					<?php if(is_array($ptype)): foreach($ptype as $key=>$v): ?><tr>
						<th><?php echo ($v["ptype_name"]); ?></th>
						<th><?php echo ($v["pid"]); ?></th>
						<th><?php echo ($v["order"]); ?></th>
						<th><a href="javascript:postdel('<?php echo ($v["id"]); ?>','<?php echo ($v["name"]); ?>','<?php echo ($v["pid"]); ?>','<?php echo ($v["order"]); ?>');"><i class="icon-font">&#xe037;删除</i></a></th>
					</tr><?php endforeach; endif; ?>
				</tbody>
			</table>
			<br>
			<form name="addFrom" id="addFrom" accept-charset="utf-8" action="<?php echo U('/Admin/Type/add');?>" method="post">
				<table class="admin-tab" width="900px">
					<tbody>
						<tr>
							<th style="width:838px;background:#e8e8e8" colspan="2">添加分类</th>
						</tr>
						<tr>
							<th width = "200px"><span class="require-red">*</span>分类名称：</th>
							<td>
								<input class="common-text" id="ptype_name" name="ptype_name" size="40" value="" type="text">
							</td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>分类层次：</th>
							<td>
								<input class="common-text" id="pid"	name="pid" size="40" value="0" type="text">
							</td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>排列顺序：</th>
							<td>
								<input class="common-text" id="order" name="order" size="40" value="100" type="text">
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