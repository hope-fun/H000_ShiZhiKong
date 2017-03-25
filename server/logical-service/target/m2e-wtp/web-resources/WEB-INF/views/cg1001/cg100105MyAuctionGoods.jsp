<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="goods" tagdir="/WEB-INF/tags/goods"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1001/CG1001.css?v=1"/>">

<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg1001/cg1001.js'/>"></script>
<c:set var="urlRequest"><p:fullurl value="/cg1001/cg100105/undercarriage/"></p:fullurl></c:set>
<c:set var="diamond"><spring:message code="lablel.raidtype.GCOIN"></spring:message></c:set>
<input type="hidden" id="cg1001operatefail" value="<spring:message code='label.cg0301.operatefail'/>"/>
<input type="hidden" id="cg1001goodnotexit" value="<spring:message code='label.cg1001.goodnotexit'/>"/>
<input type="hidden" id="cg1001buysuccess" value="<spring:message code='label.cg1001.buysuccess'/>"/>
<input type="hidden" id="cg1001cystralnotenough" value="<spring:message code='label.cg1001.cystralnotenough'/>"/>
<input type="hidden" id="cg1001buyfail" value="<spring:message code='label.cg1001.buyfail'/>"/>
<input type="hidden" id="cg1001cardslimit" value="<spring:message code='label.cg1001.cardslimit'/>"/>
<input type="hidden" id="cg1001cannotaucionselfgood" value="<spring:message code='label.cg1001.cannotaucionselfgood'/>"/>
<div class="content">
	<div class=" title-label-03">
		<span><spring:message code="label.cg1001.xinjipaimaihang" /></span>
	</div>
	<input type="hidden" id="targetUrl"
		value="<p:fullurl value="/cg1001/cg100102"/>" />
	<input type="hidden" id="buyTargetUrl"
		value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />
	<div class="tabpanel">
		<div style="font-size: 0px;">
				<img alt="" class='clickTone1' src='<p:localurl value="/resources/images/buttons/wupingoumai-blue-b.png"/>'  onclick="location.href='<p:fullurl value="/cg1001/cg100101/index"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/zuanshishuijingduihuan-blue-b.png"/>' onclick="location.href='<p:fullurl value="/cg1002/cg100205/index"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/wupinpaimai-blue-b.png"/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CARD"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/wodeshangjiawupin-yellow-b.png"/>' onclick="location.href='<p:fullurl value="/cg1001/cg100105/index"/>';event.preventDefault();"/>
		</div>

		<div class="clearfix"></div>
	</div>
	<div class="split-line"></div>
	
	<c:if test="${empty pagedGoodsList}">
		<tags:pagination items="${pagedGoodsList}" id="searchPlayerList" method="POST"
		renderAjax="false" searchData="${unionAuctionGoodsViewData}"
		paginationUrl="/kpyx-logical-service/cg1001/cg100105/index">
		<div class="align-center" style="text-align:center;"><spring:message code="lablel.cg100105.noauctiongoods"></spring:message></div>
		</tags:pagination>
	</c:if>
<c:if test="${not empty pagedGoodsList}">

	<tags:pagination items="${pagedGoodsList}" id="searchPlayerList" method="POST"
		renderAjax="false" searchData="${unionAuctionGoodsViewData}"
		paginationUrl="/kpyx-logical-service/cg1001/cg100105/index">
		<c:forEach items="${pagedGoodsList}" var="item" varStatus="status">
			<form id="forms_${item.id}">
				<div class="auct-goods-list">
					<div>
						<div class="borderPanel">
							<div class="panelB-header"></div>
							<div class="panelB-body panelB02-height"></div>
							<div class="panelB-footer"></div>
							<div class="border-content-noleft">
								<div class="consumer-list">
									<div class="consumer-list-title">
										<span class="fc-content-01">${item.itemType == 'DIAMOND' ? diamond : item.itemName }</span>
									</div>
									<div class="consumer-list-image"></div>
									<div class="large-euqip-style">
										<div class="bottomPart_line_image">
											<c:choose>
												<c:when test="${item.itemType == 'EQUIPMENT'}">
														<img style="width:100%;"
															src="<p:equipImg type="large" id="${item.itemId }"></p:equipImg>" />
												</c:when>
												<c:when test="${item.itemType == 'CARD'}">
														<img style="width:100%;"
															src="<p:cardImg type="middle" id="${item.itemId }"></p:cardImg>" />
												</c:when>
												<c:when test="${item.itemType == 'CONSUMABLE'}">
														<img style="width:100%;"
															src="<p:consumImg type="large" id="${item.itemId }"></p:consumImg>" />
												</c:when>
												<c:when test="${item.itemType == 'DIAMOND'}">
														<img style="width:100%;"
															src="<p:localurl value="/resources/images/other/large/GCOIN.png"/>" />
												</c:when>
											</c:choose>
											<div class='fc-normal-08-m get-silver-count'>
												<span><spring:message code='label.cg1001.shuliang'></spring:message></span><span>${item.itemCount }</span>
											</div>
										</div>
										<div class='auction-info'>
											<div class='auction-info' >
												<div>
													<span class="fc-normal-05-m"><spring:message code="label.cg1001.jiage" /></span> <span
														class="fc-normal-03-m">${item.price}<spring:message code="label.cg1001.shuijin" /></span>
												</div>
												<div>
													<span class="fc-normal-05-m"><spring:message code="label.cg1001.yongyouzhe" /></span> 
													<span class="fc-normal-03-m">${item.playerName}</span>
												</div>
												<div class='notespace'>
													<span class="fc-normal-05-m"><spring:message code="lable.cg0601.biaoqian" /></span> 
													<span class="fc-normal-03-m">${item.note}</span>
												</div>
												
												<div>
													<div class="buy-goods-button item${item.id }">
														<img class="clickTone1"
															onclick="location.href='<p:fullurl value='/cg1001/cg100105/undercarriage/${item.id }'/>'"
															src="<p:localurl value="/resources/images/buttons/xiajia-green.png"/>" />
													</div>
													<c:if test="${item.itemType != 'DIAMOND' }">
														<div class="more-info-style">
										
																	<img class="clickTone1"
																		onclick='Jump("${item.itemType}","${item.id}")'
																		src="<p:localurl value="/resources/images/buttons/gengduoxinxi-blue.png"/>" />
		
														</div>
													</c:if>
													<!--<c:if test="${item.itemType == 'DIAMOND' }">
														<script>
															$(".item${item.id}").addClass("button-xiajia");
														</script>
													</c:if>-->
													<div class='clearfix'></div>
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>
	</tags:pagination>
	<form name="form_jump" method="POST"
		enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
		<input type="hidden" name="itemPlayerName" value="" />
	</form>
</c:if>
</div>