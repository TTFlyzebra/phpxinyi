$(function(){
	
	$('#switch_qlogin').click(function(){
		$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_bottom').animate({left:'0px',width:'70px'});
		$('#qlogin').css('display','none');
		$('#web_qr_login').css('display','block');
		});
	$('#switch_login').click(function(){
		
		$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_bottom').animate({left:'154px',width:'70px'});
		
		$('#qlogin').css('display','block');
		$('#web_qr_login').css('display','none');
		});
		if(getParam("a")=='0'){
			$('#switch_login').trigger('click');
		}
	}
);
	
function logintab(){
	scrollTo(0);
	$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#qlogin').css('display','none');
	$('#web_qr_login').css('display','block');
	
}


// 根据参数名获得该参数 pname等于想要的参数名
function getParam(pname) { 
    var params = location.search.substr(1); // 获取参数 平且去掉？
    var ArrParam = params.split('&'); 
    if (ArrParam.length == 1) { 
        // 只有一个参数的情况
        return params.split('=')[1]; 
    } 
    else { 
         // 多个参数参数的情况
        for (var i = 0; i < ArrParam.length; i++) { 
            if (ArrParam[i].split('=')[0] == pname) { 
                return ArrParam[i].split('=')[1]; 
            } 
        } 
    } 
}  

$(document).ready(function() {
	$('#log2').click(function() {
		// 判断是否为空
		if ($('#user').val() == "") {
			$('#user').focus();
			return false;
		}
		if ($('#pswd').val() == "") {
			$('#pswd').focus();
			return false;
		}
		// 判断用户名是否已经注册
		var pswd = hex_md5(document.getElementById("pswd").value);
		$.ajax({
			url:cknameUrl,
			type:"post",
			data:"loginname=" + $("#user").val()+"&loginword="+pswd,
			dataType:'html',
			success: function(result) {
				if (result.length > 2) {
					$("#logCue").html("<font color='red'><b>"+result+"</b></font>");
					return false;
				} else {
					document.getElementById("pswd").value = pswd;
					$('#logUser').submit();
				}
			}
		});
	});
	$('#reg').click(function() {
		// 判断是否为空
		if ($('#loginname').val() == "") {
			$('#loginname').focus();
			$('#userCue').html("<font color='red'><b>帐号不能为空</b></font>");
			return false;
		}

		if ($('#loginname').val().length < 4 || $('#loginname').val().length > 16) {

			$('#loginname').focus();
			$('#userCue').html("<font color='red'><b>用户名位4-16字符</b></font>");
			return false;

		}
		
		// 判断密码是否正确
		if ($('#loginword').val().length < 6) {
			$('#loginword').focus();
			$('#userCue').html("<font color='red'><b>密码不能小于" + 6 + "位</b></font>");
			return false;
		}
		if ($('#loginword2').val() != $('#loginword').val()) {
			$('#loginword2').focus();
			$('#userCue').html("<font color='red'><b>两次密码不一致！</b></font>");
			return false;
		}
		// 判断用户名是否已经注册
		var loginword = hex_md5(document.getElementById("loginword").value);
		$.ajax({
			url:cknameUrl,
			type:"post",
			data:"loginname=" + $("#loginname").val(),
			dataType:'html',
			success: function(result) {
				if (result.length > 2) {
					$('#loginname').focus();
					$("#userCue").html("<font color='red'><b>"+result+"</b></font>");
					return false;
				} else {
					document.getElementById("loginword").value = loginword;
					document.getElementById("loginword2").value = loginword;
					$('#regUser').submit();
				}
			}
		});
		
	});	
});
