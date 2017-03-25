$(document)
		.ready(
				function() {
					$(".select_card").hide();
					$("#btn_more_intensify").hide();

					$("#more_intensify")
							.click(
									function() {
										$(".select_card").show();
										$(".qua_fodder").hide();
										$("#btn_more_intensify").show();
										$(this)
												.css("background",
														'url(/web/resources/images/buttons/piliang-hechen-yellow-label.png)');
										$("#one_intensify")
												.css("background",
														'url(/web/resources/images/buttons/yiban-hechen-blue-label.png)');
									});
					$("#one_intensify")
							.click(
									function() {
										$(".select_card").hide();
										$(".qua_fodder").show();
										$("#btn_more_intensify").hide();
										$(this)
												.css("background",
														'url(/web/resources/images/buttons/yiban-hechen-yellow-label.png)');
										$("#more_intensify")
												.css("background",
														'url(/web/resources/images/buttons/piliang-hechen-blue-label.png)');
									});
					var is_selectAll = false;
					$(".select_all").click(function(){
						is_selectAll = !is_selectAll;
						$('.qua_fodder').each(function(){
							if((is_selectAll &&　$(this).children("input").get(0).getAttribute("disabled") == "disabled" 
											&& $(this).children("input").get(0).getAttribute("class") == "a") 
									|| (!is_selectAll && $(this).children("input").get(0).getAttribute("disabled") != "disabled"))
								$(this).click();
						});
					});
				});

function doSubmit(url, obj, flag) {
	var form;
	if(flag >= 0) {
		alert(msg);
		return false;
	}
	if(obj) {
		form = document.forms[2]?document.forms[2]:document.forms[1];
		form.action = url;
		obj.Reset ? form.playerCardId.value = obj.Node.parentNode
				.getElementsByTagName("input")[0].value
				: 0;
		obj.Intensify ? obj.Node.parentNode.getElementsByTagName("input")[0]
				.removeAttribute("disabled") : 0;
		if(obj.Larger) {
			form.appendChild(document.forms[1].camp.cloneNode());
			form.appendChild(document.forms[1].orderBy.cloneNode());
			form.appendChild(document.forms[1].sortType.cloneNode());
		}
	}
	else {
		form = document.forms[0];
		form.action = url;
	}
	form.submit();
}

function doToggle(obj) {
	var node = obj.getElementsByTagName("input")[0];
	var img = obj.getElementsByTagName("img")[0];
	if (node.getAttribute("disabled") == "disabled") {
		node.removeAttribute("disabled");
		document.forms[1].appendChild(obj.getElementsByTagName("input")[0]
				.cloneNode());
	} else {
		node.setAttribute("disabled", "disabled");
		var nodes = document.forms[1].playerCardIds;
		if (nodes instanceof NodeList) {
			for ( var i = 0, len = nodes.length; i < len; i++)
				if (nodes[i].value == obj.getElementsByTagName("input")[0].value) {
					document.forms[1].removeChild(nodes[i]);
					break;
				}
		} else
			if(nodes.value == obj.getElementsByTagName("input")[0].value) {
				document.forms[1].removeChild(nodes)
			}
	}
	if (node.getAttribute("disabled") == "disabled") {
		img.setAttribute("src",
						"/kpyx-logical-service/resources/images/buttons/xuanze-blue.png");
	} else {
		img.setAttribute("src",
						"/kpyx-logical-service/resources/images/buttons/xuanze-blue-checked.png");
	}
}

function clearForm() {
	var nodes = document.forms[1].playerCardIds;
	var temp = null;
	var deleteStack = new Array();
	var keyList = new Array();
	for ( var i = 0, len = nodes.length; i < len; i++) {
		if (nodes[i].disabled)
			deleteStack.push(nodes[i]);
		else {
			if (keyList.length == 0)
				keyList.push(nodes[i].value);
			else {
				var flag = false;
				for ( var j = 0, len2 = keyList.length; j < len2; j++)
					if (nodes[i].value == keyList[j].value) {
						flag = true;
						break;
					}
				if (!flag)
					keyList.push(nodes[i].value);
			}
		}
	}
	nodes = null;
	while (temp = deleteStack.pop())
		document.forms[1].removeChild(temp);
	while (temp = keyList.pop()) {
		var con = 0;
		deleteStack = new Array();
		nodes = document.forms[1].playerCardIds;
		for ( var i = 0, len = nodes.length; i < len; i++)
			if (nodes[i].value == temp) {
				deleteStack.push(nodes[i]);
				con++;
			}
		if (con > 1) {
			for ( var i = 0, len = deleteStack.length; i < len - 1; i++)
				document.forms[1].removeChild(deleteStack[i]);
		}
		nodes = null;
		deleteStack = null;
	}
	firstLoad = true;
}

function copyForm() {
	var nodesSrc = document.forms[1].playerCardIds;
	var nodesDst = document.forms[2].playerCardIds;
	if (!nodesDst)
		for ( var i = 0, len = nodesSrc.length; i < len; i++) {
			document.forms[2].appendChild(nodesSrc[i].cloneNode());
		}
	else if (nodesDst instanceof NodeList)
		for ( var i = 0, len = nodesSrc.length; i < len; i++) {
			var flag = false;
			for ( var j = 0, len2 = nodesDst.length; j < len2; j++)
				if (nodesSrc[i].value == nodesDst[j].value) {
					flag = true;
					break;
				}
			if (!flag)
				document.forms[2].appendChild(nodesSrc[i].cloneNode());
		}
	else {
		var flag = false;
		for ( var i = 0, len = nodesSrc.length; i < len; i++)
			if (nodesSrc[i].value == nodesDst.value) {
				flag = true;
				break;
			}
		if (!flag)
			document.forms[2].appendChild(nodesDst.cloneNode());
	}
	return true;
}

function judge() {
	var nodes = $("#searchCardListPaginationform input[name='playerCardIds']");
	var flag = true;
	doLogic:{
		if(nodes.size() == 0) {
			flag = false;
			kpyxTips($("#cg0302materialcards").val());
			break doLogic;
		}
		if(nodes.size() > 10){
			flag = false;
			kpyxTips($("#cg0302materialcardslimit").val());
			break doLogic;
		}
	}
	nodes = null;
	return flag;
}