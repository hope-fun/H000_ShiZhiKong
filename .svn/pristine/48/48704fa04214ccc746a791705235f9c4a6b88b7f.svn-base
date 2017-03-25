<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>"> 
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">
<script type="text/javascript" charset="utf-8" 
		src="<p:fullurl value="/resources/js/cg0901/cg090101.js"/>">
</script>
<c:if test="${not empty buyResultMsg}">
	<script type="text/javascript">
		$(document).ready(function() {
			kpyxTips("${buyResultMsg}");
			
			//判断是否购买成功，购买成功后向客户端发送消息   add by ma_li   talking game数据分析
			if("${buyResult}"){
				document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
					//音效   ma_li 2013_11_7  
					JSInterface.clickTone(113);
					var data = "{\"consumableId\":\""+"${goodsName}"+"\",\"number\":"+ "${buyCount}" +",\"cost\":"+ "${totalCost}" +"}";
					JSInterface.buyGoodsFromShop(data);
				}, false);
			}
		});
	</script>
</c:if>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="lable.cg0901.shangdian"/></span>
	</div>
	<div>
		<div class="tab-shop">
			<div class="clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0901/cg090103/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/daoju-blue-b.png" />" />
			</div>
			<div  class="tab-active clickTone1" 
				onclick="window.location.href = '<p:fullurl value="/cg0901/cg090104/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/kaquan-yellow-b.png" />" />
			</div>
			<div class="clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0901/cg090105/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/viphuiyuan-blue-b.png" />" />
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="split-line"></div>
		<div>
			<div>
				<div>
					<tags:pagination items="${cardTickets}" id="searchPlayerList" method="GET" renderAjax="false" searchData="${searchShopGoodsVO }" paginationUrl="/kpyx-logical-service/cg0901/cg090104/index">
						<div class="twobuttondiv">
							<a href="<p:fullurl value="/cg0901/cg090101/index"/>">
							<img alt="" src="<p:localurl value="/resources/images/buttons/goumaizuanshi-green-z.png" />">
							</a>
						</div>
						
						<c:forEach items="${cardTickets}" var="item">
							<div class="panel-header-style">
								<div class="panel-gmdj-header">
									<span>${item.name}</span>
								</div>
							</div>
								
							<div class="borderPanel">
								<div class="panelA-header"></div>
								<div class="panelA-body panelA10-height panelA10-height-add"></div>
								<div class="panelA-footer"></div>
								<div class="border-content-noleft">
									<div>
										<!-- 
										<div class="show-publicize-img">
											<img
												src='<p:localurl value="/resources/images/icons/default.png" />'>
										</div>
											<div class="propsImageStyle">
											</div>
										 -->
										 
										<div class="shop-goods-img">
												<img src="<p:imgPath folder="shopGoods" type="large" id="${item.id }"></p:imgPath>" />
										</div>
				
										<div class="mfz-text-description-ticket">
											<div class="mfz-price" >
												<span class="fc-normal-05-m" ><spring:message code="lable.cg0901.jiage"/>：</span>
												<span class="fc-content-03">${item.discountPrice}<spring:message code="lable.cg0901.zuanshi"/></span>
												<span class="fc-normal-05-m ">(<spring:message code="lable.cg0901.xingjishangdianjia"/>:${item.price}<spring:message code="lable.cg0901.zuanshi"/>)</span>
											</div>
				
											<div>
												<span class="fc-normal-05-m"><spring:message code="lable.cg0901.chiyouzuanshi"/>:</span>
												<span class="fc-content-03">${playerVo.goldCoin}</span>
											</div>
				
											<div>
												<c:if test="${item.type eq 'HERO' }">
													<div>
														<span class="fc-normal-06-m"><spring:message code="lable.cg090104.heroticket"></spring:message></span>
													</div>
													<div>
														<span class="fc-normal-06-m"><spring:message code="lable.cg090104.heroticket.detail"></spring:message></span>
													</div>
													
												</c:if>
													<c:if test="${item.type eq 'KING' }">
													<div>
														<span class="fc-normal-06-m"><spring:message code="lable.cg090104.kingticket"></spring:message></span>
													</div>
													<div>
														<span class="fc-normal-06-m"><spring:message code="lable.cg090104.kingticket.detail"></spring:message></span>
													</div>
												</c:if>
													<c:if test="${item.type eq 'MYTH' }">
													<div>
														<span class="fc-normal-06-m"><spring:message code="lable.cg090104.mythticket"></spring:message></span>
													</div>
													<div>
														<span class="fc-normal-06-m"><spring:message code="lable.cg090104.mythticket.detail"></spring:message></span>
													</div>
												</c:if>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
									<form action="<p:fullurl value='/cg0901/cg090104/buy'/>">
										<input name="goodsId" type="hidden" value="${item.id}" />
										<input name="count" type="hidden" value="1" />
										<div class="scfm-button-goumai-green clickTone1" onclick="var self = this;$(document.forms[0]).children('input').each(function() {self.parentNode.appendChild(this.cloneNode())});self.parentNode.submit();">
											<img src='<p:localurl value="/resources/images/buttons/goumaikaquan-green.png"/>'/>
									</div>
									</form>
									<div class="clearfix"></div>
								</div>
							</div>	
						</c:forEach>
					</tags:pagination>
				</div>
			</div>
		</div>
	</div>
</div>