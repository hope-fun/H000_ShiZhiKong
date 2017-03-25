<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.cg260109.title"/></span>
	</div>
	<div style="text-align: center;">
		<img src="<p:localurl value='/resources/images/scene/deathsea.PNG' />"/>
		<div><img src="<p:localurl value='/resources/images/activity/${playerBuff.buffId }.PNG' />"/></div>
		<div>${playerBuff.description }</div>
		<c:choose>
		<c:when test="${playerBuff.buffId eq 'bf3' }">
		<div style="color: green;">-${playerBuff.additionValue }%</div>
		</c:when>
		<c:otherwise>
		<div style="color: red;">+${playerBuff.additionValue }%</div>
		</c:otherwise>
		</c:choose>
		
	</div>
	<div class="task-buttons clickTone1 task-button-padding task-button-padding02">
		<img src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg2601/cg260102/index'/>', this)" />
	</div>
</div>