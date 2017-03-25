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
	<div class="text-center" style="padding-top:20px;">
	<c:if test="${ not empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/></span><span style="color:white;vertical-align: top;">${playerVO.beadsCount }</span>
	</c:if>
	<c:if test="${empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/><span style="color:white;vertical-align: top;">0</span></span>
	</c:if>
	</div>
	<div class=" center-site paddingtop12">
		<span class="fc-content-win"><spring:message code="label.CG020108.title"></spring:message></span>
	</div>

	<div class="center-site">
	
		<div style="text-align: center;">	
		<img  src="<p:fullurl value='/resources/images/activity/beads_l.PNG'/>">
		</div>
		<div>
			<span class="fc-normal-content"><spring:message code="label.cg260106.beads"></spring:message></span>
		</div>
		<div class="fc-content-02">
			<span>X<c:out value="${rewardValue}"></c:out></span>
		</div>
	</div>

	<div>
		<div class="split-01"></div>
	</div>
	<div onclick="window.location.href='<p:fullurl value="/cg2601/cg260106/index/${bossId }"/>'" class="text-center clickTone1">
	<img  src="<p:fullurl value='/resources/images/buttons/jixu-green-z.png'/>">
	</div>
</div>