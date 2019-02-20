$(document).ready(function() {
	$('#login').click(function() {
		// 判断是否为空
		if ($('#shopname').val() == "") {
			$('#shopname').focus();
			return false;
		}
		if ($('#password').val() == "") {
			$('#password').focus();
			return false;
		}
		// 判断用户名密码是否正确
		var password = hex_md5(document.getElementById("password").value);
		$.ajax({
			url:ajaxurl,
			type:"post",
			data:"shopname=" + $("#shopname").val()+"&loginword="+password,
			dataType:'html',
			success: function(result) {
				if (result.length > 2) {
					$("#message").html("<font color='red'><b>"+result+"</b></font>");
					return false;
				} else {
					document.getElementById("password").value = password;
					$('#loginform').submit();
				}
			}
		});
	});
	
});

