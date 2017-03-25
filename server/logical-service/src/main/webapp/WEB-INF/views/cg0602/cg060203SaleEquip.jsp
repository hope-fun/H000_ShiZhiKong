<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@ taglib prefix="goods" tagdir="/WEB-INF/tags/goods"%>

<link rel="stylesheet" type="text/css"href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0602/CG060203.css?v=1"/>">
<script type="text/javascript"  src="<p:fullurl value="/resources/js/cg0301/auctionGoods.js"/>"></script>
<script>
 
function loadEquipList(){
	location.href = '<p:fullurl value="/cg0602/cg060201/index"/>';
}

function loadSalesList() {
	location.href ='<p:fullurl value="/cg0602/cg060202/index"/>';
}

function loadAuctionlist(){
	location.href ='<p:fullurl value="/cg0602/cg060203/index"/>';
}



function add(obj) {
	var playerCardId = "${mainPlayerCard.id }"
	var pageIndex = document.forms[0].pageIndex.value
	var pageSize = document.forms[0].pageSize.value

	$(obj).attr(
			"href",
			$(obj).attr("id")
					+ "&playerCardId="
					+ playerCardId
					+ "&pageIndex="
					+ pageIndex
					+ "&pageSize="
					+ pageSize
					+"&forwardPage=true");
	
}

</script>

<input type="hidden" id="cg0301operatefail" value="<spring:message code='label.cg0301.operatefail' />"/>
<input type="hidden" id="cg0301auctionsuccess" value="<spring:message code='label.cg0301.auctionsuccess' />"/>
<input type="hidden" id="cg0301upperlimit" value="<spring:message code='label.cg0301.upperlimit' />"/>
<input type="hidden" id="cg0301decimalsforbid" value="<spring:message code='label.cg0301.decimalsforbid' />"/>
<input type="hidden" id="cg0301auctionprice" value="<spring:message code='label.cg0301.auctionprice' />"/>
<input type="hidden" id="cg0301auctionrightprice" value="<spring:message code='label.cg0301.auctionrightprice' />"/>
<input type="hidden" id="cg0301numlimit" value="<spring:message code='label.cg0301.numlimit' />"/>
<input type="hidden" id="cg0301rightform" value="<spring:message code='label.cg0301.rightform' />"/>

<div class="content">
	<div class="topHeader">
		<div class="title-label-03"><span><spring:message code="label.cg0602.wupin"/></span></div>
		<div class="tool-buttons">
			<div class="button-medium topHeader_lButton prop-width">
				<a href="<p:fullurl value="/cg0601/cg060101/index"/>">
					<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/daoju-green-x.png"/>" />
				</a>
			</div>
			<div class="button-medium topHeader_rButton prop-width">
				<a href="<p:fullurl value="/cg0602/cg060201/index"/>">
					<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zhuangbei-yellow-x.png"/>"/>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	 <div class="commonPading01" style="width: 100%;">
		<div class="borderPanel" style="width:100%;">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="fc-normal-05-l npc-message-cg060203" >							
						<spring:message code="label.cg060203.msg_npc"></spring:message>					
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div> 
	
	<div id="centerPart">
		<div id="topPart">
			<div style="float:left" id="equiplist" onclick="loadEquipList()">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zhuangbeiyilan-blue-b.png"/>" />
			</div>
			<div style="float:left" id="saleslist" onclick="loadSalesList()">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/chushou-blue-b.png"/>" />
			</div>
			<div style="float:left" id="auctionlist" onclick="loadAuctionlist()">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/paimai-yellow-b.png"/>" />
			</div>
		</div>
		<div class="clearfix split-line"></div>
		<!-- <div id="topPart">
			<div id="equiplist" class="equipTab2" onclick="loadEquipList()"><span><spring:message code="label.cg0602.zhuangbeiyilan"/></span></div>
			<div id="saleslist" class="equipTab2" onclick="loadSalesList()"><span><spring:message code="label.cg0602.chushou"/></span></div>
			<div id="auctionlist" class="equipTab1" onclick="loadAuctionlist()"><span><spring:message code="label.cg0602.paimai"/></span></div>
			<div class="clearfix split-02"></div>
		</div>-->
	</div>
	<c:if test="${ not empty playerEquipmentsVO }">
		<goods:equipAuctionList searchData="${playerEquipmentViewData}" searchUrl="/kpyx-logical-service/cg0602/cg060203/index"
		items="${playerEquipmentsVO}"></goods:equipAuctionList> 
	</c:if>
	<c:if test="${ empty playerEquipmentsVO }">
		<div style="float:none;clear: both;width:100%;"></div>
			<div style="text-align: center;">
				<span><spring:message code="lable.cg0601.ninhaimeiyourenhezhuangbei"/>!</span>
			</div>
	</c:if>	
	
</div>
