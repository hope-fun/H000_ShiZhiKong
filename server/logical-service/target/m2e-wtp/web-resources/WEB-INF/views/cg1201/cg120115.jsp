<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class="cg120115-info">
		<div class="menu-medium title-label-02 cg120115-titlepadding">
			<span><spring:message code="label.cg120115.title" /></span>
		</div>

		<div class="satellite-info-style02">
			<div>
				<div class="borderPanel">
					<div class="panelC-header"></div>
					<div class="panelC-body panelC03-height"></div>
					<div class="panelC-footer"></div>
					<div class="border-content-noleft">
						<div class="menu-medium center-site ask-msg01">
							<span><spring:message code="label.cg120115.askmsg1" /></span>
							<c:out value="${union.name }" />
							<span><spring:message code="label.cg120115.askmsg2" /></span>
						</div>
						<div class="conference-buttons ask-msg-button">
							<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jiesan-green.png"/>' style="cursor: pointer;" onClick="disbandUnion()" />
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="conference-buttons buttons-padding">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/fanhuilianmengshouye-blue-d.png" />' style="cursor: pointer;" onClick="goToUnionHome()" />
		</div>
	</div>
</div>

<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
<input id="disbandUnionUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120115/disbandUnion" />" />
<input id="unionHomeUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120112/index" />" />


<script type="text/javascript">
<!--
function disbandUnion(){
	window.location.href = $("#disbandUnionUrl").val();
}

function goToUnionHome(){
	window.location.href = $("#unionHomeUrl").val();
}
//-->
</script>