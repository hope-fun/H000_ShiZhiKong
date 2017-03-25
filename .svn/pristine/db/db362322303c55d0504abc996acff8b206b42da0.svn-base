<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript">
$(document).ready(function(){	
	//音效  ma_li  112   2013_11_7   挑战BOSS成功
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		JSInterface.clickTone(125);
	}, false);
	
});	
</script>
<div class="content">
	<div class="challenge-boss">
		<img class="adv-width" src='<p:localurl value="/resources/images/xuanchuan/cg020108win.png"/>'>
	</div>
	<div class=" center-site paddingtop12">
		<span class="fc-content-win"><spring:message code="label.CG020108.title"></spring:message></span>
	</div>

	<div class="center-site">
	
		<div>	
			<c:if test="${fn:contains(rewardType, 'EQUIPMENT')}">
			<img alt="" src="<p:imgPath id='${imageName}' folder='equipments' type='large' />"/>
			</c:if>
			<c:if test="${fn:contains(rewardType, 'CPOINT')}">
			<img src='<p:localurl value="/resources/images/other/large/CPOINT.png"/>'>
			</c:if>
			<c:if test="${fn:contains(rewardType, 'SCOIN')}">
			<img src='<p:localurl value="/resources/images/other/large/SCOIN.png"/>'>
			</c:if>
			<c:if test="${fn:contains(rewardType, 'GCOIN')}">
			<img src='<p:localurl value="/resources/images/other/large/GCOIN.png"/>'>
			</c:if>			
		</div>
		
		<div>
			<span class="fc-normal-content"><c:out value="${rewardName}"></c:out></span>
		</div>
		<div class="fc-content-02">
			<span>X<c:out value="${rewardValue}"></c:out></span>
		</div>
	</div>

	<div>
		<div class="split-01"></div>
	</div>
	<div class="consumable-count-style">
		<span class="fc-normal-05-l"><spring:message code="label.cg1802.ticketnum"></spring:message>:</span><c:out value="${consumableCount}"></c:out>
	</div>
	<c:if test="${not empty isTicketEnough }">
	<div style="width: 100%; margin: 0 auto; text-align: center;">
		<a href="<p:fullurl value="/cg0901/cg090103/index/"/>">
			<span class="fc-link"><spring:message code="label.cg1802.ticketbuy"></spring:message></span>
		</a>
	</div>
	</c:if>
	<c:if test="${empty isThrough }">
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/tiaozhanxiageBOSS-green-z.png"/>'  onclick="location.href='<p:fullurl value="/cg1802/cg180203/index/${raidType}/"/>';event.preventDefault();"/>
	</div>
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/chongxintiaozhan-blue-z.png"/>' <c:if test="${empty isCanRechallenge}"> onclick="location.href='<p:fullurl value="/cg1802/cg180203/reChallenge/${raidId}"/>';event.preventDefault();" </c:if> <c:if test="${not empty isCanRechallenge}"> class="confirm_popup" message="<spring:message code="label.cg1802.popmessage"></spring:message>"</c:if>/>
	</div>
	<div class="rechallenage-style">
		<span class="fc-normal-06-m">*<spring:message code="label.cg1802.rechallenge"></spring:message></span>
	</div>
	</c:if>
	<c:if test="${not empty isThrough }">
	<div class="rechallenage-style">
		<span class="fc-normal-06-m">*<spring:message code="label.cg1802.allchallenge"></spring:message></span>
	</div>
	           
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/chongxintiaozhan-blue-z.png"/>' <c:if test="${empty isCanRechallenge}"> onclick="location.href='<p:fullurl value="/cg1802/cg180202/index/"/>';event.preventDefault();" </c:if> <c:if test="${not empty isCanRechallenge}"> class="confirm_popup" message="<spring:message code="label.cg1802.popmessage"></spring:message>"</c:if>/>
	</div>
	</c:if>
</div>