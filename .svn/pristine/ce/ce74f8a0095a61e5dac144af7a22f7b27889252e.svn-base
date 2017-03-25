<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>"> 
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">
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
				<div class="panel-gmdj-header">
					<span>${item.name}</span>
				</div>				
			</div>
			<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA10-height"></div>
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
						 
						<div class="show-publicize-img">
								<img src="<p:imgPath folder="shopGoods" type="large" id="${item.id }"></p:imgPath>" />
						</div>

						<div class="mfz-text-description-ticket">
							<div class="mfz-price" >
								<span class="fc-normal-05-m" ><spring:message code="lable.cg0901.jiage"/>：</span>
								<span class="fc-content-03">${item.discountPrice}<spring:message code="lable.cg0901.zuanshi"/></span>
								<span class="fc-normal-05-m ">(<spring:message code="lable.cg0901.xingjishangdianjia"/>:${item.price}<spring:message code="lable.cg0901.zuanshi"/>)</span>
							</div>

							<div>
								<span class="fc-normal-05-m"><spring:message code="lable.cg0901.chiyoushuliang"/>:</span>
								<span class="fc-content-03">${item.holdCount}</span>
							</div>

							<div>
								<span class="fc-normal-05-m">${item.description}</span>
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
</c:if>
