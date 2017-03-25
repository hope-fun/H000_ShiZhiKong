<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1301.css?v=1"/>">

<script>
$(function() {
	$(".pagination-button").bind(
			"click",
			function() {
				document.forms[0].appendChild(document
						.getElementsByName("selectInfo")[0].cloneNode());
			})
});
</script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1301.tujian"></spring:message></span>
	</div>
	<div class="handbook-font-num center-site fc-title-01">
		<span class=""><spring:message code="label.cg1301.nindetujian"></spring:message></span> 
		<span class="fc-content-02">${totalCardNum}</span>
		<span>/</span>
		<span>${totalSize}</span>
	</div>
	
	<jsp:include page="../commons/searchFilter/campFilter.jsp" flush="true" ></jsp:include>
	<input name="selectInfo" type="hidden" value="${selectInfo }"></input>
	<c:set var="paginationParams" value="${playerCards}" scope="request" />
	<c:set var="paginationUrl" value="/kpyx-logical-service/cg1301/cg130101/index" scope="request" />
	<tags:pagination items="${playerCards}" paginationUrl="${paginationUrl }" searchData="${searchPlayerCardVO }" method="GET">
	
		 <div class="margin-top20-style">
		 	<div class="panelA-header"></div>
			<div class="panelA-body panelA06-height panel-handbook">
				<div class="a" style="overflow: hidden;">
				   <div>
						<c:forEach items="${playerCardArray}" var="name" begin="0" end="19" step="1" varStatus="status">
							<c:choose>
								<c:when test="${(status.index+1) % 6==0}">
								        ${"</div>"}  
								        ${"<div>"}
										<c:choose>
											<c:when test="${not empty playerCards[status.index] }">
												<div>
													<img class="clickTone1" src='<p:cardImg type="middle" id="${playerCards[status.index].cardId}" />' onclick="location.href='<p:fullurl value="/cg0301/cg030102/index/${playerCards[status.index].id }"/>?comeFromCG1301=true&fromHandbook=true'"/>
												</div>
											</c:when>
											<c:otherwise>
											    <div></div>
											</c:otherwise>
										</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${not empty playerCards[status.index] }">
										    <div>
									    		<img class="clickTone1" src='<p:cardImg type="middle" id="${playerCards[status.index].cardId}" />' onclick="location.href='<p:fullurl value="/cg0301/cg030102/index/${playerCards[status.index].id }"/>?comeFromCG1301=true&fromHandbook=true'"/>
									    	</div>
										</c:when>
										<c:otherwise>
										    <div></div>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="panelA-footer"></div>
		</div> 
	</tags:pagination>
	
	<div class="button buttons-style">
		<img alt="" class="clickTone1" src="<p:localurl value="/resources/images/buttons/yingxiongjiangli-green-z.png"/>" onclick="location.href='<p:fullurl value="/cg1601/cg160102/index"/>'"/>
	</div>
	<div class="clearfix"></div>
</div>

