var $$ = {};

var auctionId = null;
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
		if (resp.value == 'itemNotExistedOrSold')
			kpyxTips($("#cg1001goodnotexit").val());
		else if (resp.value == 'done') {
			var options = {
					suppressTitle: true, 
					cancelOnly:true,
					message:$("#cg1001buysuccess").val(), 
					doneCallback: function () {document.forms[0].submit();}
				};
			$(document.body).popup(options)
		}
			
		else if (resp.value == 'unEnough')
			kpyxTips($("#cg1001diamondnotenough").val());
		else if (resp.value == 'undone')
			kpyxTips($("#cg1001buyfail").val());
		else if (resp.value=='uptolimit')
			kpyxTips($("#cg1002051numlimit").val());
		else if (resp.value == "cannotbuymyself") 
			kpyxTips($("#cg1001cannotaucionselfgood").val());
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
		};
		$$.ajax(options);
		delete options;
	
}