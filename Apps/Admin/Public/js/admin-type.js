$(document).ready(function() {
	$('#add').click(function() {
		if ($('#name').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#name').focus();
			return false;
		}
		if ($('#pid').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#pid').focus();
			return false;
		}
		if ($('#sort').val() == "") {
			// alert("请选择分类！");
			// document.getElementById("message").innerHTML = "名称不能为空！";
			$('#sort').focus();
			return false;
		}
		$('#addfrom').submit();
	});
});

function postdel(param1,param2,param3,parma4) {
	$.ajax({
		url: ajaxurl,
		type: 'post',
		data: "id="+param1+"&name="+param2+"&pid="+param3+"&order="+parma4,
		success: function(){
			parent.location.reload();
			window.location.reload();
		},
		dataType: 'html'
	});
} 




