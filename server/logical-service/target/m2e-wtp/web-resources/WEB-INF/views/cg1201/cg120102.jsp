<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120102.success.title" /></span>
	</div>
	<div class="lableText">
		<span>${union.creatorName }</span>
	</div>
	<div class="lableText">
		<span><spring:message code="label.cg120102.success.info1" /></span> <span class="fc-normal-02-l">${union.name }<spring:message code="label.cg120102.success.info2" /></span>
	</div>
	<div class="panelXuanChuan clickTone1 padding-style10">
		<img src="<p:localurl value="/resources/images/xuanchuan/gonghuixuanchuan.png"/>" />
	</div>
	<div class="lableText">
		<span class="fc-normal-05-l"><spring:message code="label.cg120102.success.unionname" /></span> <span>${union.name }</span>
	</div>
	<div class="lableText">
		<span class="fc-normal-05-l"><spring:message code="label.cg120102.success.maxcount" /></span> <span>${union.maxMemberCount }<spring:message code="label.cg120102.success.ren" /></span>
	</div>
	
	<div>
		<utils:npcDialog dialogVal="label.cg120102.success.npc" dialogType="msgKey" imageType="2" />
	</div>
		
	<div class="xieXinXiButton clickTone1">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120103/index/${union.id}" />';event.preventDefault();">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/xiexinxi-green-z.png"/>" />
		</a>
	</div>
</div>