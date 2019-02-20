$(document).ready(function() {
	$('#register').click(function() {
		if ($('#shopname').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#shopname').focus();
			return false;
		}
		
		if ($('#peoplename').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#peoplename').focus();
			return false;
		}
		if ($('#loginword').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#loginword').focus();
			return false;
		}
		
		if ($('#loginword2').val() != $('#loginword').val()) {
			$('#message').html("<font color='red'><b>两次输入密码不一致！</b></font>");
			$('#loginword2').focus();
			return false;
		}
		
		if ($('#peoplephone').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#peoplephone').focus();
			return false;
		}
		
		if ($('#shopphone').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#shopphone').focus();
			return false;
		}
		
		if ($('#address').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#address').focus();
			return false;
		}
		
		if ($('#proimg1').val() == "") {
			$('#proimg1').focus();
			return false;
		}
//		if ($('#proimg2').val() == "") {
//			$('#proimg2').focus();
//			return false;
//		}
//		if ($('#proimg3').val() == "") {
//			$('#proimg3').focus();
//			return false;
//		}
		
		if ($('#describe').val() == "") {
			$('#describe').focus();
			return false;
		}
		var loginword = hex_md5(document.getElementById("loginword").value);
		$.ajax({
			url:ajaxurl,
			type:"post",
			data:"shopname=" + $("#shopname").val(),
			dataType:'html',
			success: function(result) {
				if (result.length > 2) {
					$('#message').html("<font color='red'><b>"+result+"</b></font>");
					return false;
				} else {
					$('#message').html("<font color='blue'><b>注册请求已提交！</b></font>");
					document.getElementById("loginword").value = loginword;
					$('#registerFrom').submit();
				}
			}
		});
	});
});
