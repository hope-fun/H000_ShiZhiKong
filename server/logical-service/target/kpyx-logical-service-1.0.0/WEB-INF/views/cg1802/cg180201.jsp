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
	<div class="main-title menu-medium">
		<span><spring:message code="label.cg180201.title"></spring:message></span>
	</div>
	<div class="challenge-boss">
		<img class="adv-pic-style" src='<p:localurl value="/resources/images/xuanchuan/cg180201xiingjizhimen.png"/>'>
	</div>
	<div class="pannelStyle">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="intro-information">
					<spring:message code="label.cg180201.desc"></spring:message>
				</div>
				<div class="raid-reward-style"> 
					<div>
						<div class="fc-content-01 raid-info"><span><spring:message code="label.cg180202.raid_reward"></spring:message></span></div>
						<div style="float:left"><span><spring:message code="label.cg180201.cpoint"></spring:message></span></div>
						<div class="clearfix"></div>
					</div>
					<div><span><spring:message code="label.cg180201.whiteequpment"></spring:message></span></div>
					<div><span class="fc-normal-01-l"><spring:message code="label.cg180201.blueequipment"></spring:message></span></div>
					<div><span class="fc-normal-07-l"><spring:message code="label.cg180201.purpleequipment"></spring:message></span></div>
					<div><span class="fc-normal-06-l"><spring:message code="label.cg180201.orangeequipment"></spring:message></span></div>
				
				</div>
				<div class="ticketStyle"><span class="fc-normal-05-m">*<spring:message code="label.cg180201.ticket"></spring:message></span></div>
			</div>
		</div>
	</div>
	<div class="button-large link-button-03 clickTone1" onclick="doJump('<p:fullurl value='/cg1802/cg180202/index'/>')">
		<span><spring:message code="label.cg180201.btn.start_task"></spring:message></span>
	</div>
</div>
