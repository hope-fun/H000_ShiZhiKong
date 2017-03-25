<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1802.css?v=1"/>">
<script type="text/javascript" src="<p:fullurl value="/resources/js/cg1802/cg1802.js"/>"></script>
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
		 //音效   ma_li 106 2013_11_7  
		 JSInterface.clickTone(118);		
	}, false);
});
</script>
<div class="content">
	<div class="pannelStyle">
		<div class="borderPanel">
			<div class="panelRaid-header"></div>
			<div class="panelRaid-body panelRaid-height" style="height: 144px;"></div>
			<div class="panelRaid-footer"></div>
			<div class="border-content-noleft" style="padding-top: 10px;width: 90%;padding-left: 5%;">
				<span style="margin:0px -4px;font-size: 14pt;">&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="label.cg180106.content1" /></span>
				<span class="raid-color-yellow" style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.ticket" /></span>
				<span style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.content2" /></span>
				<span class="raid-color-blue" style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.silverequipcard" /></span>
				<span style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.content3" /></span>
				<span class="raid-color-green" style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.cpoint" /></span>
				<span style="margin:0px -4px;font-size: 14pt;"><c:out value="."/></span>
				<span class="raid-color-green" style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.cpoint" /></span>
				<span style="margin:0px -4px;font-size: 14pt;"><spring:message code="label.cg180106.content4" /></span>
			</div>
		</div>
	</div>
	
	<div style="padding-top: 50px;">
	<div style="float: left;margin-left: 3%;margin-right: 2%" >
	<img alt="" src="<p:localurl value="/resources/images/activity/silver-raid.png"/>" onclick="window.location.href='<p:fullurl value="/cg1801/cg180102/index"/>'">
	</div>
	<div style="float: left;margin-left: 2%;margin-right: 2%" >
	<img alt="" src="<p:localurl value="/resources/images/activity/equip-raid.png"/>" onclick="window.location.href='<p:fullurl value="/cg1802/cg180202/index"/>'">
	</div>
	<div style="float: left;margin-left: 2%;margin-right: 2%" >
	<img alt="" src="<p:localurl value="/resources/images/activity/card-raid.png"/>" onclick="window.location.href='<p:fullurl value="/cg1803/cg180302/index"/>'">
	</div>
	</div>
	
</div>