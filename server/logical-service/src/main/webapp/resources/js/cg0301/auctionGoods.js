var $$ = {};

$$.ajax = function(options,obj) {
	var defaults = {
		headers : {
			"requestType" : "ajax"
		},
		dataType : 'json',
		error : function(jqXHR, textStatus, errorThrown) {
			kpyxTips($("#cg0301operatefail").val());
			obj.onclick = func;
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
		obj.onclick = func;
		if (resp.value == "done") {
			
			var options = {
					suppressTitle: true, 
					cancelOnly:true,
					message:$("#cg0301auctionsuccess").val(), 
					doneCallback: function () {document.forms[1].submit();}
				};
			$(document.body).popup(options);			
			//音效   ma_li 106 2013_11_7  挑战BOSS
			 JSInterface.clickTone(113);
			
		} 
		else if (resp.value == "undone")
			kpyxTips($("#cg0301operatefail").val());
		 else if(resp.value == "uptolimit")
			 kpyxTips($("#cg0301auctionsuccess").val());
	};
	var func = obj.onclick;
	obj.onclick = "";
	$.ajax(opts);
	return false;
};

function len(str) {
	var length = 0;
	for ( var i = 0, len = str.length; i < len; i++)
		length += (str.charCodeAt(i) < 256) ? 1 : 2;
	return length;
}

function doHandle(formId, url,obj) {
	var price = $("#input_" + formId).val();
	price = price.trim();
	var strP = /\./;
	if (strP.test(price)) {
		kpyxTips($("#cg0301decimalsforbid").val());
		return;
	} else {
		if (price == null || price == "") {
			kpyxTips($("#cg0301auctionprice").val());
			return;
		} else {
			var str = /^([1-9])([0-9]*)$/g;
			if (str.test(price)) {
				var priceNum = price.length;
				
				if (priceNum > 10) {
					kpyxTips($("#cg0301auctionrightprice").val());
					return ;
				}
				
				$("#inputHidden_" + formId).val(price);
				var labelValue = $("#label_" + formId).val();
				var length = len(labelValue);
				if (length > 40) {
					kpyxTips($("#cg0301numlimit").val());
					return;
				}
				var options = {
						url : url,
						type : 'POST',
						data : $("#form_" + formId).serialize(),
					};
				$$.ajax(options,obj);
				delete options;
				return;
			} else {
			
				kpyxTips($("#cg0301rightform").val());
				return;
			}
		}
	}
}