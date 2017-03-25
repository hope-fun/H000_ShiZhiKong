$(function() {
	
});

function titleSelectSubmit(selectObj, oldValue, playerId, unionId) {
	if (selectObj.value != oldValue) {
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		var urlStr = selectObj.form.action + unionId + "/" + selectObj.value;
		$.post(urlStr, randomParms, function(data) {
			if (null != data && data.result) {
				var self = data.data;
				// 无上限或未达上限
				if ("NO_MAX_NUM" == self || "YES" == self) {
					selectObj.form.action = selectObj.form.action + playerId
							+ "/" + selectObj.value;
					selectObj.form.submit();
				} else if ("NO" == self) {
					kpyxTips($("#cg120109memberlimit").val());
					selectObj.value = oldValue;
				}
			}
		}, "json");
	}
}

// 发放水晶
function distributeUnionCrystal(playerId, playerName) {
	var crystalValue = $("#crystal_" + playerId).val();

	if ("" != crystalValue && 0 < parseInt(crystalValue, 10)) {
		var tipStr = $("#cg120109distribute").val() + crystalValue + $("#cg120109givecystal").val() + playerName;
		
		kpyxConfirm(tipStr, function (){
			distribute(playerId);
		}, function() {
			return false;
		});
	} else {
		kpyxTips($("#cg120109providecount").val());
	}
}

//发放水晶
function distribute(playerId) {
	var crystalValue = $("#crystal_" + playerId).val();
	
	var urlStr = $("#doDistributeCrystalUrl").val() + playerId + "/"
			+ crystalValue;
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post(urlStr, randomParms, function(data) {
		if (null != data && data.result) {
			var self = data.data;
			if ("less" == self) {
				kpyxTips($("#cg120109providemax").val());
			} else if ("distributed" == self) {
				$("input[name=crystalNum]").prop("value", "");
				kpyxTips($("#cg120109provideweek").val());
			} else if ("success" == self) {
				$("input[name=crystalNum]").prop("value", "");
				kpyxTips($("#cg120109providesuccess").val());
			} else {
				kpyxTips($("#cg120109providefail").val());
			}
		}
	}, "json");
}

function shotOffSurePage(unionMemberId) {
	window.location.href = $("#shotOffSurePageUrl").val() + unionMemberId;
}


//申请好友
$(".showapply").click(function() {
	var friendId = $(this).attr("id");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post($("#full_applyFriend_url").val() + friendId, randomParms, function(message) {
		if (message != null) {
			if (message.result) {
				kpyxTips($("#cg120109applysend").val());
				var show_apply = $("#show_apply_" + friendId);
				var hidden_apply = $("#hidden_apply_" + friendId);
				show_apply.css("display", "none");
				hidden_apply.css("display", "block");
			}else if(message.data != null && message.data == "ownMax"){		//自己战友人数已达上限
				kpyxTips($("#apply_message").val());
				return false;
			}else if(message.data != null && message.data == "otherMax"){	//对方战友人数已达上限
				kpyxTips($("#max_message").val());
				return false;
			}
		}
	}, "json");
});

//申请好友
function apply_friend() {
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
$.post($("#applyFriend_url").val() + $("#playerId").val(), randomParms, function(
		message) {
	if (message != null) {
		if (message.result) {
			kpyxTips($("#cg120109applysend").val() , function() {
				// 跳转页面
				window.location.href = $("#returnUrl").val();
			});
			
		} else if (message.data != null && message.data == "ownMax") {	//自己战友人数已达上限
			kpyxTips($("#apply_message").val());
			return false;
		} else if(message.data != null && message.data == "otherMax"){	//对方战友人数已达上限
			kpyxTips($("#max_message").val());
			return false;
		}
	}
}, "json");
}


