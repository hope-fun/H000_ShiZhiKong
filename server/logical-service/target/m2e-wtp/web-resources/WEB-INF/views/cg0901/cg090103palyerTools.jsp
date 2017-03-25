<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>">

<script type="text/javascript"
	src="<p:localurl value="/resources/js/cg0901/cg090101.js"/>"></script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="lable.cg0901.shangdian" /></span>
	</div>

	<div class="tab-shop">

		<div class="tab-active clickTone1" 
			onclick="window.location.href = '<p:fullurl value="/cg0901/cg090103/index" />'">
			<img
				src="<p:localurl value="/resources/images/buttons/daoju-yellow-b.png" />" />
		</div>
		<%-- <div class="clickTone1"
			onclick="window.location.href = '<p:fullurl value="/cg0901/cg090104/index" />'">
			<img
				src="<p:localurl value="/resources/images/buttons/kaquan-blue-b.png" />" />
		</div> --%>
		<!--  <div class="clickTone1"
			onclick="window.location.href = '<p:fullurl value="/cg0901/cg090105/index" />'">
			<img
				src="<p:localurl value="/resources/images/buttons/viphuiyuan-blue-b.png" />" />
		</div>
		-->
		<div class="clearfix"></div>

	</div>

	<div>
		<div class="split-line"></div>
		<div>
			<div>
				<cards:0901_shopToolsList searchData="${searchShopGoodsVO }"
					searchUrl="/kpyx-logical-service/cg0901/cg090103/index"
					items="${consumables}"></cards:0901_shopToolsList>
			</div>
		</div>
	</div>

</div>
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
