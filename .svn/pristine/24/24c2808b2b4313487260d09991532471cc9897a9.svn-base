<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<%@attribute name="items"
	type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"
	required="true" rtexprvalue="true"
	description="The paged list of auction goods"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search auction goods list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.logical.busi.viewdata.UnionAuctionGoodsViewData"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>

<c:if test="${empty items}">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">

	<tags:pagination items="${items}" id="searchPlayerList" method="POST"
		renderAjax="false" searchData="${searchData}"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items}" var="item" varStatus="status">
			<c:if test="${item.itemType != 'DIAMOND'}">
				<form id="forms_${item.id}">
					<div class="auct-goods-list">
						<div>
							<div class="borderPanel">
								<div class="panelB-header"></div>
								<div class="panelB-body panelB02-height p-height-${item.id }"></div>
								<div class="panelB-footer"></div>
								<div class="border-content-noleft">
									<div class="consumer-list">
										<div class="consumer-list-title">
											<span class="fc-content-01">${item.itemName }</span>
										</div>
										<!-- 当拍卖品为卡牌且排名字段值不为空时，则显示该部分内容 -->
										<c:if test="${item.itemType == 'CARD' and (not empty item.rank) }">
										    <div class="card-rank fc-normal-08-m">
												<span>佣兵总排名:</span>
												<span>${item.rank }</span>
											</div>
										</c:if>
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
													
												</div>
											</div>
											<div class="clearfix"></div>
											
											<c:if test="${item.itemType == 'EQUIPMENT' && not empty item.suitId }">
												<script>
													$(".p-height-${item.id }").addClass('suit-des-height');
												</script>
												<div>
													<div class="suit-info1"><spring:message code="label.cg0602.suitinfo1"></spring:message>${item.suitName1 }，${item.suitName2 }<spring:message code="label.cg0602.suitinfo2"></spring:message></div>
													<div class="suit-info2"><spring:message code="label.cg0602.suitinfo3"></spring:message>${suitDescription }</div>
												</div>
											</c:if>
											
											<div class="all-buttons-style all-buttons-style02">
												<div class="buy-goods-button">
													<img class="clickTone1"
														onclick="BuyGoods('${item.id}')"
														src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" />
												</div>
												<div class="more-info-style">
								
															<img class="clickTone1"
																onclick='Jump("${item.itemType}","${item.id}")'
																src="<p:localurl value="/resources/images/buttons/gengduoxinxi-blue.png"/>" />
	
												</div>
												<div class='clearfix'></div>
											</div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</c:if>
			<c:if test="${item.itemType == 'DIAMOND'}">
			</c:if>
		</c:forEach>
	</tags:pagination>
	<script>
		if(!$("form[id]")[0]) {
			$("<div class='align-center'>您当前无上架物品！</div>").insertBefore("form[name=from_jump]")
		}
	</script>
	<form name="form_jump" method="POST"
		enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
		<input type="hidden" name="itemPlayerName" value="" />
	</form>
</c:if>
