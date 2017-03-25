$$.ajax = function(options) {
	var defaults = {
		headers : {
			"requestType" : "ajax"
		},
		dataType : 'json',
		error : function(jqXHR, textStatus, errorThrown) {
			kpyxTips($("#cg1002operatefail").val());
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
		if (resp.value == 'done') {
			var doneUrl = $(".doneCallbackUrl").val();
			var options = {
					suppressTitle: true, 
					cancelOnly:true,
					message:$("#cg1002soldsuccess").val(), 
					doneCallback: function () {doneCallBack(doneUrl);}
				};
			$(document.body).popup(options);
			//音效   ma_li 106 2013_11_7  挑战BOSS
			 JSInterface.clickTone(113);
		}
		else if(resp.value == 'undone'){
			kpyxTips($("#cg1002operatefail").val())
		}
	};
	$.ajax(opts);
	return false;
};

$(document).ready(function(){
	$('.sale_button').click(function(){
		var sale_num=$('.select_num').text();
		var url = $('.urlpath').val();
		var price = $('.price').val();
		price = price.trim();
		var strP = /\./;
		if(sale_num == 0 || sale_num == null){
			kpyxTips($("#cg1002auctionnum").val());
			return;
		}
		if (strP.test(price)) {
			kpyxTips($("#cg1002notdecimalpoint").val());
			return;
		} else {
			if (price == null || price == "") {
				kpyxTips($("#cg1002inputauctionprice").val());
				return;
			} else {
				var str = /^([1-9])([0-9]*)$/g;
				if (str.test(price)) {
					
					var priceNum = price.length;
					
					if (priceNum > 10) {
						kpyxTips($("#cg1002auctionrightprice").val());
						return ;
					}
					
					pathurl= url;
					var options = {
						url : pathurl,
						type : 'POST',
						data : {
							'price':price,
							'auction_num':sale_num
						},
					};
					$$.ajax(options);
					delete options;
					return;
				} else {
					kpyxTips($("#cg1002inputfigure").val());
					return;
				}
			}
		}

	});
});

function change(value){
	$('.select_num').text(value);
};

function doneCallBack(doneUrl){
	window.location.href = doneUrl;
}