<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0701.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0701/CG0701.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-02 center-site">
		<span><spring:message code="label.cg0701.confirm_defensematrix" /></span>
	</div>	
	<div class="font-div-style2 fc-content-02 center-site">
		<span><c:if test="${not empty fragmentViewData.name }"><c:out value="${fragmentViewData.name }" /></c:if></span>
	</div>
	<div class="font-div-style">
		<div class="element-bg">
			<c:if test="${not empty fragmentViewData.treasureFragmentId }" >
				<treasure:playerFragmentImage treasureFragmentVO="${fragmentViewData }" imageSize="large" showFragmentCount="false" />
			</c:if>
		</div>
	</div>
	<div class="font-div-style fc-title-02 center-site ">
		<span><spring:message code="label.cg0701.defensematrix_usecount" />:</span>
		<span class="fc-content-03">
			<c:out value="${old_magicCircleCount }" />→<c:out value="${new_magicCircleCount }" />
		</span>
	</div>
	<div class="font-div-style fc-title-02 center-site">
		<span><spring:message code="label.cg0701.defensematrix_havecount" />:</span>
		<span class="fc-content-03">
			<c:out value="${old_defenseMatrixCount }" />→<c:out value="${new_defenseMatrixCount }" />
		</span>
	</div>
	<div class="defense-button-style">
		<div id="confirm_useDefenseMatrix" class="button-large link_hand text-center padding-style">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/qidongfangyujuzhen-green-z.png"/>"/>
		</div>	
		<input type="hidden" id="useDefenseMatrix_message" value="<spring:message code="label.cg0701.result_defensematrix" />" />
		<input type="hidden" id="treasureDetail_url" value="<p:fullurl value="/cg0701/cg070103/index/" />" />
		<input type="hidden" id="useDefenseConfirm_url" value="<p:fullurl value="/cg0701/cg070104/useDefenseConfirm/${fragmentViewData.id }/${fragmentViewData.matrixConcumableId }" />" />
	</div>
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0701/cg070104.js'/>"></script>

