$(function() {
	$(".upSatellite").each(function() {
		$(this).bind("click",oneClick);	
	});
});

function oneClick(){
	var obj = this;
	//防御星球类型
	var enumSatelliteType = $(this).attr("id");
	var unionId = $("#unionId").val();
	
	var silverCoin = "#" + enumSatelliteType + "silverCoin";
	var satelliteid ="#" + enumSatelliteType + "id";			
	var urld = $("#up_url").val() + unionId + "/" + $(satelliteid).val();

	//确认是否升级
	kpyxConfirm(getMessage($(silverCoin).val()),
		//确认则升级
		function(){
			//解除click绑定，防止多次点击
			$(obj).unbind("click");
			var randomParms = {anticache : Math.floor(Math.random()*1000)};
			$.post(urld,randomParms,function (message){
				if( null != message && true == message.result){
					  //修改所有星球的公会水晶
					  var div = $(".system-content-bold");
					  div.find("span[class=allunionSilverCoin]").html(message.data.union.silverCoin);
					  //修改星球的防御上限
					  var spanUniondefenceMax = "#"+enumSatelliteType +"spandefenceMax";
					  $(spanUniondefenceMax).html(message.data.defenceMax);
					  //修改对应的星球的等级
					  var spanUnionLevel = "#"+enumSatelliteType +"spanlevel";
					  $(spanUnionLevel).html(message.data.level);

					  //修改对应星球当前的经验值
					  var spancurrentExp = "#"+enumSatelliteType +"spancurrentExp";
					  $(spancurrentExp).html(message.data.exp);
					  //修改对应星球升下一级所需经验值
					  var spannextLevelExp = "#"+enumSatelliteType +"spannextLevelExp";
					  $(spannextLevelExp).html(message.data.nextLevelExp);
					  
					  //修改对应的星球的升级需要的水晶
					  $(silverCoin).val(message.data.silverCoin);
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
				}
				kpyxTips(message.errorMessage);
				//执行完之后重新绑定click事件
				$(obj).bind("click",oneClick);
			},("json"));
		},
	//取消则返回
	function(){
		return false;
	});
}

