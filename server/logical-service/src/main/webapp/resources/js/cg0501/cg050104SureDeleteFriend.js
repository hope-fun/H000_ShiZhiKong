$(document).ready(function() {
	$(".btn_doDelete").click(function() {
		window.location.href = $("#doDeleteUrl").val() + $(this).val();
	});
});