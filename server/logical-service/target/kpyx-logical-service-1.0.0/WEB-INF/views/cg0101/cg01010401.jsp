<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg01010401.title"></spring:message></span>
	</div>
 <div>	
	<div class="panel-02">
		<div class='<cssutils:cardCamp campType="${viewData.camp}"></cssutils:cardCamp>'>
			<div class="panel-header">
				<div class="div1">
					<span>${viewData.name}</span>
				</div>
				<div class="div2">
						<c:if test="${ ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${ranking}.png"/>" />
						</c:if>
					</div> 
				<div class="div3">
				<c:if test="${ viewData.vipLevel <0 }">
					<img src="<p:localurl value="/resources/images/viplevel/${viewData.vipLevel}.png"/>" />
				</c:if>	
				</div>
				<div class="clearfix"></div>
			</div>			
			<div class="panel-body">
				<div class="card-major">
					<div class="div1">
						<div class="card-major-image">
							<img src='<p:cardImg type="middle" id="${viewData.playerCardVO.cardId }"></p:cardImg>' />
						</div>
						<div class="card-major-image-equipment">
							<div>
								<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId1 }">
									<img src="<p:equipImg type="middle" id="${viewData.playerCardVO.playerEquipment1.equipmentId }" />" />
								</c:if>
							</div>
							<div>
								<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId2 }">
									<img src="<p:equipImg type="middle" id="${viewData.playerCardVO.playerEquipment2.equipmentId }" />" />
								</c:if>
							</div>
							<div>
								<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId3 }">
									<img src="<p:equipImg type="middle" id="${viewData.playerCardVO.playerEquipment3.equipmentId }" />" />
								</c:if>
							</div>
							<div></div>
						</div>
					</div>
					<div class="div2">
						<div class="card-major-desc">
							<div class="card-major-data commonPading02">
								<div class="iconspecil icon-level">
									<span><spring:message code ="label.cg01010401.level"></spring:message></span> <span>${(empty viewData.playerCardVO.cardLevel)||(viewData.playerCardVO.cardLevel<1)?1:viewData.playerCardVO.cardLevel}</span>
								</div>
								<div class="iconspecil icon-mercenary">
									<span><spring:message code ="label.cg01010401.cardscount"></spring:message></span> <span>${(empty viewData.cardsCount)||(viewData.cardsCount<1)?0:viewData.cardsCount}</span> <span class="fc-normal-05-m">/</span>
									<span class="fc-normal-05-m">${(empty viewData.cardsMax)||(viewData.cardsMax<1)?0:viewData.cardsMax}</span>
								</div>
								<div class="iconspecil icon-fight-result">
									<span><spring:message code ="label.cg01010401.fightresult"></spring:message></span> <span>${viewData.attackWinTimes + viewData.defenceWinTimes}</span> <span class="fc-normal-02-m"><spring:message code ="label.cg01010401.success"></spring:message></span>
									<span>&nbsp;</span> <span>${viewData.attackLoseTimes + viewData.defenceLoseTimes}</span> <span
										class="fc-normal-04-m"><spring:message code="label.cg01010401.faild"></spring:message></span>
								</div>
							</div>
						</div>
						<div class="commonPading01">
							<c:if test="${rivalItem.canAttack!=false}">
								<img src="<p:localurl value="/resources/images/buttons/juedou-green.png"/>" class="clickTone1"  onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${viewData.id }/false"/>?comeFromCG0101=true';event.preventDefault();"/>
							</c:if>
							<c:if test="${rivalItem.canAttack==false}">
								<img src="<p:localurl value="/resources/images/buttons/juedou-green.png"/>" class="button_gray" />
							</c:if>
						</div>
					</div>
					<div></div>
				</div>
			</div>
		</div>
	</div>
 </div>	
	<div>
		<div class="cardequipment">
			<div class="titleLabel01">
				<span><spring:message code ="label.cg01010401.cardequipment"></spring:message></span>
			</div>
		</div>
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA04-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
			<div class="commonPading01 player-equipment">
				<div class="div1">
					<div class="commonPading05">
						<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId1 }">
							<img src="<p:equipImg type="large" id="${viewData.playerCardVO.playerEquipment1.equipmentId }" />" />
						</c:if>
						<c:if test="${ empty viewData.playerCardVO.playerEquipmentId1 }">
						<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
						</c:if>
					</div>
					<div class="div3">
						<span>${viewData.playerCardVO.playerEquipment1.name }</span>
					</div>
				</div>
				<div class="div2">
					<div class="commonPading05">
						<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId2 }">
							<img src="<p:equipImg type="large" id="${viewData.playerCardVO.playerEquipment2.equipmentId }" />" />
						</c:if>
						<c:if test="${ empty viewData.playerCardVO.playerEquipmentId2 }">
						<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
						</c:if>
					</div>
					<div class="div3">
						<span>${viewData.playerCardVO.playerEquipment2.name }</span>
					</div>
				</div>
				<div class="div2">
					<div class="commonPading05">
						<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId3 }">
							<img src="<p:equipImg type="large" id="${viewData.playerCardVO.playerEquipment3.equipmentId }" />" />
						</c:if>
						<c:if test="${ empty viewData.playerCardVO.playerEquipmentId3 }">
						<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
						</c:if>
					</div>
					<div class="player-equip-name">
						<span>${viewData.playerCardVO.playerEquipment3.name }</span>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
				<img src="<p:localurl value="/resources/images/line-split-down.png"/>" id="div3"/>
				<div class="fc-normal-04-m div40" >
				<div class="player-equipment2">
					<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId1 }">
							<spring:message code="label.cg030102.carddetail.${viewData.playerCardVO.playerEquipment1.additionType}add${viewData.playerCardVO.playerEquipment1.calcMode}" arguments="${viewData.playerCardVO.playerEquipment1.additionValue}" />
						</c:if>
						<c:if test="${empty viewData.playerCardVO.playerEquipmentId1}">
							<span>&nbsp;</span>
					</c:if>
				</div>
				<div class="player-equipment2">
					<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId2 }">
							<spring:message code="label.cg030102.carddetail.${viewData.playerCardVO.playerEquipment2.additionType}add${viewData.playerCardVO.playerEquipment2.calcMode}" arguments="${viewData.playerCardVO.playerEquipment2.additionValue}" />
						</c:if>
						<c:if test="${empty viewData.playerCardVO.playerEquipmentId2}">
							<span>&nbsp;</span>
					</c:if>
				</div>
				<div class="player-equipment2">
					<c:if test="${ not empty viewData.playerCardVO.playerEquipmentId3 }">
							<spring:message code="label.cg030102.carddetail.${viewData.playerCardVO.playerEquipment3.additionType}add${viewData.playerCardVO.playerEquipment3.calcMode}" arguments="${viewData.playerCardVO.playerEquipment3.additionValue}" />
						</c:if>
						<c:if test="${empty viewData.playerCardVO.playerEquipmentId3}">
							<span>&nbsp;</span>
					</c:if>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
	</div>
</div>
