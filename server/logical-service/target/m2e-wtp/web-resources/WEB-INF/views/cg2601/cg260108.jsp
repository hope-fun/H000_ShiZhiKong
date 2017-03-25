<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.cg260108.title"/></span>
	</div>
	<div style="text-align: center;">
	  <c:if test="${ not empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/></span><span style="color:white;vertical-align: top;">${playerVO.beadsCount }</span>
	</c:if>
	<c:if test="${empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/><span style="color:white;vertical-align: top;">0</span></span>
	</c:if>
	</div>
	<div style="text-align: center;height:330px;">
		<img src="<p:localurl value='/resources/images/scene/deathsea.PNG' />"/>
		<img src="<p:localurl value='/resources/images/activity/beads_b.PNG' />" style="position: relative;top: -350px;"/>
	</div>
	<div style="font-size: 24pt;color: orange;font-weight: bold;text-align: center;"><spring:message code="label.cg260102.findbeads"></spring:message></div>
	<div class="task-buttons clickTone1 task-button-padding task-button-padding02">
		<img src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg2601/cg260102/index'/>', this)" />
	</div>
</div>