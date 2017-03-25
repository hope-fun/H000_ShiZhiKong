<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value='/resources/css/CG0301/tabpanel.css?v=1'/>">
<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg0301/cg030101/cardView" var="cardViewSearchURL"/>
<p:fullurl value="/cg0301/cg030102/cardDetail" var="cardViewDetailURL"/>
<script type="text/javascript">
function notopen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
</script>
<c:if test="${not empty requestType or requestType == 'ajax' }">
</c:if>
<c:if test="${empty requestType}">
	<div class="content cg030101CardView">
		<div class="menu-medium title-label-03">
			<span><spring:message code="label.cg030101.title"></spring:message></span>
		</div>
		
		<div>
			<div class="tabpanel">
				<div style='font-size: 0px' class="div1">
					<img alt="" src='<p:localurl value='/resources/images/buttons/kapaiyilan-yellow-b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg030101/cardView" />';event.preventDefault();">
					<img alt="" src='<p:localurl value='/resources/images/buttons/chushou-blue-b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg03010101/cardSale" />';event.preventDefault();">
					<img alt="" src='<p:localurl value='/resources/images/buttons/paimai-blue-b.png'/>'  class='button_gray' onclick="notopen()"><!--onclick="location.href='<p:fullurl value="/cg0301/cg030101/auction" />';event.preventDefault();"  -->
				</div>
				<div class="clearfix"></div>
			</div>
			<div>
				<div class="split-line"></div>
				
				<cards:detail02 item="${mainPlayerCard}" detailUrl="${detailAction}"></cards:detail02>
				
				<div class="split-01"></div>
	
				<jsp:include page="../commons/searchFilter/campFilter.jsp" flush="true" ></jsp:include>
	
				<jsp:include page="../commons/searchFilter/orderSelect.jsp" flush="true" ></jsp:include>
				
				<cards:list searchData="${searchPlayerCardVO }" searchUrl="${cardViewSearchURL}" detailUrl="${detailAction}" items="${playerCards}"></cards:list>
			</div>
		</div>
	</div>
</c:if>