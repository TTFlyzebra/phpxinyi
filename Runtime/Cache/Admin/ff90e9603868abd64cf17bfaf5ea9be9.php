<?php if (!defined('THINK_PATH')) exit();?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理</title>
<link rel="stylesheet" type="text/css" href="/myweb/xinyi/Apps/Admin/Public/css/node.css" />
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
	var ajaxurl = '<?php echo U("/Admin/Access");?>'
</script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-access.js"></script>
</head>
<body>
	<div class="crumb-wrap">
		<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> <span class="crumb-step">&gt; <a href="#">权限设置</a></span>
	</div>
	<form name="saveForm" id="saveForm" accept-charset="utf-8" action="<?php echo U('/Admin/Access/setAccess');?>" method="post">
		<div class="main-wrap">
			<div class="result-wrap">
				<div class="apps-title">
					<div class="prm-save">
						网站目录
						<select name="pid" id="pid" class="select-role">
							<option value="">请选择角色</option>
							<!-- 确定哪一项被选中 -->
							<?php if(is_array($role)): foreach($role as $key=>$v): if($v['id'] == $r_id): ?><option value="<?php echo ($v["id"]); ?>" selected="selected"><?php echo ($v["remark"]); ?></option>
							<?php else: ?>
							<option value="<?php echo ($v["id"]); ?>"><?php echo ($v["remark"]); ?></option><?php endif; endforeach; endif; ?>
						</select>
						<input type="submit" class="btn btn-primary" value="保存设置" id="save">
					</div>
					<?php if(is_array($node)): foreach($node as $key=>$v): ?><div class="apps">
						<div class="app">
							<?php echo ($v["remark"]); ?>
							<?php if($v["access"]): ?><input class="checkbox1" type="checkbox" name="nodeid[]" value="<?php echo ($v["id"]); ?>_1" id="1" checked="checked"> 
							<?php else: ?>
								<input class="checkbox1" type="checkbox" name="nodeid[]" value="<?php echo ($v["id"]); ?>_1" id="1"><?php endif; ?>
						</div>
						<?php if(is_array($v["child"])): foreach($v["child"] as $key=>$c): ?><div class="controls">
							<div class="control">
								<?php echo ($c["remark"]); ?>
								<?php if($c["access"]): ?><input class="checkbox1" type="checkbox" name="nodeid[]" value="<?php echo ($c["id"]); ?>_1" id="2" checked="checked"> 
								<?php else: ?>
									<input class="checkbox1" type="checkbox" name="nodeid[]" value="<?php echo ($c["id"]); ?>_1" id="2"><?php endif; ?>
							</div>
							<?php if(is_array($c["child"])): foreach($c["child"] as $key=>$m): ?><div class="method">
								<?php echo ($m["remark"]); ?>
								<?php if($m["access"]): ?><input class="checkbox1" type="checkbox" name="nodeid[]" value="<?php echo ($m["id"]); ?>_1" id="3" checked="checked"> 
								<?php else: ?>
									<input class="checkbox1" type="checkbox" name="nodeid[]" value="<?php echo ($m["id"]); ?>_1" id="3"><?php endif; ?>
							</div><?php endforeach; endif; ?>
						</div><?php endforeach; endif; ?>
					</div><?php endforeach; endif; ?>
				</div>
			</div>
		</div>
	</form>
</body>
</html>