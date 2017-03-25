<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2201/CG2201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/kpyx-logical-service/resources/css/CG0901/CG0901.css?v=1">

<p:fullurl value="/cg2201/cg220104/index" var="cardTicketUrl" />
<p:fullurl value="/cg2201/cg220104/getCardTicket" var="getCardTicketUrl" />
<c:if test="${not empty enoughLeftCount && false == enoughLeftCount}">
	<c:set var="noEnoughShow" value="true"/>
</c:if>
<c:if test="${empty enoughLeftCount || true == enoughLeftCount}">
	<c:set var="noEnoughShow" value="false"/>
</c:if>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg220104.charitable.title" /></span>
	</div>

	<tags:npcDialog dialogVal="label.cg220104.charitable.npc" dialogType="msgKey" imageType="2" />

	<div class="cg2201-tabs">
		<div>
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2201/cg220103/index"/>';event.preventDefault();"
				src="<p:localurl value="/resources/images/buttons/paihang-blue-b.png"/>" />
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2201/cg220102/index"/>';event.preventDefault();"
				src="<p:localurl value="/resources/images/buttons/shangdian-blue-b.png"/>" />
			<img
				src="<p:localurl value="/resources/images/buttons/lingqu-yellow-b.png"/>" />
		</div>
		<div class="split-line"></div>
	</div>
	<div class="fc-normal-04-l text-center padding-style"><c:out value="${showGetMsg }" /></div>
	<div>
		<tags:pagination items="${cardTicketList }" id="cardTicketList" method="GET" renderAjax="false" searchData="${searchVO }" paginationUrl="${cardTicketUrl }">
			<c:forEach items="${cardTicketList }" var="item">
				<div class="padding-price">
					<div class="panel-gmdj-header">
						<span>${item.name }</span>
					</div>
				</div>
					
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA18-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div>
							<div class="shop-goods-img">
								<img src="<p:imgPath folder="shopGoods" type="large" id="${item.shopGoodsId }" />" />
							</div>
	
							<div class="mfz-text-description-ticket charitable-name">
								<div class="padding-price" >
									<span class="fc-normal-05-l" ><spring:message code="label.cg220104.charitable.charitablePlayerName" /> </span>
									<span class="fc-content-02">${item.charitablePlayerName }</span>
								</div>
	
								<div class="padding-price">
									<span class="fc-normal-05-l"><spring:message code="label.cg220104.charitable.count"/> </span>
									<span class="fc-content-02">${item.count }</span>
								</div>
	
								<div class="padding-price">
									<span class="fc-normal-05-l"><spring:message code="label.cg220104.charitable.diamondNumber"/> </span>
									<span class="fc-content-02">${item.diamondNumber }</span>
									<img class="diamondpic-style" src="<p:localurl value="/resources/images/diamond.png"/>" />
								</div>
								
								<div class="padding-price charitable-lineheight">
									<div class="charitable-leftcount">
										<span class="fc-normal-05-l"><spring:message code="label.cg220104.charitable.leftCount"/></span>
										<span class="fc-content-02">${item.leftCount }</span>
									</div>
									<div class="goumai-button-green">
										<img class="clickTone1 pointer_class" src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>'
											onClick="doGetCardTicket('${item.id }')" />
									</div>
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

<script type="text/javascript">
<!--

var isCanGet = ${isCanGetCardTicket };
var leftTime = ${leftTime };
// 剩余数量不足
if(${noEnoughShow }){
	kpyxTips("<spring:message code='label.cg220104.charitable.noleftTime.info' />");
}

function doGetCardTicket(charitableCardTicketId){
	// 不满足领取条件
	if(!isCanGet) {
		kpyxTips("<spring:message code='label.cg220104.charitable.noCanGet.info' />");
		return;
	}
	// 剩余领取次数不足
	if(1 > leftTime) {
		kpyxTips("<spring:message code='label.cg220104.charitable.noleftTime.info' />");
		return;
	}
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post("<p:fullurl value='/cg2201/cg220104/checkCanGetCardTicket/'/>" + charitableCardTicketId,randomParms,function (message){
		if(null != message && false == message.result){
				kpyxTips(message.data);
				return;
			}
		else{
			kpyxTips("<spring:message code='label.cg01010301.draw.success' />",function(){window.location.href="${getCardTicketUrl }" +"/" + charitableCardTicketId });
		}
	},("json"));
	
	
		
	// /{charitablePlayerId}/{charitableCardTicketId}/{diamondNumber}
}

//-->
</script>