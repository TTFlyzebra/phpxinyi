function addShow(s1) {
	openDlg();
	$.ajax({
		url: ajaxadd,
		type: 'post',
		data: "shop_id="+s1,
		success: function(result) {
			parent.location.reload();
			window.location.reload();
		},
		dataType: 'html'
	});
}

function delShow(s1) {
	openDlg();
	$.ajax({
		url: ajaxdel,
		type: 'post',
		data: "shop_id="+s1,
		success: function(result) {
			parent.location.reload();
			window.location.reload();
		},
		dataType: 'html'
	});
}


function openDlg() {
	$('.dlg-content').fadeIn(100);
	$('.dlg-mask').fadeIn(100);
}

function closeDlg() {
	$('.dlg-content').fadeOut(100);
	$('.dlg-mask').fadeOut(100);
}
