$(document).ready(function() {

	$(".can_buy").click(function() {
		location.href ='#';
	});
	
	$(".can_see").click(function() {
		location.href ='#';
	});
	
	$(".can_get").click(function() {

		var urlPath = $("#urlPath").val();
		window.location.href="/kpyx-logical-service"+urlPath;
		
	});

});