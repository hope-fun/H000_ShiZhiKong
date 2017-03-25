<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message
				code="label.CG020112.title" arguments="${playerConsumableVO.name }"></spring:message></span>
	</div>
	<div class="center-site reward-card-padding">
		<span class="fc-content-02"><spring:message
				code="label.cg020112.total" arguments="${playerConsumableVO.name }"></spring:message>：</span>
		<span class="fc-content-02">${playerConsumableVO.count}</span>
	</div>
	<div class="center-site reward-card-padding">
		<img
			src="<p:consumImg type="large" id="${playerConsumableVO.consumableId }" />" />
	</div>
	<div class="panel-03 clearfix blue-background">
		<div class="panel-header panel-header-padding">
			<div class="item-name-style">
				<span>${playerConsumableVO.name}</span>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="panel-body rew-padding-top">
			<div  style="margin-left: 40px;">
				<span>${playerConsumableVO.description }</span>
			</div>
		</div>
	</div>
	<div>
		<div class="split-01"></div>
	</div>
	<!-- 
	<div class="link-button-green clickTone1" onclick="doJump('<p:fullurl value='/cg1802/cg180201/index'/>')">
		<span><spring:message code="label.CG020109.activity"></spring:message></span>
	</div>
	 -->
	<div
		class="task-buttons clickTone1 task-button-padding task-button-padding02">
		<img
			src='<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>'
			onclick="doJump('<p:fullurl value='/cg0201/cg020104/index/${playerSectionId}'/>', this)" />
	</div>
</div>