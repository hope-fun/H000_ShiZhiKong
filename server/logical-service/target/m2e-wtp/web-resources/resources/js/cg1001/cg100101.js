$(document).ready(function() {
	$(".sousuo_button").click(function() {
		document.forms[0].submit();
	});
	

});

function Jump(itemType,id) {
	var url = $("#targetUrl").val();
	if (itemType == 'CARD') {
		url = url+"/card/"+id;
	} else {
		url = url+"/index/"+itemType+"/"+id;
	}
	
	location.href=url;
}


function goback() {
	var url = document.referrer;
	location.href=url;
}

var $$ = {};
var auction_id = null;
$$.ajax = function(options) {
	var defaults = {
		headers : {
			"requestType" : "ajax"
		},
		dataType : 'json',
		error : function(jqXHR, textStatus, errorThrown) {
			kpyxTips($("#cg1001operatefail").val());
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
		if (resp != null) {
			if (resp.value == 'itemNotExistedOrSold')
				kpyxTips($("#cg1001goodnotexit").val());
			else if (resp.value == 'done') {
				var options = {
						suppressTitle: true, 
						cancelOnly:true,
						message:$("#cg1001buysuccess").val(), 
						doneCallback: function () {
							location.href=$("#auctionIndexUrl").val();
						}
					};
				$(document.body).popup(options)
				
			}
				
			else if (resp.value == 'unEnough')
				kpyxTips($("#cg1001cystralnotenough").val());
			else if (resp.value == 'undone')
				kpyxTips($("#cg1001buyfail").val());
			else if (resp.value=='uptolimit')
				kpyxTips($("#cg1001cardslimit").val());
			else if (resp.value == 'cannotbuymyself') 
				kpyxTips($("#cg1001cannotaucionselfgood").val());
		}
	};
	$.ajax(opts);
	return false;
};

function BuyGoods(auctionId) {
	auction_id = auctionId;
	var urlString = $("#buyTargetUrl").val();;
	urlString = urlString+"/"+auctionId;
	
	var options = {
			url : urlString,
			type : 'POST',
			data : null,
		};
		$$.ajax(options);
		delete options;
}