<?php if (!defined('THINK_PATH')) exit();?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<link rel="stylesheet" type="text/css" href="/myweb/xinyi/Apps/Admin/Public/css/node.css" />
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript"> var delurl= '<?php echo U("/Admin/Node/del");?>'</script>
<script type="text/javascript"> var statusurl= '<?php echo U("/Admin/Node/status");?>'</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-node.js"></script>
</head>
<body>
<div class="crumb-wrap">
			<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> 
			<span class="crumb-step">&gt; <a href="#">节点管理</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<div class="apps-title">网站目录<a href="javascript:addDlg('','0','1');">＋</a>
				<?php if(is_array($node)): foreach($node as $key=>$v): ?><div class="apps">
					<div class="app"><?php echo ($v["remark"]); ?><!-- 
						 --><a href="javascript:addDlg('<?php echo ($v["remark"]); ?>','<?php echo ($v["id"]); ?>','2');">＋</a><!-- 
						 --><?php if($v['child']==null): ?><a href="javascript:delDlg('<?php echo ($v["id"]); ?>','<?php echo ($v["name"]); ?>','<?php echo ($v["remark"]); ?>','<?php echo ($v["status"]); ?>','<?php echo ($v["pid"]); ?>','<?php echo ($v["level"]); ?>');">－</a><!-- 
						 --><?php endif; ?><a href="javascript:editDlg('<?php echo ($v["id"]); ?>','<?php echo ($v["name"]); ?>','<?php echo ($v["remark"]); ?>','1','<?php echo ($v["pid"]); ?>','<?php echo ($v["level"]); ?>','');">Ｅ</a>
					</div>
					<?php if(is_array($v["child"])): foreach($v["child"] as $key=>$c): ?><div class="controls">
						<div class="control"><?php echo ($c["remark"]); ?><!-- 
						--><a href="javascript:addDlg('<?php echo ($c["remark"]); ?>','<?php echo ($c["id"]); ?>','3');">＋</a><!-- 
						--><?php if($c['child']==null): ?><a href="javascript:delDlg('<?php echo ($c["id"]); ?>','<?php echo ($c["name"]); ?>','<?php echo ($c["remark"]); ?>','<?php echo ($v["status"]); ?>','<?php echo ($c["pid"]); ?>','<?php echo ($c["level"]); ?>');">－</a><!-- 
						--><?php endif; ?><a href="javascript:editDlg('<?php echo ($c["id"]); ?>','<?php echo ($c["name"]); ?>','<?php echo ($c["remark"]); ?>','1','<?php echo ($c["pid"]); ?>','<?php echo ($c["level"]); ?>','<?php echo ($v["remark"]); ?>');">Ｅ</a>
						</div>	
						<?php if(is_array($c["child"])): foreach($c["child"] as $key=>$m): ?><div class="method"><?php echo ($m["remark"]); ?><!-- 
						--><a href="javascript:delDlg('<?php echo ($m["id"]); ?>','<?php echo ($m["name"]); ?>','<?php echo ($m["remark"]); ?>','<?php echo ($v["status"]); ?>','<?php echo ($m["pid"]); ?>','<?php echo ($m["level"]); ?>');">－</a><!-- 
						--><a href="javascript:editDlg('<?php echo ($m["id"]); ?>','<?php echo ($m["name"]); ?>','<?php echo ($m["remark"]); ?>','1','<?php echo ($m["pid"]); ?>','<?php echo ($m["level"]); ?>','<?php echo ($c["remark"]); ?>');">Ｅ</a>
						</div><?php endforeach; endif; ?>
					</div><?php endforeach; endif; ?>
				</div><?php endforeach; endif; ?>
			</div>
		</div>
	</div>
	<!-- 弹出菜单 Start-->
	<div class="node-mask"></div>
	<!-- 添加菜单 Start-->
	<div class="node-dlg-add">
		<form name="addFrom" id="addFrom" accept-charset="utf-8" action="<?php echo U('Admin/Node/add');?>" method="post">
			<table class="admin-tab" width="450px">
				<tbody>
				<div class="node-dlg-title">添加节点
					<div class="node-dlg-title-close"><a href="javascript:closeAddDlg();" title="关闭" >×</a></div>
				</div>
					<tr>
						<th><span class="require-red">*</span>节点名称：</th>
						<td>
							<input class="common-text" type="text" id="node_name" name="node_name" size="20" value="">
							</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>节点描述：</th>
						<td>
							<input class="common-text" type="text" id="node_remark" name="node_remark" size="40" value="">
						</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>是否启用：</th>
						<td>
							<input class="common-text" id="node_status" name="node_status" value="1" type="radio" checked = "checked">开启
								<input class="common-text" id="node_status" name="node_status" value="0" type="radio">关闭
						</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>父&ensp;节&ensp;点：</th>
						<td>
							<input class="common-text" type="hidden" id="node_pid" name="node_pid" size="20" value="1">
							<input class="common-text" type="text" id="parent_name1" size="20" value="" readonly="true">
						</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>应用级别：</th>
						<td>
							<input class="common-text" type="text" id="node_level" name="node_level" size="20" value="1" readonly="true">
						</td>
						</tr>
					<tr>
						<th colspan="2">
							<input type="submit"class="btn btn-primary btn6 mr10" value="添加" id="add"> 
							<input type="reset"	class="btn btn-primary btn6 mr10" value="重置">
						</th>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- 修改菜单 Start-->
	<div class="node-dlg-edit">
		<form name="addFrom" id="addFrom" accept-charset="utf-8" action="<?php echo U('/Admin/Node/edit');?>" method="post">
			<input type="hidden" id="edit_id" name="node_id" value="0">
			<table class="admin-tab" width="450px">
				<tbody>
				<div class="node-dlg-title">修改节点
					<div class="node-dlg-title-close"><a href="javascript:closeEditDlg();" title="关闭" >×</a></div>
				</div>
					<tr>
						<th><span class="require-red">*</span>节点名称：</th>
						<td>
							<input class="common-text" type="text" id="edit_name" name="node_name" size="20" value="">
							</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>节点描述：</th>
						<td>
							<input class="common-text" type="text" id="edit_remark" name="node_remark" size="40" value="">
						</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>是否启用：</th>
						<td>
							<input class="common-text" id="edit_status" name="node_status" value="1" type="radio" checked = "checked">开启
								<input class="common-text" id="edit_status" name="node_status" value="0" type="radio">关闭
						</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>父&ensp;节&ensp;点：</th>
						<td>
							<input class="common-text" type="hidden" id="edit_pid" name="node_pid" size="20" value="1" readonly="true">
							<input class="common-text" type="text" id="parent_name2" size="20" value="" readonly="true">
						</td>
					</tr>
					<tr>
						<th><span class="require-red">*</span>应用级别：</th>
						<td>
							<input class="common-text" type="text" id="edit_level" name="node_level" size="20" value="1" readonly="true">
						</td>
						</tr>
					<tr>
						<th colspan="2">
							<input type="submit"class="btn btn-primary btn6 mr10" value="修改" id="add"> 
							<input type="reset"	class="btn btn-primary btn6 mr10" value="重置">
						</th>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
<!-- 弹出菜单 End -->
</body>
</html>