function doJump(url) {
	window.location.href = url;
}

function doSubmit(url) {
	var form = document.forms[0];
	form.action = url;
	form.submit();
}
