<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
	<div class="win-pic-style">
		<img src='<p:localurl value="/resources/images/xuanchuan/cg020108win.png"/>'>
	</div>
	<div class=" center-site paddingtop12">
		<span class="fc-content-win"><spring:message code="label.CG020108.title"></spring:message></span>
	</div>
	<div class="reward-info">
		<div>
			<div class="reward-infohasimage"><img src='<p:localurl value="/resources/images/other/large/CPOINT.png"/>'></div>
			<div>
				<span class="fc-normal-content"><spring:message code="label.CG020108.cpoint"></spring:message></span>
			</div>
			<div>
				<span class="fc-content-02"><c:out value="${getCpoint}"></c:out></span>
			</div>
		</div>
		<div>
			<div class="reward-infohasimage"><img src='<p:localurl value="/resources/images/other/large/SCOIN.png"/>'></div>
			<div>
				<span class="fc-normal-content"><spring:message code="label.CG020108.cystal"></spring:message></span>
			</div>
			<div class="fc-content-02">
				<span><c:out value="${getCoinNum}"></c:out></span>
			</div>
		</div>
		<div>
			<div class="reward-infohasimage"><img src='<p:localurl value="/resources/images/other/large/exp.png"/>'></div>
			<div>
				<span class="fc-normal-content"><spring:message code="label.CG020108.exp"></spring:message></span>
			</div>
			<div class="fc-content-02">
				<span><c:out value="${getExp}"></c:out></span>
			</div>
		</div>
	</div>
	<div>
		<div class="split-01"></div>
	</div>
	<!-- <div class="continueButton">
		<a href="<p:fullurl value="/cg0201/cg020107/index/${chapterId}/"/>">
			<img src='<p:localurl value="/resources/images/buttons/chongxintiaozhan-green-z.png"/>'>
	</div> -->
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/qianwanggushiliebiao-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020101/index2"/>';event.preventDefault();"/>
	</div>
</div>