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
	type="com.artistmobile.kpyx.server.data.service.vo.SearchConsumablesVO"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>

<c:if test="${empty items }">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }">
<div ><span id="endleftTime"
			                class="fc-normal-06-l endlefttime"></span></div>
	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData }"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items}" var="item">
			<div class="paddign-style15">
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB03-height panelB03-height-new"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
						<div class="item-name-style">
						<c:if test="${item.consumableType eq 'UBOX' }">
						
						</c:if>
							<div style="margin: 0 auto;text-align:center;">
								<div class="propsName propsName02">
									${item.name}
								</div>
								<div class="split-item-down-060102">
									<img class="split-down-width"
										src="<p:localurl value="/resources/images/line-split-down.png"/>" />
								</div>


								<div class="equipment-com-style">
									<div class="equip-info-style02">
										<div class="propsImageStyle02">
											<c:if test="${item.consumableType eq 'GIFT_PACKAGE' }">
												<img src='<p:localurl value="/resources/images/giftpackage/large/${item.consumableId }.png"/>' />
											</c:if>
											<c:if test="${item.consumableType ne 'GIFT_PACKAGE' }">
												<img src="<p:consumImg type="large" id="${item.consumableId }"></p:consumImg>" />
											</c:if>
										</div>
										<div class="icon-price-style icon-crystal icon icon-location">
											<span class="saleprice-style">${item.salePrice}</span>
										</div>
									</div>
								</div>


								<div class="cg060102-info">
									<div >
										<span class="fc-normal-05-l"><spring:message
												code="lable.cg0601.chiyoushuliang" />:</span> <span
											class="fc-content-03">${item.count}</span>
									</div>
									<div class="function-height">
										<span class="fc-title-02"><spring:message
												code="lable.cg0601.gongneng" />:</span> <span
											class="fc-normal-03-m">${item.description }</span>
									</div>
								</div>
								<div class="commonpadding-top-style item-count-style commonpadding-top-style-new">
									<div class="select-pic select-pic02 font-size-style17">
										<select class="sell_count sell_count02">
											<c:forEach var="idx" begin="1" end="${item.count}">
												<option value="${idx}">${idx}</option>
											</c:forEach>
										</select> <img
											src='<p:localurl value="/resources/images/select.png" />'>
									</div>
									<div class="propsName system-title propsName02 line-height-style42 sell-name-style">
										<input type="hidden" class="sell_price"	value="${item.salePrice}"/>
										<input type="checkbox" class="sell_out" id="sell_out_${item.consumableId}" value="${item.consumableId}" checked="false" /> 
										<label for="sell_out" value="${item.consumableId}" class="css-label checkbox-pic-style"></label> 
										<span><spring:message code="lable.cg0601.chushou" /></span>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</tags:pagination>
</c:if>
