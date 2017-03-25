if (typeof requestReady == "undefined")
	requestReady = true;

function doJump(url, obj) {
	if(obj != null)
		obj.onclick = '';
	window.location.href = url;
}

function doSubmit(url) {
	var form = document.forms[0];
	form.action = url;
	form.submit();
}


function doJumpFor020104(url) {
		
	var isChecked = $("#checkzhanhunengyuan").attr('checked');
	if($("#canAutoUseConsumable").val()=="false" ||($("#canAutoUseConsumable").val()=="true"&&isChecked == 'false'))
 	{
		window.location.href = url;
	} else {
		url = $("#doAjaxSubmitUrl").val();
		doAjaxSubmit(url);
	}
}


function doAjaxSubmit(url,url2) {	
	if(!requestReady)
		return false;
	var playerTaskSection = $("#playerTaskSection").val();
	if(($("#canAutoUseConsumable").val()=="false") &&  (eval($("#actionPower").val()) < eval($("#consumeActionPower").val())))
		{
			window.location.href = $("#doJumpUrl").val();
		}
	
	var elem = window.event.srcElement;
	elem.onclick = "";
	//$(elem.parentNode).addClass("button_gray");
	$animation.executeMission('.executeMission',function() {
		$$.ajax({
					url : url,
					type : 'GET',
					dataType : 'html',
					headers : {
                         "requestType": "ajax",
                         "requestFrom": "TaskSection"},
					showMask : true,
					success : function(resp) {
						$($(".OverWritePanel").get(0)).html(resp);
						var content = $($(".content").get(0));
						var target = $($(".OverWritePanel").get(0));
						
						
						if (target.find(".OverWritePanel").size() == 0) {
							content.html($($($(".OverWritePanel").get(0)).find(".content").get(0)).html());	
							
							if ($(".cg020104pass").length > 0) {									
									// 音效 2013-11-7
									JSInterface.clickTone(130);
									var sectionName = $(".sectionName").val();
									var data = "{\"pveTaskSectionName\":\"" + sectionName + "\"}";
									JSInterface.finishPlayerTaskSection(data);									
							} else if ($(".cg020111upgrade").length > 0) {
									// 音效 ma_li 112 2013_11_7 玩家升级
									JSInterface.clickTone(122);									
							}
							
							if($(".back-pve-button").length >0){
								$(".back-pve-button").click(function() {
									var setAttrUrl = $(".setattrpoint").val();
									location.href = setAttrUrl+"YES";
								});
							}
							$(".clickTone1").each(function() {
								var that = $(this);
								if(that.css("opacity") != 1) /*禁用的按钮不监听事件*/
									return;
								$(this).get(0).addEventListener("touchstart",function(){
									that.css("opacity","0.5");  
									tempTouchEventSrcElementHolder = that;
								});
								$(this).get(0).addEventListener("click",function(){
									JSInterface.clickTone(1);
								},true);
							});
							$('div[processbar]').processbar();
							updatePlayerInfo();
						}
						else {
							//requestReady = false;
							updatePlayerInfo();
								updateProcessBar(0, [
										target.find("#actionProcessBartarget").attr("processBar"),
										target.find("#expProcessBartarget").attr("processBar"),
										target.find("#roundsCountProcessBartarget").attr("processBar")]);
								content.find("#actionNum").html(target.find("#actionNumtarget").html());
								content.find("#expNum").html(target.find("#expNumtarget").html());
								content.find(".buttonPanel").find(".center-site").attr("class",target.find(".buttonPanel").find(".center-site").attr("class"));
								content.find(".buttonPanel").find("img").attr("onclick",target.find(".buttonPanel").find("img").attr("onclick"));
								
								content.find("#canAutoUseConsumable").val(target.find("#canAutoUseConsumabletarget").val());
								content.find("#doAjaxSubmitUrl").val(target.find("#doAjaxSubmitUrltarget").val());
								content.find("#doJumpUrl").val(target.find("#doJumpUrltarget").val());
								content.find("#actionPower").val(target.find("#actionPowertarget").val());
								content.find("#consumeActionPower").val(target.find("#consumeActionPowertarget").val());
						//		content.find("#checkzhanhunengyuanlabel").bind('click',checkzhanhunengyuanlabel);
						}
						
						target.html("");
					}
				});
	});
	
}


function checkzhanhunengyuanlabel()
{
		var isChecked = $("#checkzhanhunengyuan").attr('checked');
		if(isChecked == 'false'){
			if($("#canAutoUseConsumable").val()=="false")
			{
				kpyxTips($("#cg0201attackauto").val());
				return;
			}
			$(this).removeClass('checkbox-pic-style').addClass('checkbox-checked-pic-style');
			$("#checkzhanhunengyuan").attr('checked', "true");
		}else{				
			$(this).removeClass('checkbox-checked-pic-style').addClass('checkbox-pic-style');
			$("#checkzhanhunengyuan").attr('checked', "false");
		}
		
	}





$(document).ready(function() {	
	$("#checkzhanhunengyuanlabel").click(checkzhanhunengyuanlabel);		
});	