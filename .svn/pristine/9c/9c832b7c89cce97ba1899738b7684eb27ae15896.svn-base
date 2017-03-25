var totalCG1101MsgCount = 0;
function DoAfterSubmit(contentId) {
	var tempClassName = "dk";
	$("#content" + contentId).css3Animate(
			{
				opacity : 0,
				time : "300ms",
				callback : function() {
					var collections = $(".panel-03");
					for ( var i = parseInt(contentId) + 1, len = collections
							.size(); i < len; i++)
						collections.get(i).className = "panel-03 "
								+ tempClassName;
					if ($("." + tempClassName).size())
						$("." + tempClassName).css3Animate({
							y : "-100%",
							time : "300ms",
							callback : function() {
								$("#content" + contentId).remove();
								$("." + tempClassName).css3Animate({
									y : "0",
									time : "0ms"
								});
								$(".panel-03").removeClass(tempClassName);
							}
						});
					else
						$("#content" + contentId).remove();
					collections = null;
				}
			});
}

function doAjaxSubmit(formId, contentId, type,obj) {
	$(obj.parentNode).children('.clickTone1').attr("onclick","");
	$('#friendMsgPop').html($('#friendMsgPop').html() - 1);
	if($('#friendMsgPop').html() == 0)
		$($('#friendMsgPop').get(0).parentNode.parentNode).css('display','none');
	var formObj = $("#" + formId);
	$$.ajax({
		url : formObj.attr('action'),
		type : formObj.attr('method'),
		data : formObj.serialize(),
		dataType : 'json',
		showMask : false,
		success : function(resp) {
				$("#content" + contentId).find(".system-content2").html(
						"<div style='margin:0 auto;text-align:center;'>"
								+ resp.data
								+ "</div>");
			JSInterface.setMsgCount(count--);
			setTimeout("DoAfterSubmit(" + contentId + ")", 1000);
			resp = null;
		}
	});
}

function unionOper() {
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post(arguments[0] + memberId + "/" + applyerId + "/" + unionId,randomParms,
					function(message) {
						message && ((message.errorMessage && kpyxTips(errorMessage)) || (message.data == "exist" && kpyxTips(existMessage))
										|| (message.data == "max" && kpyxTips(maxMessage)) || (message.result == "true" && kpyxTips(successMessage)));
					}, "json");
}

if (typeof Android !== "undefined") {
        $(function() {JSInterface.setMsgCount(totalCG1101MsgCount);});
}
document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
	JSInterface.setMsgCount(totalCG1101MsgCount);
},false);
