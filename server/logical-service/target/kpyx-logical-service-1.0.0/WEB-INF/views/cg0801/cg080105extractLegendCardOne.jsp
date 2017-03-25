<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080102.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<c:if test="${cardPackage.type.name() ne 'NEW'}">
	<script>
	$(document).ready(function() {	
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
			$animation.cardGetAnimationOne(".animationHolder");
		}, false);
	});
	
	function jumpToItensify(){
		window.location.href="<p:fullurl value='/cg0302/cg030201/index'/>";
	}
	function jumpToEvo(){
		window.location.href="<p:fullurl value='/cg0302/cg030207/index'/>";
	}
	</script>
</c:if>
<div class="animationHolder card${cardPackage.type}">
	<div class="contentLightRayOper">
		<div class="light" id="layer_02">
			<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
		</div>
		<div class="light" id="layer_03">
			<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
		</div>
	</div>
	<div class="contentGet">
		<div class="surprise">
			<img class="card" src="<p:localurl value="/resources/images/animation/cardGetBackground_big.jpg"/>" />
		</div>
		<img class="hiddenPart" src="<p:cardImg type="big" id="${playerCardVoLst.get(0).cardId}"></p:cardImg>">
	</div>
	<div class = "contentMask"></div>
	<div class = "clickContinue"><span><spring:message code="label.cg0801.clickContinue" /></span></div>
