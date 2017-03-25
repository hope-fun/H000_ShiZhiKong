<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<c:if test="${empty header['requestType']}">
	<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<c:set var="clientType">
	<security:authentication property="clientType" />
</c:set>
<c:set var="clientWidth">
	<security:authentication property="clientWidth" />
</c:set>
<c:if test="${empty clientType or '' eq clientType}">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />-->
	<meta name="viewport" content="width=720, user-scalable=no" />
</c:if>
<c:if test="${'android' eq clientType}">
	<c:if test="${clientWidth > 0}">
		<meta name="viewport"
			content="width=${clientWidth}, initial-scale=1; maximum-scale=1; minimum-scale=1;" />
	</c:if>
	<c:if test="${clientWidth == 0}">
		<meta name="viewport" content="width=720" />
	</c:if>
</c:if>
<c:if test="${'ios' eq clientType}">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />-->
	<meta name="viewport" content="width=720,initial-scale=0.44, maximum-scale=1, minimum-scale=0.44,user-scalable=no" />
</c:if>

<title>时之空</title>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/main.css"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/color.css"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/animation.css"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/popup.css"/>">

<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/third-party/jq.mobi/jq.mobi.min.js"/>"></script>

<!-- include touch.js on desktop browsers only -->
<script type="text/javascript">
	var isShowMenu = '<tiles:insertAttribute name="isShowMenu" ignore="true" />';
	var canBack = '<tiles:insertAttribute name="canBack" ignore="true" />';
	window.innerWidth = 720;
	
	if (!((window.DocumentTouch && document instanceof DocumentTouch) || 'ontouchstart' in window)) {
		var script = document.createElement("script");

		script.src = "<p:fullurl value="/resources/third-party/jq.mobi/plugins/jq.desktopBrowsers.js"/>";
		var tag = $("head").append(script);
		if (!$.os.ie) {
			//	$.os.desktop=true;
			//	$.feat.nativeTouchScroll=true;
		}
	}
	//Override ajax method
	var $ajax = $.ajax;
	$.ajax = function(opts) {
		opts = opts || {};
		opts.headers = opts.headers || { "requestType": "ajax", "contentType": "application/x-www-form-urlencoded; charset=UTF-8" };
		$ajax(opts);
	};
	
	//add by wujianjun
	function newPlayer(url,step)
	{
		//隐藏div
		$("#secretaryId").css("display", "none");
		//异步修改状态
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post("<p:fullurl value='/cg2201/cg220108/fillDoSecretary'/>",randomParms,function (message){
			if(null != message && true == message.result)
				{
				}
		},("json"));
		if(step==1)
			{
				kpyxConfirm("<spring:message code='label.default.sechelp' />",function (){
					location.href=url;
				},null);
			}else if(step==2)
			{
				kpyxConfirm("<spring:message code='label.default.attacked' />",function (){
					location.href=url;
				},null);
			}else if(step==3)
			{
				kpyxTips("<spring:message code='label.default.gateticket' />",function (){
					location.href=url;
				});
			}else if(step==4)
			{
				kpyxConfirm("<spring:message code='label.default.powerprotect' />",function (){
					location.href=url;
				},null);
			}
		
	}
	
</script>

<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/third-party/jq.mobi/plugins/jq.css3animate.js"/>"></script>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/third-party/jq.mobi/plugins/jq.popup.js"/>"></script>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/third-party/jq.mobi/plugins/jq.form.plugin.js"/>"></script>

<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/processbar.js"/>"></script>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/ajax.js"/>"></script>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/popup.js" />"></script>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/interface.js" />"></script>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/clickTone.js" />"></script>
<script>
	//update App Player Info
	//add by dai_kang
	
	function updatePlayerInfo(){
		
		$.ajax({
			type:'GET',
			url:"<p:fullurl value='/player/getPlayerInfo'/>",
			dataType : 'json',
			success:function (data) {
					data.success ? JSInterface.updatePlayerInfo(new WebViewJavascriptBridgeTransInfo(data)):
						(function() {console.log("getPlayerInfoError!")}());				
			},
		});
	}
	
	function closeModuleRemind(){
		var urld =	"<p:fullurl value='/player/initPlayerModulRemind'/>"+"/"+'${modulRemindVOForDefault.enumItemMoudlType}';
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urld,randomParms,function(message){
			if(null != message &&  true == message.result) {
				$('#_shadow_bg').hide();
				$('#modulremindDiv').hide();
				
			}else{
			}
		},("json"));
		
	}
	
	
	$(function (){
		if('${modulRemindVOForDefault}'!='')
		{
			$('#_shadow_bg').css('top', document.body.scrollTop+"px").show();
			$('#module_remind_content').css("position","absolute");
			$('#module_remind_content').css("top", (window.pageYOffset + (520 / 2.5)) + "px");
			$('#module_remind_content').css("left", ((window.innerWidth - 520) / 2) + "px");
			
			if('${modulRemindVOForDefault.enumItemMoudlType}' == 'STAR_RANK'||'${modulRemindVOForDefault.enumItemMoudlType}' == 'EXCHANGE_SHOP' ||'${modulRemindVOForDefault.enumItemMoudlType}' == 'RAID_DOOR')
			{
				$('#enumItemMoudlTypeImg').css("left", -30 + "px");
			}
		}
		
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			updatePlayerInfo(); 
		}, false);
		
	});
</script>
</head>
<body >
	<div id="top" class="top panel" data-header="none" data-footer="none"
		selected="true">
		<!--<c:if test="${not empty iCONViewData  && iCONViewData.step != 0}">
			<div class="new_float_div" id="secretaryId"
				style="background-image: url(<p:fullurl value='${iCONViewData.iconUrl}'/>);width: 80px;border: 1px white solid;float: left;height: 50px;position: fixed;top: 80px;left: 20px;z-index:100000;"
				onclick="newPlayer('<p:fullurl value="${iCONViewData.forwardUrl}"/>',${iCONViewData.step});"></div>
		</c:if> -->
		<c:if test="${not empty modulRemindVOForDefault}">
			<div class="clickTone1 module_remind_div" id ="modulremindDiv" style="position: absolute;z-index: 999999;left: 0;width: 100%;height: 100%;" onclick="closeModuleRemind();">
				
				<div id="module_remind_content" style="position: absolute;">
					<div  id="module_remind_lightRay">
						<img  src='<p:localurl value="/resources/images/moduleremind/lightRay.PNG"/>'>
					</div>
					<div style="position: relative;left: 135px;top: -340px;">
						<div id ="enumItemMoudlTypeImg" style="position: relative;left: 55px;"><img  src='<p:localurl value="/resources/images/moduleremind/${modulRemindVOForDefault.enumItemMoudlType}.PNG"/>'></div>
						<div><img  src='<p:localurl value="/resources/images/moduleremind/lightRayNewBegin.PNG"/>'></div>
					</div>
					
				</div>
			</div>
		</c:if> 
		<div id="_add_height" class="addheight"></div>

		<tiles:insertAttribute name="body" ignore="true" />
	</div>
	<div id="_shadow_bg" class="bg-shadow"></div>
</body>
	</html>
</c:if>
<c:if
	test="${not empty header['requestType'] or header['requestType'] == 'ajax' }">
	<tiles:insertAttribute name="body" ignore="true" />
</c:if>
