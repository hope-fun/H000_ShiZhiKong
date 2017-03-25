$(function() {$(".btn_disboard").bind("click",function() {
		var cardId = $(this).val();
		var urlStr = $("#doDisboardEquUrl").val() + cardId;
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urlStr, randomParms, function(data) {
			if(null != data && data.result){
				document.forms[1].submit();
			}
		}, "json");
		window.event.preventDefault();
	})});