$(function() {
	/** 同意加入公会 */
	$(".agree").click(function() {
		var ids = $(this).attr("id");
		var unionMemberId = ids.split('_')[0];
		var playerId = ids.split('_')[1];
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post($("#agree_Url").val() + unionMemberId + "/" + playerId + "/" + $("#unionId").val(), randomParms, function(message) {
			if (message != null) {
				if (!message.result && message.data == "exist") { // 该玩家已经被加入其它公会
					kpyxTips($("#exist_message").val());
					return false;
				} else if (!message.result && message.data == "max") { // 联盟成员已经达到上限
					kpyxTips($("#max_message").val());
					return false;
				} else if (message.result) { 
					window.location.href = $("#unionMember_Url").val();
				}
			}
		}, "json");
	});
	
	/** 拒绝加入公会 */
	$(".reject").click(function() {
		var allIds = $(this).attr("id");
		var unionMemberId = allIds.split('_')[1];
		var playerId = allIds.split('_')[0];
		kpyxConfirm($("#reject_message").val(), 
				function() {
					window.location.href = $("#reject_Url").val() + unionMemberId + "/" + playerId + "/" + $("#unionId").val();
				},
				function() {
					return false;
				});
	});
});
