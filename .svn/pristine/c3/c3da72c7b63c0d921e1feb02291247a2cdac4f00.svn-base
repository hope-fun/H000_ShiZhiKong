function oneClick() {
	var obj = this;
	var enumSatelliteType = $(this).attr("id").split("_")[0];	//星球类型
	var enumSatelliteTaskType = $(this).attr("id").split("_")[1];	//星球任务类型
	var satelliteid ="#" +enumSatelliteType+"id";	//星球id		
	var urld =	$("#task_url").val() + $(satelliteid).val() + "/" + enumSatelliteTaskType;
	//解除click绑定，防止多次点击
	$(obj).unbind("click");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post(urld,randomParms,function (message){
		if(null != message && true == message.result){
			  //修改星球的防御上限
			  var spanUniondefenceMax = "#"+enumSatelliteType +"spandefenceMax";
			  $(spanUniondefenceMax).html(message.data.defenceMax);
			  
			  //修改对应星球当前的经验值
			  var spancurrentExp = "#"+enumSatelliteType +"spancurrentExp";
			  $(spancurrentExp).html(message.data.exp);
			  //修改对应星球升下一级所需经验值
			  var spannextLevelExp = "#"+enumSatelliteType +"spannextLevelExp";
			  $(spannextLevelExp).html(message.data.nextLevelExp);
			  
			  //修改对应的星球的等级
			  var spanUnionLevel = "#"+enumSatelliteType +"spanlevel";
			  $(spanUnionLevel).html(message.data.level);
			  //修改对应的星球的百分比
			  var divgrowingPercent = "#"+enumSatelliteType +"divgrowingPercent";
			  $(divgrowingPercent).attr("processbar",message.data.growingPercent);
			  var processTarget = $('.processing-bar');
			  var processbars = $('div[processbar]');
			  processTarget.removeClass("processing-bar");
			  $(".processbar-child").remove();
			  processbars.processbar();
			  processTarget = null;
			  processbars = null;
			  //修改点击的任务状态
			  var imagDivId = "#" + enumSatelliteType + "_" + enumSatelliteTaskType + "div";
			  var imagDivIdGray = "#" + enumSatelliteType + "_" + enumSatelliteTaskType + "divgray";
			  for(var i=0;i<message.data.vipSystemTaskRecordsViewDatas.length;i++){
			  		if(message.data.vipSystemTaskRecordsViewDatas[i].canDotask == true && message.data.vipSystemTaskRecordsViewDatas[i].enumSatelliteTaskType == enumSatelliteTaskType)
			  		{
			  			$(imagDivId).css("display", "block");
			  			$(imagDivIdGray).css("display", "none");
			  			break;
			  		}
			  		if(message.data.vipSystemTaskRecordsViewDatas[i].canDotask == false && message.data.vipSystemTaskRecordsViewDatas[i].enumSatelliteTaskType == enumSatelliteTaskType)
			  		{
			  		  $(imagDivId).css("display", "none");
		  			  $(imagDivIdGray).css("display", "block");
		  			  break;
			  		}
				}
			}
			kpyxTips(message.errorMessage);
			//执行完之后重新绑定click事件
			$(obj).bind("click",oneClick);
		},("json"));
}

$(function() {
	$(".task").each(function() {
		$(this).bind("click",oneClick);	
	});
});

