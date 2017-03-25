<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="goods" tagdir="/WEB-INF/tags/goods" %>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG100205.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:localurl value='/resources/js/cg1002/cg100205.js'/>"></script>
<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg1002/cg100205/index" var="coinSearchURL"/>

<c:if test="${not empty requestType or requestType == 'ajax' }">
</c:if>

<input type="hidden" id="operatefail" value="<spring:message code='label.cg0301.operatefail'/>" /> 
<input type="hidden" id="goodnoexist" value="<spring:message code='label.cg1001.goodnotexit'/>" /> 
<input type="hidden" id="buysuccess" value="<spring:message code='label.cg1001.buysuccess'/>" /> 
<input type="hidden" id="cystralnotenough" value="<spring:message code='label.cg1001.cystralnotenough'/>" /> 
<input type="hidden" id="buyfail" value="<spring:message code='label.cg1001.buyfail'/>" />
<input type="hidden" id="numlimit" value="<spring:message code='label.cg100205.numlimit'/>" /> 
<input type="hidden" id="cannotauction" value="<spring:message code='label.cg1001.cannotaucionselfgood'/>" /> 
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1001.zuanshishuijinchushou" /></span>
	</div>
	<div class="gbutton-01 sale-button sell-silver-button">
		<!-- <div >
			<a href="<p:fullurl value="/cg1002/cg10020101/index"/>">
				<img src='<p:localurl value="/resources/images/buttons/chushoushuijing-blue-x.png"/>'>
			</a>
		</div> -->
		<div style="width: 100%;">
			<a href="<p:fullurl value="/cg1002/cg100201/index"/>">
				<img src='<p:localurl value="/resources/images/buttons/chushouzuanshi-green.png"/>'>
			</a>
		</div>
		<div></div>
	</div>
	
	<div class="split-01"></div>
	
	<div class="tab-panel02">
		<div>
			<img src='<p:localurl value="/resources/images/buttons/goumaizuanshi-yellow-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100205/index"/>';event.preventDefault();">
		</div>
		<!-- <div>
			<img src='<p:localurl value="/resources/images/buttons/goumaishuijing-blue-b.png"/>'  class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100206/index"/>';event.preventDefault();">
		</div> -->
		<div></div>
	</div>
		<div class="split-line"></div>
	<div>
		<goods:coinAuctionGoods items="${auctionGoodsVoLst}" searchData="${searchAuctionGoodsVO }" searchUrl="${coinSearchURL }"></goods:coinAuctionGoods>
	</div>
		<input
		type="hidden" id="buyTargetUrl"
		value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />	
</div>

