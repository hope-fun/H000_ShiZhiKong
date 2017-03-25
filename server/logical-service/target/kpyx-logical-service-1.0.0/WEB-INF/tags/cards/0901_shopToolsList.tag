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
	description="The paged list of player cards"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search player cards list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.data.service.vo.SearchShopGoodsVO"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>
<c:if test="${empty items }">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }">


	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData }"
		paginationUrl="${searchUrl }">

		<div class="twobuttondiv">
			<a href="<p:fullurl value="/cg0901/cg090101/index"/>">
				<img alt="" class="clickTone1" src="<p:localurl value="/resources/images/buttons/goumaizuanshi-green-z.png" />">
			</a>
		</div>

		<c:forEach items="${items}" var="item">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="panel-gmdj-header fc-content-02">
						<span>${item.name}</span>
					</div>

				</div>

				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB05-height" style="height: 250px;"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
						<div class="common-padding-top10">
							<div class="propsImagesDiv">
								<img
									src="<p:imgPath folder="shopGoods" type="large" id="${item.id }"></p:imgPath>" />
							</div>

							<div class="mfz-text-description">

								<c:choose>
									<c:when test="${item.showHoldcount}">
										<div class="common-padding10">
											<span class="fc-normal-05-l"><spring:message
													code="lable.cg0901.jiage" />:</span> <span class="fc-content-03 ">${item.price}<spring:message
													code="lable.cg0901.zuanshi" /></span> <span
												class="fc-normal-05-m ">(<spring:message
													code="lable.cg0901.xingjishangdianjia" />:${item.VIPPrice}<spring:message
													code="lable.cg0901.zuanshi" />)
											</span>
										</div>
										<div class="common-padding10">
											<span class="fc-normal-05-l"><spring:message
													code="lable.cg0901.chiyoushuliang" />:</span> <span
												class="fc-content-02">${item.holdCount}</span>
										</div>
										<div class="common-padding10">
											<span class="fc-normal-05-m">${item.description}</span>
										</div>
									</c:when>
									<c:otherwise>
										<div class="common-padding3">
											<span class="fc-normal-05-l"><spring:message
													code="lable.cg0901.jiage" />:</span> <span class="fc-content-03 ">${item.price}<spring:message
													code="lable.cg0901.zuanshi" /></span> <span
												class="fc-normal-05-m ">(<spring:message
													code="lable.cg0901.xingjishangdianjia" />:${item.VIPPrice}<spring:message
													code="lable.cg0901.zuanshi" />)
											</span>
										</div>
										<div class="common-padding3">
											<span class="fc-withwild-s"><spring:message
													code="lable.cg0901.shop.new.times" /></span>
										</div>
										<div class="common-padding3">
											<span class="fc-normal-05-m"><spring:message
													code="lable.cg0901.shop.for.new" /></span>
										</div>
										<div>
											<span class="fc-normal-05-l"><spring:message
													code="lable.cg0901.shop.contain" /></span><span
												class="fc-content-03">${item.description}</span>
												<span class="fc-normal-06-m"><spring:message
													code="lable.cg0901.shop.self" /></span></span>
										</div>

									</c:otherwise>
								</c:choose>
							</div>
							<div class="clearfix"></div>
						</div>
						<form action="<p:fullurl value='/cg0901/cg090103/buy'/>">
							<input name="goodsId" type="hidden" value="${item.id}" />
							<div class="scfm-button-goumai-green clickTone1"
								onclick="var self = this;$(document.forms[0]).children('input').each(function() {self.parentNode.appendChild(this.cloneNode())});self.parentNode.submit();">
								<img class="clickTone1"
									src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>' />
							</div>
							<div class="input-text-and-image02">
								<c:choose>
									<c:when test="${item.allowRepeatBuy}">
										<select class="sell_count sell_count02" name="buyCount" id="count_${item.id}">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="5">5</option>
											<option value="10">10</option>
											<option value="20">20</option>
											<option value="30">30</option>
											<option value="40">40</option>
											<option value="50">50</option>
										</select>
									</c:when>
								</c:choose>
							</div>
						</form>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</c:forEach>
	</tags:pagination>
</c:if>
