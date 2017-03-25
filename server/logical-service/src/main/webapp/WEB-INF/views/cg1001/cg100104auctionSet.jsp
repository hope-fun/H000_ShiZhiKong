<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="goods" tagdir="/WEB-INF/tags/goods"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1001/CG100104.css?v=1"/>">
<script type="text/javascript"  src="<p:fullurl value="/resources/js/cg0301/auctionGoods.js"/>"></script>
<input type="hidden" id="cg0301operatefail" value="<spring:message code='label.cg0301.operatefail' />"/>
<input type="hidden" id="cg0301auctionsuccess" value="<spring:message code='label.cg0301.auctionsuccess' />"/>
<input type="hidden" id="cg0301upperlimit" value="<spring:message code='label.cg0301.upperlimit' />"/>
<input type="hidden" id="cg0301decimalsforbid" value="<spring:message code='label.cg0301.decimalsforbid' />"/>
<input type="hidden" id="cg0301auctionprice" value="<spring:message code='label.cg0301.auctionprice' />"/>
<input type="hidden" id="cg0301auctionrightprice" value="<spring:message code='label.cg0301.auctionrightprice' />"/>
<input type="hidden" id="cg0301numlimit" value="<spring:message code='label.cg0301.numlimit' />"/>
<input type="hidden" id="cg0301rightform" value="<spring:message code='label.cg0301.rightform' />"/>
<div class="content">
	<div class=" title-label-03">
		<span><spring:message code="label.cg1001.xinjipaimaihang" /></span>
	</div>
	<input type="hidden" id="targetUrl"
		value="<p:fullurl value="/cg1001/cg100102"/>" /> <input
		type="hidden" id="buyTargetUrl"
		value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />
	<div class="tabpanel">
		<div style="font-size: 0px;">
				<img alt="" src='<p:localurl value="/resources/images/buttons/wupingoumai-blue-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1001/cg100101/index"/>';event.preventDefault();"/>
				<img alt=""	src='<p:localurl value="/resources/images/buttons/zuanshishuijingduihuan-blue-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100205/index"/>';event.preventDefault();"/>
				<img alt=""	src='<p:localurl value="/resources/images/buttons/wupinpaimai-yellow-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CARD"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/wodeshangjiawupin-blue-b.png"/>' onclick="location.href='<p:fullurl value="/cg1001/cg100105/index"/>';event.preventDefault();"/>
		</div>

		<div class="clearfix"></div>
	</div>
	<div class="split-line"></div>
	<div>
		<div class='gbutton-01'>
			<div>
				<c:if test="${auctionType eq 'CARD' }">
					<img class='card-button clickTone1' src='<p:localurl value='/resources/images/buttons/kapaipaimai-yellow-x.png'/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CARD"/>';event.preventDefault();">
				</c:if>
				<c:if test="${auctionType ne 'CARD' }">
					<img class='card-button clickTone1' src='<p:localurl value='/resources/images/buttons/kapaipaimai-green-x.png'/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CARD"/>';event.preventDefault();">
				</c:if>
			</div>	
			<div>
				<c:if test="${auctionType eq 'CONSUMABLE' }">
					<img class='equipment-button clickTone1' src='<p:localurl value='/resources/images/buttons/daojupaimai-yellow-x.png'/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CONSUMABLE"/>';event.preventDefault();">
				</c:if>
				<c:if test="${auctionType ne 'CONSUMABLE' }">
					<img class='equipment-button clickTone1' src='<p:localurl value='/resources/images/buttons/daojupaimai-blue-x.png'/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CONSUMABLE"/>';event.preventDefault();">
				</c:if>
			</div>
			<div></div>
		</div>
		<div class="equip-style">
			<c:if test="${auctionType eq 'EQUIPMENT' }">
				<img class='consumable-button clickTone1' src='<p:localurl value='/resources/images/buttons/zhuangbeipaimai-yellow-x.png'/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/EQUIPMENT"/>';event.preventDefault();">
			</c:if>
			<c:if test="${auctionType ne 'EQUIPMENT' }">
			 <img class='consumable-button clickTone1' src='<p:localurl value='/resources/images/buttons/zhuangbeipaimai-green-x.png'/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/EQUIPMENT"/>';event.preventDefault();">
			</c:if>
		</div>