</div>
<div class="content finalRes">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg180105.title" /></span>
	</div>
	<div class="row-distance"></div>
	<c:if test="${ not empty playerCardVoLst }">
		<c:forEach items="${ playerCardVoLst}" var="playerCardVo">
			<div class="location-middle-card">
				<div>
					<img class="image-show" src="<p:cardImg type="middle" id="${playerCardVo.cardId}"></p:cardImg>">
				</div>
				<div class='card-info-button'>
						<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/kapaixiangqing-green-z.png"/>" onclick='location.href="<p:fullurl value="/cg0801/cg080112/index/${playerCardVo.id}" />";event.preventDefault();'>
				</div>
			</div>
		</c:forEach>
	</c:if>
	<div class="row-distance"></div>
	<div class="panel-01">
			<div class="panel-ybkb-header">

				<span class="header-text-move">
					<c:out value="${cardPackage.name}"></c:out>
				</span> 
			</div>
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
			<div class="panel-ybkb-body2">
					<div class="show-publicize-img">
						<img src='<p:localurl value='/resources/images/cardticket/${cardPackage.id}.png'/>'>
					</div>
				<div class="message-style">
				<c:choose> 
				
					<c:when test="${cardPackage.type eq'GENERAL' && isRequireSilverCoin==false}">
						
							<div class="generaltype-message-recruitpoints require-silver-count">
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span><spring:message code="label.cg0801.require"></spring:message></span>
										<span class="fc-content-03"> 
											<span> <c:out value="${cardPackage.requireFriendPoints}"></c:out></span>
										</span>
									</div>
								</div>
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span><spring:message code="label.cg0801.own.friendpoints"></spring:message></span> 
										<span class="fc-content-03"> 
											<c:out value="${player.friendPoints}"></c:out>
										</span>
									</div>
								</div>
							</div>
							<div class="buttons">
							<div class="generaltype card-package-type">
								<div>
									<!-- 抽取卡包  -->
									<c:if test="${cardPackage.overTopCount == false }">
										<c:if test="${cardPackage.isButtonGray == true}">
												<c:if test="${cardPackage.isRequireSilverCoin==true}">
													<img class="tips_popup" message ="<spring:message code="label.cg0801.silvernotenough"></spring:message>" src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
												</c:if>
												<c:if test="${cardPackage.isRequireSilverCoin== false}">
													<img class="tips_popup" message ="<spring:message code="label.cg0801.friendpointnotenough"></spring:message>" src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
												</c:if>
										</c:if>
										<c:if test="${cardPackage.isButtonGray == false}">
												<img  class='clickTone1' src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>" onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/${extractTimes}/${cardPackage.id}/${isRequireSilverCoin}/false"/>';event.preventDefault();">
										</c:if>
									</c:if>
									<c:if test="${cardPackage.overTopCount == true }">
										<img class="tips_popup" 
											 message="<spring:message code='label.cg0801.cardcountsup'/></br>
													 <spring:message code='label.cg0801.cardsurplus'/>
													<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
													<span><spring:message code='label.CG020000.or'></spring:message></span>
													<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
											 src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
									</c:if>
								</div>
	
								<div>
									<!-- 查看卡包  -->
									<img src="<p:localurl value="/resources/images/buttons/chankankabao-blue.png"/>"  class='clickTone1' onclick="location.href='<p:fullurl value="${checkAction}"/>';event.preventDefault();">
								</div>
	
							</div>
						</div>
					</c:when>
					<c:when test="${cardPackage.type=='GENERAL' && isRequireSilverCoin==true}">
						<div class="generaltype-message-slivercoin require-silver-count">
							<div>
								<div class="fc-normal-05-m system-content-bold">
									<span><spring:message code="label.cg0801.require.silvercoin"></spring:message></span>
									<span class="fc-content-03"> 
										<c:out value="${cardPackage.requireScoinCount}"></c:out>
									</span>

								</div>
							</div>
							<div>
								<div class="fc-normal-05-m system-content-bold">
									<span><spring:message code="label.cg0801.own.silvercoin"></spring:message></span>
									<span class="fc-content-03">
										<c:out value="${player.silverCoin}"></c:out>
									</span>
								</div>
							</div>
						</div>
						<div class="buttons">
							<div class="generaltype card-package-type">
								<div>
									<!-- 抽取卡包  -->
									<c:if test="${cardPackage.overTopCount == false }">
										<c:if test="${cardPackage.isButtonGray == true}">
												<c:if test="${cardPackage.isRequireSilverCoin==true}">
													<img class="tips_popup" message ="<spring:message code="label.cg0801.silvernotenough"></spring:message>" src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
												</c:if>
												<c:if test="${cardPackage.isRequireSilverCoin== false}">
													<img class="tips_popup" message ="<spring:message code="label.cg0801.friendpointnotenough"></spring:message>" src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
												</c:if>
										</c:if>
										<c:if test="${cardPackage.isButtonGray == false}">
											<img  class='clickTone1' src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>" onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/${extractTimes}/${cardPackage.id}/${isRequireSilverCoin}/false"/>';event.preventDefault();">
										</c:if>
									</c:if>
									<c:if test="${cardPackage.overTopCount == true }">
												<img class="tips_popup"
													message="<spring:message code='label.cg0801.cardcountsup'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
													src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
											</c:if>
								</div>
	
								<div>
									<!-- 查看卡包  -->
									<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/chankankabao-blue.png"/>" onclick="location.href='<p:fullurl value="${checkAction}"/>';event.preventDefault();">
								</div>
	
							</div>
						</div>
					</c:when>
					<c:otherwise>
							<div class="othertype-message">
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span><spring:message
												code="label.cg0801.require.gcoincount"></spring:message></span>
										<span class="fc-content-03"> <c:out value="${cardPackage.requireGcoinCount}"></c:out></span> 
										<span><spring:message code='lable.cg0801.zuanshi'></spring:message></span>
										<span><spring:message
												code="label.cg0801.or"></spring:message></span>
										<span class="fc-content-03"> <span><c:out
													value="${cardPackage.requireTicketCount}"></c:out></span> <span><spring:message
													code="label.cg0801.unit"></spring:message></span>
										</span>
										<span><spring:message
												code="label.cg0801.require.${cardPackage.type }"></spring:message></span>
									</div>
								</div>
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span><spring:message
												code="label.cg0801.require.own"></spring:message></span>
										<span class="fc-content-03"> <c:out value="${player.goldCoin}"></c:out></span>
										<span><spring:message code='lable.cg0801.zuanshi'></spring:message></span>
										<span>/</span>
										<span class="fc-content-03">
										
											 <c:if test="${not empty playerCardTicket }">
													<span><c:out value="${playerCardTicket.count}"></c:out></span>
											</c:if> 
											<c:if test="${empty playerCardTicket }">
													<span>0</span>
											</c:if> 
											<span><spring:message code="label.cg0801.unit"></spring:message></span>
										</span> 
										<span><spring:message code="label.cg0801.require.${cardPackage.type }"></spring:message></span>
									</div>
								</div>
								
							</div>
							<div class="buttons">
								<div class="othertype">
									<div>
										<!-- 购买  -->
										<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/goumaikaquan-blue.png"/>" onclick="location.href='<p:fullurl value="/cg0901/cg090104/index"/>';event.preventDefault();">
									</div>
									<div>
										<!-- 抽取卡包  -->
										<c:if test="${cardPackage.overTopCount == false }">
											<c:if test="${cardPackage.isButtonGray == true}">
											<img class="tips_popup" message ="<spring:message code="label.cg0801.ticketnotenough.${cardPackage.type }"></spring:message>" src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
											</c:if>
											<c:if test="${cardPackage.isButtonGray == false}">
													<img  class='clickTone1' src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>" onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/${extractTimes}/${cardPackage.id}/${isRequireSilverCoin}/false"/>';event.preventDefault();">
											</c:if>
										</c:if>
										<c:if test="${cardPackage.overTopCount == true }">
										<img class="tips_popup" message="<spring:message code='label.cg0801.cardcountsup'/></br>
																		<spring:message code='label.cg0801.cardsurplus'/>
																		<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																		<span><spring:message code='label.CG020000.or'></spring:message></span>
																		<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
											 src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
									</c:if>
									</div>
									<div>
										<!-- 查看卡包  -->
										<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/chakanyongbing-blue.png"/>" onclick="location.href='<p:fullurl value="${checkAction}"/>';event.preventDefault();">
									</div>
								</div>
							
							</div>
						</c:otherwise>
					</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>