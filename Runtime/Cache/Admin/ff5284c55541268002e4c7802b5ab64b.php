<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>宇翔科技后台管理-商品管理</title>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="/myweb/xinyi/Apps/Admin/Public/js/admin-product.js"></script>
</head>
<body>
<div class="crumb-wrap">
			<span class="icon-font">&emsp;&ensp;<a href="<?php echo U('/Admin');?>">首页</a></span> 
			<span class="crumb-step">&gt; <a href="#">添加商品</a></span>
	</div>
	<div class="main-wrap">
		<div class="result-wrap">
			<form action="<?php echo U('/Admin/Product/add');?>" method="post" id="addFrom" name="addFrom" enctype="multipart/form-data">
				<table class="insert-tab" width="100%">
					<tbody>
						<tr>
							<th width="120"><span class="require-red">*</span>商品类型：</th>
							<td><select name="ptype_id" id="ptype_name" class="select_type">
									<option value="">===请选择分类===</option>
									<?php if(is_array($ptype)): foreach($ptype as $key=>$v): ?><option value="<?php echo ($v["id"]); ?>"><?php echo ($v["ptype_name"]); ?></option><?php endforeach; endif; ?>
							</select></td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>商品属性：</th>
							<td>
								<div name="checkbox_css" id = "checkbox_css">
									<?php if(is_array($pattr)): foreach($pattr as $key=>$v): ?><input  class="checkbox1" type="checkbox" name="pattr_id[]" id="pattr_id" value="<?php echo ($v["id"]); ?>">
										<span style="background:<?php echo ($v["color"]); ?>;color:#FFFFFF">[<?php echo ($v["name"]); ?>]</span>&emsp;<?php endforeach; endif; ?>
								</div>
							</td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>商品名称：</th>
							<td><input class="common-text" id="name" name="name"
								size="50" value="" type="text"></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>商品价格：</th>
							<td><input class="common-text" id="price" name="price"
								size="15" value="" type="text">元</td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>商品图像1：</th>
							<td><input class="common-text" name="proimg1" id="proimg1"
								type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span> <!--<input class="btn btn6" type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>-->
							</td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>商品图像2：</th>
							<td><input class="common-text" name="proimg2" id="proimg2"
								type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span> <!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>-->
							</td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>商品图像3：</th>
							<td><input class="common-text" name="proimg3" id="proimg3"
								type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span> <!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>--></td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>商品图像4：</th>
							<td><input class="common-text" name="proimg4" id="proimg4"
								type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span> <!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>--></td>
						</tr>
						<tr>
							<th><span class="require-red">&ensp;</span>商品图像5：</th>
							<td><input class="common-text" name="proimg5" id="proimg5"
								type="file" accept=".jpg,.png"><span class="require-red">支持格式PNG、JPG，分辨率：480*320。</span> <!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>--></td>
						</tr>
						<tr>
							<th><span class="require-red">*</span>商品描述：</th>
							<td><textarea name="describe" class="common-textarea"
									id="describe" cols="30" style="width: 98%;" rows="10"></textarea></td>
						</tr>
						<tr>
							<th></th>
							<td><input type="submit" class="btn btn-primary btn6 mr10"
								value="添加" id="addproduct"> <input type="reset"
								class="btn btn-primary btn6 mr10" value="重置"></td>
						</tr>
					</tbody>
				</table>
				<input type="hidden"  name="shopname" value="<?php echo ($shopname); ?>">
				<input type="hidden"  name="shop_id" value="<?php echo ($shop_id); ?>">
			</form>
		</div>
	</div>
</body>
</html>