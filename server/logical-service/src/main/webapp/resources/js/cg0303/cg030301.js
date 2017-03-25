//$(document).ready(function(){
//
//	$(".change_name_complete").click(function(){
//		var changeName = $(".nametextarea").val();
//		var urlPath = $("#urlPath").val();
//	//	location.href =urlPath+"/"+changeName;
//		location.href =urlPath;
//	});
//	
//});
//
var $$ = {};



var target = null;

$$.ajax = function(options) {
	var defaults = {
		headers : {
			"requestType" : "ajax"
		},
		dataType : 'json',
		error : function(jqXHR, textStatus, errorThrown) {
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
		if(resp.value == 'done')
				alert($("#"+"revampsuccess").val());
	};
	$.ajax(opts);
	return false;
};



function doHandle(url) {
	var changeName = $(".nametextarea").val();
	
	if(changeName.replace(/[^\x00-\xff]/g, '**').length >10){
		kpyxTips('<div style="line-height:20px;"><span>'+$("#"+"teamname").val()+'</span><br></br><span>('+$("#"+"teamnamecondition").val()+')</span></div>');
		return ;
	}
    if(changeName == "") {
    	kpyxTips($("#"+"notnull").val());
    	return ;
    } 
    var arr = new Array();
    arr = changeName.split(" ");
    if(arr.length != 1){
    	kpyxTips($("#"+"notblank").val());
    	return ;
    }
	
	var options = {
			url : url,
			type : 'POST',
			data : $("#namespace").serialize(),
		};
		$$.ajax(options);
		delete options;
}