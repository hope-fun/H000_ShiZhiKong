var tempTouchEventSrcElementHolder = null;
$(function() {
	if($.os.ios || (typeof Android !== "undefined")) {
		var prefix = '.clickTone';
		var type = [1];//按键音类型预留,可扩展
		for(var i = 0,len = type.length;i< len ;i ++)
			(function(type){
				$(prefix+type).each(function() {
					var that = $(this);
					if(that.css("opacity") != 1) /*禁用的按钮不监听事件*/
						return;
					$(this).get(0).addEventListener("touchstart",function(){
						that.css("opacity","0.5");
						tempTouchEventSrcElementHolder = that;
					});
					$(this).get(0).addEventListener("click",function(){
						JSInterface.clickTone(type);
					},true);
					});
			}(type[i]));
		document.addEventListener("touchend",function(){
			if(tempTouchEventSrcElementHolder) {
				tempTouchEventSrcElementHolder.css("opacity","1");
				tempTouchEventSrcElementHolder = null;
			}
		});
		document.addEventListener("touchmove",function(){
			tempTouchEventSrcElementHolder.css("opacity","1");
			tempTouchEventSrcElementHolder = null;
		});
	}
});