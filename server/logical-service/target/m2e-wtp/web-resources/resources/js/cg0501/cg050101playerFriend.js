$(function() {
	// 顶好友
	$(".ding_green").click(function() {
		var friendId = $(this).attr("id");
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post($("#full_upFriend_url").val() + friendId, randomParms, function(data) {
			if (data != null) {
				if (data.result) {
					var show_ding = $("#show_ding_" + friendId);
					var hidden_ding = $("#hidden_ding_" + friendId);
					show_ding.css("display", "none");
					hidden_ding.css("display", "block");
				}
			}
		}, "json");
	});
	
	
	
	//申请好友
	$(".apply_green").bind("click",apply_green);
});

   
function apply_green(){
	var buttonEvent = this;
	var friendId = $(buttonEvent).attr("id");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	//去除点击事件
	$(buttonEvent).unbind("click");
	$.post($("#full_applyFriend_url").val() + friendId, randomParms, function(message){
		if (message != null){
			if (message.result)
			{
				kpyxTips($("#cg0501applyfriend").val());
				var show_apply = $("#show_apply_" + friendId);
				var hidden_apply = $("#hidden_apply_" + friendId);
				show_apply.css("display", "none");
				hidden_apply.css("display", "block");
				//恢复按钮click事件
				$(buttonEvent).bind("click",apply_green);
			} else if(message.data != null && message.data == "ownMax")
			{	
				//自己战友人数已达上限
				kpyxTips($("#apply_message").val());
				//恢复按钮click事件
				$(buttonEvent).bind("click",apply_green);
				return false;
			} else if(message.data != null && message.data == "otherMax")
			
			{	
				//对方战友人数已达上限
				kpyxTips($("#max_message").val());
				//恢复按钮click事件
				$(buttonEvent).bind("click",apply_green);
				return false;
			}
		}
	}, "json");
	//恢复按钮click事件
	$(buttonEvent).bind("click",beginAttack);
}





// 申请好友
function apply_friend() {
	var buttonEvent = $("#buttonsearch");
	//去除点击事件
	$(buttonEvent).attr('onclick',"");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post($("#applyFriend_url").val() + $("#playerId").val(), randomParms, function(message) {
		if (message != null) {
			if (message.result) {
				// 跳转页面
				var urlReturnType = $("#urlReturnType").val();
				var reutrnUrl = $("#return_url").val() + "cg050106/index";
//				if (urlReturnType == "nameSearch") {
//					reutrnUrl = $("#return_url").val() + "cg050106/index";
//				} else 
				if (urlReturnType == "levelSearch") {
					reutrnUrl = $("#return_url").val() + "cg050105/index";
				}
				
				if(urlReturnType == "homePage") {
					reutrnUrl = $("#home_page_url").val();
				} 
				
				kpyxTips($("#cg0501applyfriend").val(), function() {
					window.location.href = reutrnUrl;
				});
				
			} else if (message.data != null && message.data == "ownMax") 
			{	
				//自己战友人数已达上限
				kpyxTips($("#apply_message").val());
				$(buttonEvent).attr('onclick',"apply_friend()");
				return false;
			} else if(message.data != null && message.data == "otherMax")
			{	
				//对方战友人数已达上限
				kpyxTips($("#max_message").val());
				$(buttonEvent).attr('onclick',"apply_friend()");
				return false;
			}
		}
	}, "json");
	
}