<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120111.title" /></span>
	</div>
	
	<utils:npcDialog dialogVal="label.cg120111.npc" dialogType="msgKey" imageType="2" />
	
	<div class="lableText">
		<span><spring:message code="label.cg120111.askmsg1" /></span>
		<c:out value="${union.name }" />
		<span><spring:message code="label.cg120111.askmsg2" /></span>
	</div>
	<div class="commonPading01 union-home-style">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/querentuichu-blue-z.png"/>" style="cursor: pointer;" onClick="exitUnion()" />
	</div>
	<div class="commonPading01 union-home-style" onClick="goToUnionHome()">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/fanhuiliangmengshouye-green-z.png"/>" style="cursor: pointer;" onClick="goToUnionHome()" />
	</div>
</div>

<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
<input id="exitUnionUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120111/exitUnion" />" />
<input id="unionHomeUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120112/index" />" />

<script type="text/javascript">
<!--
function exitUnion(){
	window.location.href = $("#exitUnionUrl").val();
}

function goToUnionHome(){
	window.location.href = $("#unionHomeUrl").val();
}
//-->
</script>