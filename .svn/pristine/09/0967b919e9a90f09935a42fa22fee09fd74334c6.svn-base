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

	<tags:pagination items="${items}" id="searchCoinList" method="GET"
		renderAjax="false" searchData="${searchData}"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items }" var="auctionGoodsVo">
			<form id="frame_${auctionGoodsVo.id }">
				<div class="panel-buy-coin">
					<div class="borderPanel">
						<div class="panelB-header"></div>
						<div class="panelB-body panelB03-height"></div>
						<div class="panelB-footer"></div>
						<div class="border-content">
							<div>
								<div class='silver-pic'>
									<img alt="" src="<p:localurl value="/resources/images/shuijing.png"/>">
								</div>
								<div class='silver-info'>
									<div>
										<span class="fc-normal-05-m"><spring:message
												code="label.cg1001.shuijinshuliang" /></span>
												<span>${auctionGoodsVo.itemCount}</span>
									</div>
									<div>
										<span class="fc-normal-05-m"><spring:message
												code="label.cg1001.jiage" /></span><span>${auctionGoodsVo.price}</span>
										<span><spring:message code="label.cg1001.zuanshi" /></span>
									</div>
									<c:set var="perPrice" value="${auctionGoodsVo.prePrice}"></c:set>
									<c:if test="${auctionGoodsVo.prePrice == 0}">
										<c:set var="perPrice" value="${1.0*auctionGoodsVo.itemCount/auctionGoodsVo.price}"></c:set>
									</c:if>
									<div>
										<span class="fc-normal-05-m"><spring:message
												code="label.cg1001.huilv" /></span><span>1:<p:FloatAccuracy number="${perPrice}"></p:FloatAccuracy> </span>
									</div>
									<div>
										<span class="fc-normal-05-m stock-num"><spring:message
												code="label.cg1001.yongyouzhe" /></span>
										<span>${auctionGoodsVo.playerName}</span>
									</div>
								<div class='silver-buybutton'>
									<img alt="" class="clickTone1" onclick="buyGold('${auctionGoodsVo.id}')"
											src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>'>
								</div>
								<div class='clearfix'></div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>
	</tags:pagination>
</c:if>