$(document).ready(function() {
	//点击碎片
	$(".fragClick").click(function() {
		var idArray = $(this).attr("id");
		var idVal = idArray.split('_')[0];
		var fragId = idArray.split('_')[1];
		
		if("" != idVal){
			//进宝物详情
			window.location.href = $("#detailUrl").val() + $("#a_" + fragId).attr("href");
		}else{
			//去战斗页
			window.location.href = $("#doBattleUrl").val() + $("#a_" + fragId).attr("href");
		}
	});
	
	
	
});
