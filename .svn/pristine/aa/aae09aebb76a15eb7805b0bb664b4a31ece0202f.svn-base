<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value='/resources/css/CG0301/cg0301card.css?v=1'/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0301/cg03010101CardSale.js'/>"></script>
<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg0301/cg03010101/cardSale" var="cardSaleSearchURL" />

<c:if test="${not empty requestType or requestType == 'ajax' }">
	<%-- <cards:salelist searchData="${searchPlayerCardVO }" searchUrl="${cardSaleSearchURL }" items="${playerCards }" /> --%>
</c:if>

<input type="hidden" id="cg0301chechedcards" value="<spring:message code='label.cg03010101.chechedcards' />"/>
<input type="hidden" id="cg0301willget" value="<spring:message code='label.cg03010101.willget' />"/>
<input type="hidden" id="cg0301raidtypeSCOIN" value="<spring:message code='lablel.raidtype.SCOIN' />"/>
<input type="hidden" id="cg0301choosecards" value="<spring:message code='label.cg03010101.choosecards' />"/>
<script>
function notopen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
</script>
<c:if test="${empty requestType}">
<div class="content cg03010101CardSale">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg030101.title" /></span>
	</div>
	<div>
		<div class="tabpanel">
			<div class="div1" style="font-size:0;">
				<img alt="" src='<p:localurl value='/resources/images/buttons/kapaiyilan-blue-b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg030101/cardView" />';event.preventDefault();">
				<img alt="" src='<p:localurl value='/resources/images/buttons/chushou-yellow--b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg03010101/cardSale" />';event.preventDefault();">
				<img alt="" src='<p:localurl value='/resources/images/buttons/paimai-blue-b.png'/>'  class='button_gray' onclick="notopen()"><!-- onclick="location.href='<p:fullurl value="/cg0301/cg030101/auction" />';event.preventDefault();" -->
			</div>
			<div class="clearfix"></div>
		</div>
		<div>
			<div class="split-line"></div>
			<div class="card-number">
				<span class="fc-normal-05-l"><spring:message code="label.cg03010101.cardnum" /></span>
				<span><c:out value="${playerCardsCount }" /></span>
				<span class="fc-normal-05-l">/<c:out value="${playerCardMax }" /></span>
			</div>
		
			<jsp:include page="../commons/searchFilter/campFilter.jsp" flush="true" ></jsp:include>
			
			<jsp:include page="../commons/searchFilter/orderSelect.jsp" flush="true" ></jsp:include>

			<div class="panel-npc">
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB01-height"></div>
					<div class="panelB-footer"></div>
					<div class="border-content">
						<div class="npc-message">
							<div>
								<div class="npc-pic">
									<img alt="" src='<p:localurl value="/resources/images/npc-2.png"/>'>
								</div>
							</div>
							<div class='npc-info fc-normal-05-m'>
								<spring:message code="label.cg03010101.msg_npc" />
							</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>		
			
			<!-- 分布数据显示 -->
			<cards:salelist searchData="${searchPlayerCardVO }" searchUrl="${cardSaleSearchURL }" items="${playerCards }" />
			
			<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
			<input id="doCardsSaleUrl" type="hidden" value="<p:fullurl value='/cg0301/cg03010101/DoCardsSale/'/>" />
			<input id="doDisboardEquUrl" type="hidden" value="<p:fullurl value='/cg0301/cg03010101/DoDisboard/'/>" />
		</div>
	</div>
</div>
</c:if>
