<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0801/CG080102.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	$(document).ready(function() {	
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
			$animation.cardGetAnimationNew(".animationHolder");
		}, false);
	});
</script>
<div class="animationHolder cardGENERAL">
	<div class="contentLightRayOper">
		<div class="light" id="layer_02">
			<img src="<p:localurl value="/resources/images/animation/light_02.png"/>" />
		</div>
		<div class="light" id="layer_03">
			<img src="<p:localurl value="/resources/images/animation/light_02.png"/>" />
		</div>
	</div>
	<div class="contentGet">
		<c:forEach items="${playerCardVoLst }" var="playerCardVo">
			<div class="surprise">
				<img class="hiddenPart" src="<p:cardImg type="ls" id="${playerCardVo.cardId}"></p:cardImg>" /> 
				<img class="card" src="<p:localurl value="/resources/images/animation/cardGetBackground.jpg"/>" />
			</div>
		</c:forEach>
	</div>
	<div class = "contentMask"></div>
	<div class = "clickContinue"><span><spring:message code="label.cg0801.clickContinue" /></span></div>
</div>
<div class="content finalRes">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg180105.title"></spring:message></span>
	</div>
		<div>
		<!-- 新手招募包  -->
			<div class="card-package-padding">
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
						<div class="show-publicize-img">
							<img src='<p:localurl value='/resources/images/cardticket/${cardPackage.id}.png'/>'>
						</div>
						<div class="newcard-info">
							<div>
								<div class="fc-normal-05-m system-content-bold">
									<span><spring:message code="label.cg0801.require.gcoincount"></spring:message></span> 
									<span class="fc-content-03">
										<c:out value="${cardPackage.requireGcoinCount}"></c:out>
									</span> 
								</div>
							</div>
							<div>
								<div class="fc-normal-05-m system-content-bold">
									<span><spring:message code="label.cg0801.own.gcoincount"></spring:message></span>
									<span class="fc-content-03">
										<c:out value="${player.goldCoin}"></c:out>
									</span>
								</div>
							</div>
							<div>
								<div class="fc-normal-05-m system-content-bold">
									<span class='fc-normal-06-m'><spring:message code='label.cg0801.newcardpackage'></spring:message></span>
								</div>
							</div>
							<div class='buttons'>
								<div class="othertype">
									<div>
										<!-- 购买  -->
										<img src="<p:localurl value="/resources/images/buttons/goumaikaquan-blue.png"/>" onclick="location.href='<p:fullurl value="/cg0901/cg090104/index"/>';event.preventDefault();" class='clickTone1'>
									</div>
									<div>
										<!-- 抽取卡包  -->
										<img class="tips_popup clickTone1" message ="<spring:message code="label.cg0801.cardpackageonlyone"></spring:message>" src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
									</div>
									<div>
										<!-- 查看卡包  -->
											<img src="<p:localurl value="/resources/images/buttons/chakanyongbing-blue.png"/>" onclick="location.href='<p:fullurl value="${actionCheck}"/>';event.preventDefault();" class='clickTone1'>
									</div>
								</div>
							</div>
					
						</div>
					</div>
				</div>
			
			</div>
		</div>
		<div class="row-distance"></div>
		<div>
			<c:if test="${not empty playerCardVoLst}">
				<c:forEach items="${playerCardVoLst }" var="playerCardVo">
					<div class="split-01"></div>
					<div class="location-middle-card">
						<div>
							<img class="image-show"
								src="<p:cardImg type="middle" id="${playerCardVo.cardId}"></p:cardImg>" />
						</div>
						<div>
							<div class='card-info-button'>
								<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/kapaixiangqing-green-z.png"/>"onclick="location.href='<p:fullurl value="/cg0801/cg080112/index/${playerCardVo.id}"/>';event.preventDefault();">
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${empty playerCardVoLst}">
			</c:if>
		</div>
</div>