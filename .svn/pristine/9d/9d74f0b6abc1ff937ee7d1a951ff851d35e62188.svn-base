var $$$ = {};

$$$.ajax = function(options) {
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
		if (!resp.result) {
			document.getElementById("chatRoom").innerHTML += resp.errorMessage
					.trim()
					+ "\n";
			return false;
		}
		if (options && options.success) {
			options.success(resp, param2, param3);
		}
	};
	$.ajax(opts);
	return false;
};

var messagePublisher = {
	waitSignal : 0,
	publicSignal : 0,
	DoIfSuccess : function(resp, param2, param3) {
		var dataObjs = resp.data;
		if (dataObjs != null) {
			var dataHtmlString = "";
			for ( var i = 0, len = dataObjs.length; i < len; i++) {
				if (dataObjs[i].vipLevel != null
						&& dataObjs[i].vipLevel != "VIP0"
						&& dataObjs[i].vipLevel != "VIPnull")
					dataHtmlString += "<div>"+ "<span class='vipColor'>" + dataObjs[i].vipLevel + "</span>"
							+ dataObjs[i].playerName.trim()							
							+ ":" + dataObjs[i].messageBody.trim()
							+ "</div>";
				else
					dataHtmlString += "<div>" + dataObjs[i].playerName.trim()
							+ ":" + dataObjs[i].messageBody.trim() + "</div>";
			}
			document.getElementById("chatRoom").innerHTML += dataHtmlString;
		}
		doAfterPrint(resp);
		resp = null;
		messagePublisher.waitSignal = 0;  
		
	},
	DoRefresh : function(url) {
		if (this.waitSignal)
			return false;
		var options = {
			url : url,
			type : 'GET',
			data : {
				time : $("input[name='time']").val(),
				message : ''
			},
			success : this.DoIfSuccess
		};
		this.waitSignal = 1;
		$$$.ajax(options);
		options = null;
	},
	DoPublish : function(url) {
		
		var self = this;
		target = $("input[name='message']");
		var mesTarget = $("input[name='message']").val();
		if (!this.doCheck())
			return true;
		if (this.waitSignal)
			return true;
		var options = {
			url : url,
			type : 'POST',
			data : $("#Message").serialize(),
			success : function(resp, param2, param3) {
				self.DoIfSuccess(resp, param2, param3);
				if(typeof resp.useLoudspeaker != "undefined")
					if(resp.useLoudspeaker == 1){
						var s1=$("#sensitive1").val();
						var s2=$("#sensitive2").val();
						var newsReplace = mesTarget;
						if(mesTarget.indexOf(s1)>=0){
							newsReplace = mesTarget.replace(s1,"****");
						}
						if(mesTarget.indexOf(s2)>=0){
							newsReplace = mesTarget.replace(s2,"***");
						}		
						JSInterface.sendNews(newsReplace);
					}
					else if(resp.useLoudspeaker == 0)
						kpyxTips($("#loudspeakernotenough").val());
				target.val("");
			}
		};
		this.waitSignal = 1;
		this.publicSignal = 1;
		$$$.ajax(options);
		target.val("");
		this.inputStateFun();
		setTimeout(function() {
			self.publicSignal = 0
		}, 5000);
	},
	doCheck : function() {
		var flag = true;
		doLogic: {
			if (this.publicSignal) {
				kpyxTips($("#speaktoofast").val());
				flag = false;
				break doLogic;
			}
			if (target.val().trim().length == 0) {
				kpyxTips($("#cg0101inputnull").val());
				flag = false;
				break doLogic;
			}
			if (!(/^[\u0000-\uffff\x00-\x79\xa0-\xa3\xa5\xaa-\xac\xb0-\xb2\xb5\xb7\xba-\xbd\xbf\xc4-\xc7\xc9\xd1\xd6\xdc\xdf-\xe2\xe4-\xef\xf1-\xf4\xf6\xf7\xf9-\xfc\xff\s]+$/
					.test(target.val()))) {
				kpyxTips($("#illegalcharacter").val());
				flag = false;
				break doLogic;
			}
//			if ($("input[name='isLoudspeakerEnough']").val() == 'false') {
//				kpyxTips('喇叭数量不足,请点击购买!');
//				flag = false;
//			}
		}
		return flag;
	},
	len : function(str) {
		var length = 0;
		for ( var i = 0, len = str.length; i < len; i++)
			length += (str.charCodeAt(i) < 256) ? 1 : 2;
		return length;
	},
	inputStateFun : function() {
		var maxLength = target.attr("maxLength");
		var nowLength = this.len(target.val());
		if (nowLength >= maxLength)
			target.get(0).onkeydown = function() {
				if (event.keyCode != 8)
					event.preventDefault();
			}
		else
			target.get(0).onkeydown = "";
		var charLeft = maxLength - nowLength;
		var dCharLeft = Math.floor(charLeft / 2);
		$("#maxChar").html(maxLength);
		$("#nowChar").html(nowLength);
		$("#charLeft").html(charLeft);
		$("#dCharLeft").html(dCharLeft);
	}
}

// $(function() {
// target = $("textarea[name='message']");
// var maxLength = target.attr("maxLength");
// messagePublisher.inputStateFun.call(messagePublisher);
// target.bind("keyup", function() {
// var len = messagePublisher.len($(this).val());
// if(len > maxLength)
// $(this).val($(this).val().substring(0,len - $(this).val().length));
// messagePublisher.inputStateFun.call(messagePublisher);
// });
// function picQuene() {
// }
// ;
// picQuene.prototype = {
// Quene:(function() {
// var orgi = $(".NoticePublisher img");
// var Quene = new Array();
// for(var i =0,len = orgi.size();i<len;i++)
// Quene.push(orgi.get(i));
// orgi = null;
// return Quene;
// }()),
// ptr:null,
// next:function() {
// this.ptr = this.Quene.shift();
// this.Quene.push(this.ptr);
// return this.ptr;
// },
// picChange:function() {
// var self = this;
// var backptr = self.ptr;
// $(self.ptr).css3Animate({
// opacity:0.5,
// time:"200ms",
// callback:function() {
// $(self.ptr).css("z-index","0");
// self.next();
// $(self.ptr).css("z-index","9999");
// $(self.ptr).css3Animate({
// opacity:1,
// time:"300ms",
// callback:function(){
// $(backptr).css3Animate({
// opacity:0
// });
// }
// });
// }
// });
// }
// };
// var picQuene = new picQuene();
// picQuene.next();
// setInterval(function() {
// picQuene.picChange()
// }, 5000);
//	
$(function() {
 //add by wujianjun 2013/8/13 隐藏弹出框
	 $("#dialogue_container_header").click(function(){
	 $(".w-mask-dialog").hide();
	 $(".dialogue_container").hide();
	 $("#gotoHomePage").click();
	 });
	
 });

//document.addEventListener("keydown", function() {
//	if (event.keyCode == 13 || event.keyCode == 108)
//		event.preventDefault();
//});