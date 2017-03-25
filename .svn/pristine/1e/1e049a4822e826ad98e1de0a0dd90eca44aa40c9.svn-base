<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<script type="text/javascript">
	$(function(){
		var returnValue = $("#returnValue").val();
		if("success"!=returnValue&&""!=returnValue){
			kpyxTips(returnValue);
		}
	})
</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg12030.vipsystem.title" /></span>
	</div>
	<form action="">
		<input name="returnValue" id="returnValue" value="${returnValue }" type="hidden"/>
	</form>
	
	<div>
		<utils:npcDialog dialogVal="label.cg12030.vipsystem.npc" dialogType="msgKey" imageType="2" />
	</div>
	
	<div class="advertise-activity clickTone1 margin-style30">
		<img src='<p:localurl value="/resources/images/xuanchuan/applyVipWar.png"/>'>
	</div>
	
	<div class="conference-buttons padding-top20" style="display:<c:if test="${isCanApply == true }">block;</c:if><c:if test="${isCanApply == false }">none;</c:if>">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg1203/cg120308/validate/${unionId}" />';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/querenshenqing-green.png"/>'>
		</a>
	</div>
	
	<div class="conference-buttons padding-top20" style="display:<c:if test="${isCanApply == false }">block;</c:if><c:if test="${isCanApply == true }">none;</c:if>">
		<img class="button_gray" src='<p:localurl value="/resources/images/buttons/querenshenqing-green.png"/>'>
		
		<div class="font-div-style fc-normal-06-m center-site"
	 		style="float:right; display:<c:if test="${not empty message_type && message_type eq 'apply' }">block;</c:if>
	 		<c:if test="${empty message_type || message_type ne 'apply' }">none;</c:if>">
			<span class=""><spring:message code="label.cg120308.alertthree" /></span>
		</div>
		
		<div class="font-div-style fc-normal-06-m center-site"
	 		style="display:<c:if test="${not empty message_type && message_type eq 'exist' }">block;</c:if>
	 		<c:if test="${empty message_type || message_type ne 'exist' }">none;</c:if>">
			<span class=""><spring:message code="label.cg120308.alerttwo" /></span>
		</div>
	</div>
</div>