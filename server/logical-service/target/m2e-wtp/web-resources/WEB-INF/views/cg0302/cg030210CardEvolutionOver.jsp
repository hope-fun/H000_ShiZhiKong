<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<script src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script type="text/javascript">
	$(document).ready(function() {		
		$animation.cardEvolutionAnimation(".contentEvolution")
	});
</script>
<div class="contentEvolution">
	<div class="contentMask"></div>
	<div class="LightRay">
		<div class="layer_01">
			<img
				src="<p:localurl value="/resources/images/animation/lightLayer_01.png"/>" />
		</div>
		<div class="layer_02">
			<img
				src="<p:localurl value="/resources/images/animation/lightLayer_02.png"/>" />
		</div>
		<div class="layer_03">
			<img
				src="<p:localurl value="/resources/images/animation/lightLayer_03.png"/>" />
		</div>
	</div>
	<img class="main" src="<p:cardImg type="middle" id="${beforePlayerCard.cardId}"></p:cardImg>" />
	<img class="mat" src="<p:cardImg type="middle" id="${matCardId}"></p:cardImg>" />
</div>
<div class="content finalRes cg030210CardEvolutionOver">
	<div class="menu-medium title-label-03">
		<span><spring:message
				code="label.cg030210.cardevolutionover.over"></spring:message></span>
	</div>
	<div class="panel-npc">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height npc-evolution"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="npc-message">
					<div class="npc-img">
						<img alt="" src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class='npc-info fc-normal-05-m'>
						<div class="div1">
							<span class="fc-normal-01-l"><spring:message code="label.cg030210.cardevolutionover.step"></spring:message>:</span>
							<span class="fc-normal-03-m"><c:out value="${beforePlayerCard.step}" />&rarr;
							<c:out value="${playerCard.step}" /></span>
							<c:if test="${beforePlayerCard.step < playerCard.step }">
							   <img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
							</c:if>
						</div>
						<div class="div2">
							<span class="fc-normal-02-l"> <spring:message
									code="label.cg030204.attack"></spring:message>：
							</span>
							<span class="fc-normal-03-m"><c:out value="${beforePlayerCard.attack}" />&rarr;
							<c:out value="${playerCard.attack}" /></span>
							
							<c:if test="${beforePlayerCard.attack < playerCard.attack }">
							   <img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
							</c:if>
						</div>
						<div class="div3">
							<span class="fc-link"> <spring:message
									code="label.cg030204.defence"></spring:message>：
							</span>
							<span class="fc-normal-03-m"><c:out value="${beforePlayerCard.defence}" />&rarr;
							<c:out value="${playerCard.defence}" /></span>
							<c:if test="${beforePlayerCard.defence < playerCard.defence }">
							   <img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
							</c:if>
						</div>
						<div class="div3">
							<span class="fc-normal-08-m">								
								<spring:message code="label.cg030210.cardevolution.cardrank"></spring:message>
							</span>
							<span class="fc-normal-03-m"><c:out value="${beforeRank}" />&rarr;
								<c:out value="${rank}" />																
								</span>
								<c:if test="${rank < beforeRank }">
									<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>								
								</c:if>
						
						</div>
						<div class="div3">
							<span class="fc-normal-08-m">								
								<spring:message code="label.cg030210.cardevolution.allcardrank"></spring:message>
							</span>
							<span class="fc-normal-03-m"><c:out value="${beforeTotalRank}" />&rarr;
								<c:out value="${totalRank}" />	
								</span>
								<c:if test="${totalRank < beforeTotalRank }">
									<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
								</c:if>
						</div>
					</div>
					<div></div>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${not empty playerCard }">
		<cards:detail item="${playerCard }"></cards:detail>
		<div class="clearfix goBackButtonPanel clickTone1" onclick="location.href = '<p:fullurl value='/cg0302/cg030207/index'/>?evolutionCardId=${playerCard.id}';">
		<img src="<p:localurl value='/resources/images/buttons/jixuzhuansheng-green-z.png'/>" />
	</div>
	</c:if>
</div>
