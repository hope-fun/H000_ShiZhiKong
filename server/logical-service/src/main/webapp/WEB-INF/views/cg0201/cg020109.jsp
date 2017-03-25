<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
<!-- 获得入场券 -->
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020109.title"></spring:message></span>
	</div>
	<div class="center-site reward-card-padding">
		<span class="fc-content-02"><spring:message code="label.CG020109.total"></spring:message>：</span>
		<span class="fc-content-02">${reward.ticketCount}</span>
	</div>
	<div class="center-site reward-card-padding">
		<img src="<p:consumImg type="large" id="D9" />" />
	</div>
	<div>
		<div class="split-01"></div>
	</div>
    <!-- 
	<div class="link-button-green clickTone1" onclick="doJump('<p:fullurl value='/cg1802/cg180201/index'/>')">
		<span><spring:message code="label.CG020109.activity"></spring:message></span>
	</div>
	 -->
	<div class="task-buttons clickTone1 task-button-padding task-button-padding02">
		<img src='<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020104/index/${playerSectionId}'/>', this)" />
	</div>
</div>