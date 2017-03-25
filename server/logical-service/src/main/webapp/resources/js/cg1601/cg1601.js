var canSubmit = false;
function doCG16Submit(id, url, messageSuccess, messageFailed, obj, count) {
	if(!canSubmit)
		return false;
	var formObj = $("#" + id);
	var func = obj.onclick;
	obj.onclick = "";
	var options = {
		url : formObj.attr('action'),
		type : formObj.attr('method'),
		data : formObj.serialize(),
		dataType : 'json',
		showMask : false,
		success : function(json) {
			updatePlayerInfo();
			//json = JSON.parse(resp);
			if (json.succeed){
				//add by ma_li 判断是否为钻石，发送数量和来源数据到客户端， talking game数据分析
				
				if(json.isDiamond){					
					var data = "{\"number\":" + json.diamondCount+ ",\"consumableId\":\"里程碑历程奖励\"" +"}";
					JSInterface.getDiamondFromSystem(data);
				}
				kpyxTips($("#"+"rewardsuccess").val());
			}
			else{
				kpyxTips($("#"+"rewardfail").val());
				obj.onclick = func;
			}
			var pNode = (function(){
				var temp = $(obj).parent();
				while(!temp.hasClass("MileStoneItem"))
					temp = temp.parent();
				return temp;
			}());
			pNode.remove();
		},
	   error : function(msg){
		   obj.onclick = func;
		}
	}
	$.ajax(options);
	formObj = null;
	options = null;
}
$(function() {canSubmit = true;});