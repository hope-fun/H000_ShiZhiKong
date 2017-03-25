var $$ = {};
var auctionId = null;
$$.ajax = function(options) {
	var defaults = {
		headers : {
			"requestType" : "ajax"
		},
		dataType : 'json',
		error : function(jqXHR, textStatus, errorThrown) {
			kpyxTips($("#"+"operatefail").val());
			if (console && console.info) {
				console.info("unexpected exception-------------------Start");
				console.info(options);
				console.info(jqXHR);
				console.info(textStatus);
				console.info(errorThrown);
				console.info("unexpected exception--------------------End");
			}
		}
	};
	var opts = $.extend(defaults, options);
	opts.success = function(resp, param2, param3) {
		if (resp.value == 'itemNotExistedOrSold')
			kpyxTips($("#"+"goodnoexist").val());
		else if (resp.value == 'done') {
			var options = {
					suppressTitle: true, 
					cancelOnly:true,
					message:$("#"+"buysuccess").val(), 
					doneCallback: function () {document.forms[0].submit();}
				};
			$(document.body).popup(options);
			//音效   ma_li 106 2013_11_7  挑战BOSS
			 JSInterface.clickTone(113);
			
		}
		else if (resp.value == 'unEnough')
			kpyxTips($("#"+"cystralnotenough").val());
		else if (resp.value == 'undone')
			kpyxTips($("#"+"buyfail").val());
		else if (resp.value=='uptolimit')
			kpyxTips($("#"+"numlimit").val());
		else if (resp.value == "cannotbuymyself") 
			kpyxTips($("#"+"cannotauction").val());

	};
	$.ajax(opts);
	return false;
};
function buyGold(id) {
	auctionId = id;
	var urlString = $("#buyTargetUrl").val();;
	urlString = urlString+"/"+id;
	
	var options = {
			url : urlString,
			type : 'POST',
			data : null,
			/*success : function(resp) {
				json = JSON.parse(resp);
				if (json.succeed) {
					//add by ma_li 判断是否为钻石，发送数量和来源数据到客户端， talking game数据分析  vip用户每日第一次赠送钻石
					
					if(json.isDiamond){					
						var data = "{\"num\":" + json.diamondCount+ ",\"reason\":从拍卖行购买"}";	
						kpyxTips("从拍卖行购买"+json.diamondCount);
						JSInterface.getDiamondFromSystem(data);
					}
			}*/
		};
		$$.ajax(options);
		delete options;
	
}