<!-- 	
		<form method="POST"
		action="<p:fullurl value="/cg1001/cg100101/index"/>"
		enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
			<div>
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA07-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content">
						<div class='search-title'>
							<span class="fc-normal-05-l"><spring:message code="label.cg1001.qingxuanzesousuotiaojian" /></span>
						</div>
						<div class='search-condition'>
							<div>
								<span class="fc-normal-05-l"><spring:message code="label.cg1001.leibie" /></span> 
								<select name="selectItemType" style="font-size: 17pt;">
									<option value="CONSUMABLE"
										${unionAuctionGoodsViewData.selectItemType eq "CONSUMABLE"?"selected":""}><spring:message code="label.cg1001.daoju" /></option>
									<option value="CARD"
										${unionAuctionGoodsViewData.selectItemType eq "CARD"?"selected":""}><spring:message code="label.cg1001.kapai" /></option>
									<option value="EQUIPMENT"
										${unionAuctionGoodsViewData.selectItemType eq "EQUIPMENT"?"selected":""}><spring:message code="label.cg1001.zhuangbei" /></option>
								</select>
							</div>
							<div>
								<span class="fc-normal-05-l"><spring:message code="label.cg1001.jiage" /></span> 
								<select name="selectSortType" style="font-size: 17pt;">
									<option value="ASC"
										${unionAuctionGoodsViewData.selectSortType eq "ASC"?"selected":""}><spring:message code="label.cg1001.congdigaodao" /></option>
									<option value="DESC"
										${unionAuctionGoodsViewData.selectSortType eq "DESC"?"selected":""}><spring:message code="label.cg1001.conggaodaodi" /></option>
								</select>
							</div>
							<div></div>
						</div>
						<div class='search-condition'>
							<span class="fc-normal-05-l"><spring:message code="label.cg1001.mingcheng" /></span> <input type="text"
								name="selectName" style="width: 65%;font-size: 17pt;"
								value="${unionAuctionGoodsViewData.selectName}" />
						</div>
			
						<div class='search-button'>
							<img class="sousuo_button"
								src='<p:localurl value="/resources/images/buttons/sousuo-green.png"/>'>
						</div>
					</div>
				</div>
			</div>
	</form>
 -->
 	<c:if test="${auctionType eq 'EQUIPMENT' }">
 		<link rel="stylesheet" type="text/css"href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
		<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0602/CG060203.css?v=1"/>">
			<script>
				function add(obj) {
					var playerCardId = "${mainPlayerCard.id }"
					var pageIndex = document.forms[0].pageIndex.value
					var pageSize = document.forms[0].pageSize.value

					$(obj).attr(
							"href",
							$(obj).attr("id") + "&playerCardId=" + playerCardId
									+ "&pageIndex=" + pageIndex + "&pageSize="
									+ pageSize + "&forwardPage=false");

				}
			</script>
			<goods:equipAuctionList searchData="${searchData}" searchUrl="/kpyx-logical-service/cg1001/cg100104/equipment"
		items="${auctionVo}"></goods:equipAuctionList> 
 	</c:if>
	<c:if test="${auctionType eq 'CARD' }">
		<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/cg0301card.css?v=1"/>">
		<script type="text/javascript"  src="<p:fullurl value="/resources/js/cg0301/cg030101.js"/>"></script>
		<cards:listAuction searchData="${searchData }" searchUrl="/kpyx-logical-service/cg1001/cg100104/card"  items="${auctionVo}"></cards:listAuction>
		<input id="doDisboardEquUrl" type="hidden" value="<p:fullurl value='/cg0301/cg03010101/DoDisboard/'/>" />
	</c:if>
	<c:if test="${auctionType eq 'CONSUMABLE' }">
		<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
		<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
		<cards:0601_showAuctionList searchData="${searchData }" searchUrl="/kpyx-logical-service/cg1001/cg100104/consumable" items="${auctionVo}"></cards:0601_showAuctionList>
	</c:if>
	</div>
</div>