$(function() {
	// 申请加入公会验证
	$(".apply_green").click(function() {
		var unionId = $(this).attr("id");
		var unionName = $("#unionName").val();
		var pageIndex = $("#pageIndex").val();
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post($("#check_Url").val() + unionId, randomParms, function(message) {
			if (message != null) {
				if (message.result && message.data == "level"){	//玩家等级未达到10级
					kpyxTips($("#memberLevel_message").val());
					return false;
				} else if (message.result && message.data == "exist") { // 该玩家已经加入其它公会
					kpyxTips($("#apply_message").val());
					return false;
				} else if (message.result && message.data == "max") { // 被申请联盟成员已经达到上限
					kpyxTips($("#maxMember_message").val());
					return false;
				} else if (!message.result) { // 确认申请公会
					window.location.href = $("#apply_Url").val() + unionId + "/" + encodeURI(encodeURI(unionName)) + "/" + pageIndex;
				}
			}
		}, "json");
	});
});
