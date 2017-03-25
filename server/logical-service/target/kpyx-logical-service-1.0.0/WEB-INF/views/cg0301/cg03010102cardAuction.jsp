<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/cg0301card.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value='/resources/css/CG0301/tabpanel.css?v=1'/>">
<p:fullurl value="/cg0301/cg030101/auction" var="cardViewSearchURL"/>

<script type="text/javascript"  src="<p:fullurl value="/resources/js/cg0301/cg030101.js"/>"></script>
<script type="text/javascript"  src="<p:fullurl value="/resources/js/cg0301/auctionGoods.js"/>"></script>
<input type="hidden" id="cg0301operatefail" value="<spring:message code='label.cg0301.operatefail' />"/>
<input type="hidden" id="cg0301auctionsuccess" value="<spring:message code='label.cg0301.auctionsuccess' />"/>
<input type="hidden" id="cg0301upperlimit" value="<spring:message code='label.cg0301.upperlimit' />"/>
<input type="hidden" id="cg0301decimalsforbid" value="<spring:message code='label.cg0301.decimalsforbid' />"/>
<input type="hidden" id="cg0301auctionprice" value="<spring:message code='label.cg0301.auctionprice' />"/>
<input type="hidden" id="cg0301auctionrightprice" value="<spring:message code='label.cg0301.auctionrightprice' />"/>
<input type="hidden" id="cg0301numlimit" value="<spring:message code='label.cg0301.numlimit' />"/>
<input type="hidden" id="cg0301rightform" value="<spring:message code='label.cg0301.rightform' />"/>



<div class="content cg03010102cardAuction">
	<div>
		<div class="menu-medium title-label-03">
			<span><spring:message code="label.cg030101.title"></spring:message></span>
		</div>
		<div class="tabpanel">
			<div style='font-size: 0px' class="div1">
				<img alt="" src='<p:localurl value='/resources/images/buttons/kapaiyilan-blue-b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg030101/cardView" />';event.preventDefault();">
				<img alt="" src='<p:localurl value='/resources/images/buttons/chushou-blue-b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg03010101/cardSale" />';event.preventDefault();">
				<img alt="" src='<p:localurl value='/resources/images/buttons/paimai-yellow-b.png'/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg0301/cg030101/auction" />';event.preventDefault();">
			</div>
			<div class="clearfix"></div>
		</div>
		<div>
			<div class="split-line"></div>
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
								<span><spring:message code="label.cg030101.auction_msg_npc01" /><span class="fc-normal-06-m">${supAuctionGoodsNum}</span><spring:message code="label.cg030101.auction_msg_npc02" /></span>
							</div>
							<div></div>
						</div>
					</div>
					
				</div>
			</div>
			
			<cards:listAuction searchData="${searchPlayerCardVO }" searchUrl="${cardViewSearchURL}"  items="${playerCards}"></cards:listAuction>
		</div>
		<input id="doDisboardEquUrl" type="hidden" value="<p:fullurl value='/cg0301/cg03010101/DoDisboard/'/>" />
		<input id="refreshurl" type="hidden" value="<p:fullurl value='/cg0301/cg030101/auction'/>" />
	</div>
</div>