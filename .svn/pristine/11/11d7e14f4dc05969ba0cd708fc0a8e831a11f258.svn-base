<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript">
$(document).ready(function(){	
	//音效  ma_li  112   2013_11_7   挑战BOSS失败
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		JSInterface.clickTone(112);
	}, false);
	
});	
</script>	
<div class="content">
	<div class="challenge-boss">
		<img class="adv-width" src='<p:localurl value="/resources/images/xuanchuan/cg020110lose.png"/>'>
	</div>
	<div class="split-padding-top">
		<div class="split-01"></div>
	</div>
	<div class="consumable-count-style">
		<span class="fc-normal-05-l"><spring:message code="label.cg1802.ticketnum"></spring:message>:</span><c:out value="${consumableCount}"></c:out>
	</div>
	<c:if test="${not empty isTicketEnough }">
	<div class="challenge-boss"   onclick="location.href='<p:fullurl value="/cg0901/cg090103/index/"/>';event.preventDefault();">
			<span class="fc-link buy-ticket"><spring:message code="label.cg1802.ticketbuy"></spring:message></span>
	</div>
	</c:if>
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/chongxintiaozhan-green-z.png"/>'  onclick="location.href='<p:fullurl value="/cg1802/cg180202/index/"/>';event.preventDefault();"/>
	</div>
	<!--  <div style="width: 80%; margin: 0 auto; text-align: center;">
		<span class="fc-normal-06-m">*重新挑战此副本将消耗<c:out value="${needCount}"></c:out>个星门入场券</span>
	</div>-->
</div>