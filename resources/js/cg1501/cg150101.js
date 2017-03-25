var nowDate = new Date();
var nowYear = nowDate.getFullYear();
var isLeapyear = ((nowYear % 4 == 0 && nowYear % 100 != 0) || (nowYear % 100 == 0 && nowYear % 400 == 0)) ? (true)
		: (false);

var nowTime = serverTime.split("/");
for ( var i = 0; i < nowTime.length; i++) {
	nowTime[i] = parseInt(nowTime[i], 10);
}

var now = {
	month:nowTime[0],
	day:nowTime[1],
	hour:nowTime[2],
	minute:nowTime[3]
}

$(document).ready(function() {
	$("#sel_month").append("<option value=\"" + now.month + "\">" + now.month + "</option>");
	$("#sel_day").append("<option value=\"" + now.day + "\">" + now.day + "</option>");
	$("#sel_hour").append("<option value=\"" + now.hour + "\">" + now.hour + "</option>");
	$("#sel_minute").append("<option value=\"" + now.minute + "\">" + now.minute + "</option>");
	
	$("#sel_month").change(
			function() {
				$("#sel_day").empty();
				$("#sel_hour").empty();
				$("#sel_minute").empty();
				var month = $(this).val();
				if (month == nowTime[0]) {
					fullData($("#sel_day"), nowTime[1], nowTime[1]);
					fullData( $("#sel_hour"), nowTime[2]);
					fullData($("#sel_minute"), nowTime[3]);
				} else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
					fullData($("#sel_day"), 31, nowTime[1]);
					fullData( $("#sel_hour"), 23);
					fullData($("#sel_minute"), 59);
				} else if (month == 2 && isLeapyear) {
					fullData($("#sel_day"), 29, nowTime[1]);
					fullData( $("#sel_hour"), 23);
					fullData($("#sel_minute"), 59);
				} else if (month == 2 && !isLeapyear) {
					fullData($("#sel_day"), 28, nowTime[1]);
					fullData( $("#sel_hour"), 23);
					fullData($("#sel_minute"), 59);
				} else {
					fullData($("#sel_day"), 30, nowTime[1]);
					fullData( $("#sel_hour"), 23);
					fullData($("#sel_minute"), 59);
				}
			});
	$("#sel_day").change(
			function() {
				$("#sel_hour").empty();
				$("#sel_minute").empty();
				var month = $("#sel_month").val();
				var day = $("#sel_day").val();
				if(month == nowTime[0] && day == nowTime[1]) {
					fullData( $("#sel_hour"), nowTime[2]);
					fullData( $("#sel_minute"), nowTime[3]);
				}else {
					fullData( $("#sel_hour"), 23);
					fullData($("#sel_minute"), 59);
				}
			});
	$("#sel_hour") .change(
			function() {
				$("#sel_minute").empty();
				var month = $("#sel_month").val();
				var day = $("#sel_day").val();
				var hour = $("#sel_hour").val();
				if(month == nowTime[0] && day == nowTime[1] && hour == nowTime[2]) {
					fullData($("#sel_minute"), nowTime[3]);
				}else {
					fullData($("#sel_minute"), 59);
				}
			});
	$("#btn_commit_question").click(
			function() {
				$("#btn_commit_question").attr("id", "")
				$("#btn_question_time").attr("value", $("#sel_month").val() + "/" + $("#sel_day").val() + " " + $("#sel_hour").val() + ":" + $("#sel_minute").val())
				try {
					if(checkEmail() && checkNull()) {
						doAjaxSubmit($("#commit_question"))
					}
				}catch(e) {
					console.log("Unexpected Error!");
				}
			});
	init();
});

function doAjaxSubmit(formObj) {
	$$.ajax({
	    url: formObj.attr('action'),
      	type: formObj.attr('method'),
      	data: formObj.serialize(),
      	dataType: 'ajax',
      	showMask: false,
      	success: function(resp) {
				if (resp != null) {
					var options = {
						suppressTitle: true, 
						cancelOnly:true,
						message:fasongchenggong + "!", 
						doneCallback: function () {window.location.href = 'index'}
					};
					$(document.body).popup(options)
				} else {
					alert(fasongshibai + "!")
				}
      	}
	});
}

function init() {
	fullData($("#sel_month"), nowTime[0], nowTime[0], "first");
	fullData($("#sel_day"), nowTime[1], nowTime[1], "first");
	fullData($("#sel_hour"), nowTime[2], null, "first");
	fullData($("#sel_minute"), nowTime[3], null, "first");
}

function fullData(sel, data, month, first) {
	if(month != null) {
		for ( var i = 1; i <= data; i++) {
			if(i == data && first != null) {
			} else {
				sel.append($("<option value=\"" + i + "\">" + i + "</option>"));
			}
		}
	}else {
		for ( var i = 0; i <= data; i++) {
			if(i == data && first != null) {
			} else {
				sel.append($("<option value=\"" + i + "\">" + i + "</option>"));
			}
		}
	}
}

function checkEmail() {
	var temp = document.getElementById("email");

	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if (!myreg.test(temp.value)) {
		alert(msg1);
		$("#email").val("");
		//temp.focus();
		return false;
	}
	return true;
}

function checkNull() {
	var temp = document.getElementById("info");
	var info = temp.value.replace(/\s{2,}/, " ")
	
	if((info == " ") || !info) {
		alert(msg2);
		$("#info").val("");
		return false;
	}
	if(info.length > 500) {
		alert(msg3);
		return false;
	}
	$("#info").val(info);
	return true;
}
