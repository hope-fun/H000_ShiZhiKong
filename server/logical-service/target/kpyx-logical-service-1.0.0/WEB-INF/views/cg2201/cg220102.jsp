<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2201/CG2201.css"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">

<p:fullurl value="/cg2201/cg220102/index" var="shopGoodUrl" />
<script type="text/javascript">
$(document).ready(function() {
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		//音效  ma_li  120   2013_11_7
		JSInterface.clickTone(120);
		//判断是否购买成功，购买成功后向客户端发送消息   add by ma_li   talking game数据分析
		if("${buyResult}"){
			var data = "{\"consumableId\":\""+"${goodsName}"+"\",\"number\":"+ "${buyCount}" +",\"cost\":"+ "${totalCost}" +"}";
			JSInterface.buyGoodsFromShop(data);
		}
	}, false);
	
});

</script>
<c:if test="${not empty buyResultMsg}">
	<script type="text/javascript">
		$(document).ready(function() {
			kpyxTips("${buyResultMsg }");			
		});
	</script>
</c:if>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg220102.charitable.title" /></span>
	</div>

	<utils:npcDialog dialogVal="label.cg220102.charitable.npc" dialogType="msgKey" imageType="2" />

	<div class="cg2201-tabs">
		<div>
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2201/cg220103/index"/>';event.preventDefault();"
				src="<p:localurl value="/resources/images/buttons/paihang-blue-b.png"/>" />
			<img class="clickTone1"
				src="<p:localurl value="/resources/images/buttons/shangdian-yellow-b.png"/>" />
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2201/cg220104/index"/>';event.preventDefault();"
				src="<p:localurl value="/resources/images/buttons/lingqu-blue-b.png"/>" />
		</div>
		<div class="split-line"></div>
	</div>

	<div>
		<tags:pagination items="${cardTickets }" id="cardTicketList" method="GET" renderAjax="false" searchData="${searchShopGoodsVO }" paginationUrl="${shopGoodUrl }">
			<c:forEach items="${cardTickets}" var="item">
				<div class="padding-price">
					<div class="panel-gmdj-header">
						<span>${item.name}</span>
					</div>
				</div>
					
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA18-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div>
							<div class="shop-goods-img">
									<img src="<p:imgPath folder="shopGoods" type="large" id="${item.id }"></p:imgPath>" />
							</div>
	
							<div class="mfz-text-description-ticket">
								<div class="padding-price" >
									<span class="fc-normal-05-l" ><spring:message code="label.cg220102.charitable.price" />:  </span>
									<span class="fc-content-02">${item.discountPrice}<spring:message code="lable.cg0901.zuanshi"/></span>
								</div>
	
								<div class="padding-price">
									<span class="fc-normal-05-l"><spring:message code="label.cg220102.charitable.goldcoin"/>:  </span>
									<span class="fc-content-02">${playerVo.goldCoin}</span>
								</div>
	
								<div class="padding-price">
									<span class="fc-normal-05-l"><spring:message code="label.cg220102.charitable.function"/>:  </span>
									<span class="fc-content-02">${item.description}</span>
								</div>
								
								<div class="padding-price charitable-lineheight">
									<div class="charitable-num-style">
										<span class="fc-normal-05-l"><spring:message code="label.cg220102.charitable.number"/>:  </span>
									</div>
									<form action="<p:fullurl value='/cg2201/cg220102/buy'/>">
										<div class="select-text-and-image">
											<select class="select_count" name="count" id="count_${item.id}">
												<c:forEach var="t" begin="1" end="10">
													<option value="${t}">${t}</option>
												</c:forEach>
											</select>
										</div>
										<input name="goodId" type="hidden" value="${item.id}" />
										<div class="goumai-button-green clickTone1"
											onclick="var self = this;$(document.forms[0]).children('input').each(function() {self.parentNode.appendChild(this.cloneNode())});self.parentNode.submit();">
											<img class="clickTone1 pointer_class"
													src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>' />
										</div>
									</form>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>	
			</c:forEach>
		</tags:pagination>
	</div>

</div>


