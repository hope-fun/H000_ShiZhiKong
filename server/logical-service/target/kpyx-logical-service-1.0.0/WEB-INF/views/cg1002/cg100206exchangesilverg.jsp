<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="goods" tagdir="/WEB-INF/tags/goods" %>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG100205.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:localurl value='/resources/js/cg1002/cg100206.js'/>"></script>
<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg1002/cg100206/index" var="coinSearchURL"/>

<c:if test="${not empty requestType or requestType == 'ajax' }">
</c:if>
<input type="hidden" id="cg1001operatefail" value="<spring:message code='label.cg0301.operatefail'/>"/>
<input type="hidden" id="cg1001goodnotexit" value="<spring:message code='label.cg1001.goodnotexit'/>"/>
<input type="hidden" id="cg1001buysuccess" value="<spring:message code='label.cg1001.buysuccess'/>"/>
<input type="hidden" id="cg1001diamondnotenough" value="<spring:message code='label.cg1001.diamondnotenough'/>"/>
<input type="hidden" id="cg1001buyfail" value="<spring:message code='label.cg1001.buyfail'/>"/>
<input type="hidden" id="cg1002051numlimit" value="<spring:message code='label.cg100205.numlimit'/>"/>
<input type="hidden" id="cg1001cannotaucionselfgood" value="<spring:message code='label.cg1001.cannotaucionselfgood'/>"/>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1001.zuanshishuijinchushou" /></span>
	</div>
	<div class="gbutton-01 sale-button sell-silver-button">
		<!-- <div >
				<img src='<p:localurl value="/resources/images/buttons/chushoushuijing-blue-x.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg10020101/index"/>';event.preventDefault();">
		</div> -->
		<div style="width:100%;">
			<a href="<p:fullurl value="/cg1002/cg100201/index"/>">
				<img src='<p:localurl value="/resources/images/buttons/chushouzuanshi-green.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100201/index"/>';event.preventDefault();">
			</a>
		</div>
		<div></div>
	</div>
	
	<div class="split-01"></div>
	
	<div class="tab-panel02">
		<div>
			<a href='<p:fullurl value="/cg1002/cg100205/index"/>'>
				<img src='<p:localurl value="/resources/images/buttons/goumaizuanshi-blue-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100205/index"/>';event.preventDefault();">
			</a>
		</div>
		<div>
			<a href='<p:fullurl value="/cg1002/cg100206/index"/>'>
				<img src='<p:localurl value="/resources/images/buttons/goumaishuijng-yellow-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100206/index"/>';event.preventDefault();">
			</a>
		</div>
		<div></div>
	</div>
		<div class="split-line"></div>
	<div>
		<goods:silverAuctionGoods items="${auctionGoodsVoLst}" searchData="${searchAuctionGoodsVO }" searchUrl="${coinSearchURL }"></goods:silverAuctionGoods>
	</div>
		<input
		type="hidden" id="buyTargetUrl"
		value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />	
</div>
