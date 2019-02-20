$(document).ready(function() {
	$('#addproduct').click(function() {
		if ($('#ptype_name').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#ptype_name').focus();
			return false;
		}

//		if ($("input[name='pattr_id[]']:checked").length == 0) {
//			$('#checkbox_css').focus().css({
//				boxShadow : "0 0 3px #0000ef"
//
//			});
//			return false;
//		} else {
//			$('#checkbox_css').focus().css({
//				boxShadow : "0 0 0px #0000ef"
//			});
//		}

		if ($('#name').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#name').focus();
			return false;
		}
		if ($('#price').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#price').focus();
			return false;
		}
		
		//检查输入是否为数字
		if (isNaN($('#price').val())) {
			$('#price').focus();
			return false;
		}
		
		//检查输入的小数不能超过2位
		if ($('#price').val().split(".").length > 1
				&& $('#price').val().split(".")[1].length > 2) {
			$('#price').focus();
			return false
		}

		if ($('#proimg1').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#proimg1').focus();
			return false;
		}
//		if ($('#proimg2').val() == "") {
//			// alert("请选择分类！");
//			// document.getElementById("message").innerHTML = "名称不能为空！";
//			$('#proimg2').focus();
//			return false;
//		}
//		if ($('#proimg3').val() == "") {
//			// alert("请选择分类！");
//			// document.getElementById("message").innerHTML = "名称不能为空！";
//			$('#proimg3').focus();
//			return false;
//		}
		if ($('#describe').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#describe').focus();
			return false;
		}
		$('#addFrom').submit();
	});
});
