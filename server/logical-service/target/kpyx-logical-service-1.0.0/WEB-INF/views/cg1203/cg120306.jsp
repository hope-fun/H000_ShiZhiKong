<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120306.vipWarResult.title"/></span>
	</div>
	<div class="advertise-activity">
		<img style="width:100%;height:100%" alt="" src="<p:localurl value="/resources/images/xuanchuan/cg120306vipWarWin.png"/>"/>
	</div>
	
	<utils:npcDialog dialogVal="label.cg120306.vipWarResult.win.npc" dialogType="msgKey" imageType="2" />

	<div class="menu-medium title-label-02">
		<span><spring:message code="label.cg120306.vipWarResult.win.show" /></span>
	</div>

	<div class="conference-buttons padding-top20">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg1203/cg120303/index"/>';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jianshe-green-z.png"/>'></a>
	</div>
	
	<div class="conference-buttons" >
		<a href="#" onclick="location.href = '<p:fullurl value="/cg0901/cg090103/index"/>';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/VIPtejiashangdian-blue-z.png"/>'>
		</a>
	</div>
</div>