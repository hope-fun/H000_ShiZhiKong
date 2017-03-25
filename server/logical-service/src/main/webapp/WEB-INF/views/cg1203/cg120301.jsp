<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1203.vipsystem.title"/></span>
	</div>
	<div class="animation-activity">
		<img alt="" src="<p:localurl value="/resources/images/xuanchuan/cg120301vipxiangqing.png"/>"/>
	</div>
	<div class="conference-buttons" style='display:<c:if test="${!isSaturday && isLeader }" >block;</c:if><c:if test="${isSaturday || !isLeader }" >none;</c:if>'>
		<a href="#" onclick="location.href = '<p:fullurl value="/cg1203/cg120303/index" />';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jiansheVIPxingxi-green-d.png"/>'>	
		</a>
	</div>
	<div class="conference-buttons" style='display:<c:if test="${!isSaturday && isLeader }" >none;</c:if><c:if test="${isSaturday || !isLeader }" >block;</c:if>'>
		<img class="button_gray" src='<p:localurl value="/resources/images/buttons/jiansheVIPxingxi-green-d.png"/>'>	
	</div>
	<div class="conference-buttons" style='display:<c:if test="${!isSaturday }" >block;</c:if><c:if test="${isSaturday }" >none;</c:if>'>
		<a href="#" onclick="location.href = '<p:fullurl value="/cg1203/cg120302/index"/>';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/VIPxingxirenwu-green-d.png"/>'>	
		</a>
	</div>	
	<div class="conference-buttons" style='display:<c:if test="${!isSaturday }" >none;</c:if><c:if test="${isSaturday }" >block;</c:if>'>
		<img class="button_gray" src='<p:localurl value="/resources/images/buttons/VIPxingxirenwu-green-d.png"/>'>	
	</div>
	<div class="conference-buttons">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg0901/cg090103/index"/>';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/VIPxingxitejiashangdian-green-d.png"/>'>	
		</a>
	</div>
</div>
<script type="text/javascript" charset="utf-8">
	$(function(){
		var message = "${message }";
		if(message!=null && message!=""){
			kpyxTips(message,
				function() {
					window.location.href = "<p:fullurl value='/cg0101/cg010103/index'/>";
			});
		}
	})
</script>
