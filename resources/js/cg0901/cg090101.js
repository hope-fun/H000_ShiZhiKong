$(document).ready(function() {
	$(".buy_button").click(function() {
		var itemId = $(this).val();
		var buyCount = $("#count_" + itemId).val();
		if(buyCount==null){
			buyCount = 1;
		}
		var urlPath = $(this).attr("urlPath");
		location.href = urlPath + "/" + buyCount;
	});
	
//	kpyxConfirm("${buyResult}", 
//			function() {
//		window.location.href = location_url;
//			}, function() {
//		window.location.href = location_url;
//	});
	
	
	
	
	
});

