$(document).ready(function() {
	$('#add').click(function() {
		if ($('#name').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#name').focus();
			return false;
		}
		if ($('#color').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#color').focus();
			return false;
		}
		$('#addfrom').submit();
	});
});

function postdel(param1,param2,param3) {
	$.ajax({
		url: ajaxurl,
		type: 'post',
		data: "id="+param1+"&name="+param2+"&color="+param3,
		success: function(){
			parent.location.reload();
			window.location.reload();
		},
		dataType: 'html'
	});
}


