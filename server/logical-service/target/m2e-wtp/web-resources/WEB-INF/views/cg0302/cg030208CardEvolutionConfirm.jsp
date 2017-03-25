<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg030208.cardevolutionconfirm.title"></spring:message></span>
	</div>
	<div style="text-align:center;">
		<span class="fc-normal-08-m" style="color:red;">			
			<spring:message code="label.cg030208.labeltips"></spring:message>
		</span>
	</div>
	<div class="panels">
		<div class="panel-03">
			<div class="<cssutils:cardCamp campType="${evolutionCard.cardCamp}"></cssutils:cardCamp>">
				<div class="panel-header">
					<div class="card-item-name">
						<span><c:out value="${(empty evolutionCard.name) ? evolutionCard.id : evolutionCard.name }"></c:out></span>
					</div>
					<div class="card-item-stars">
						<c:if test="${evolutionCard.star>=1 }">
							<c:forEach var="i" begin="1" end="${evolutionCard.star}" step="1">
								<img src='<p:localurl value="/resources/images/star-d.png"/>'></img>
							</c:forEach>
						</c:if>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="panel-body">
					<div class="card-assistant">
						<div class="left">
							<div class="card-assistant-image">
								<a href='#'>
									<img class="clickTone1" src='<p:cardImg type="small" id="${evolutionCard.cardId }"></p:cardImg>' onclick="location.href='<p:fullurl value="/cg0301/cg030102/index/${evolutionCard.id }"/>'"/>
								</a>
							</div>
						</div>
						<div class="middle">
							<div class="card-assistant-equipment">
								<div class="card-equipment ">
									<div class="one-equipment">
										<c:if test="${ not empty evolutionCard.playerEquipmentId1 }">
											<img alt="" src="<p:equipImg type="small" id="${evolutionCard.playerEquipment1.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty evolutionCard.playerEquipmentId1 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="one-equipment">
										<c:if test="${ not empty evolutionCard.playerEquipmentId2 }">
											<img alt="" src="<p:equipImg type="small" id="${evolutionCard.playerEquipment2.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty evolutionCard.playerEquipmentId2 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="one-equipment">
										<c:if test="${ not empty evolutionCard.playerEquipmentId3 }">
											<img alt="" src="<p:equipImg type="small" id="${evolutionCard.playerEquipment3.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty evolutionCard.playerEquipmentId3 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<div class="right">
							<div class="card-assistant-desc">
								<div class="top-right-panel">
									<div class="level">
										<div class="archives-item icon icon-level icon-location">
											<span><c:out value="
												${(empty(evolutionCard.cardLevel) || evolutionCard.cardLevel<1) ? 1 : evolutionCard.cardLevel }"></c:out></span>
										</div>
									</div>
									<div class="align-center">
										<c:if test="${evolutionCard.growingPercent >= 0 }">
											<div class="processing-bar-blue fc-normal-01-m"
												processbar="<c:out value="${evolutionCard.growingPercent<=100 ? evolutionCard.growingPercent : 100}" />"></div>
										</c:if>
										<c:if test="${evolutionCard.growingPercent < 0 }">
											<div class="processing-bar-blue fc-normal-01-m" processbar="0"></div>
										</c:if>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="middle-right-panel">
									<div>
										<div
											class="archives-item icon icon-physicalstrength icon-location ">
											<span><c:out value="
												${(empty(evolutionCard.strengthRequireAdded) || evolutionCard.strengthRequireAdded<0) ? 0 : evolutionCard.strengthRequireAdded }"></c:out></span>
										</div>
									</div>
									<div>
										<div
											class="archives-item icon icon-total-fighting-energy icon-location ">
											<span><c:out value="
												${(empty(evolutionCard.attackAdded) || evolutionCard.attackAdded<0) ? 0 : evolutionCard.attackAdded }"></c:out></span>
										</div>
									</div>
									<div>
										<div
											class="archives-item icon icon-total-shield-energy icon-location ">
											<span><c:out value="
												${(empty(evolutionCard.defenceAdded) || evolutionCard.defenceAdded<0) ? 0 : evolutionCard.defenceAdded}"></c:out></span>
										</div>
									</div>
									<div></div>
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
		<div class="add">
			<div></div>
		</div>
	</div>
	<div>
		<div class="panel-03">
			<div class="<cssutils:cardCamp campType="${materialCard.cardCamp}"></cssutils:cardCamp>">
				<div class="panel-header">
					<div class="card-item-name">
						<span><c:out value="${(empty materialCard.name) ? materialCard.id : materialCard.name }"></c:out></span>
					</div>
					<div class="card-item-stars">
						<c:if test="${materialCard.star>=1 }">
							<c:forEach var="i" begin="1" end="${materialCard.star}" step="1">
								<img src='<p:localurl value="/resources/images/star-d.png"/>'></img>
							</c:forEach>
						</c:if>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="panel-body">
					<div class="card-assistant">
						<div class="left">
							<div class="card-assistant-image">
								<a href='#'>
									<img class="clickTone1" alt="" src='<p:cardImg type="small" id="${materialCard.cardId }"></p:cardImg>' onclick="location.href='<p:fullurl value="/cg0301/cg030102/index/${materialCard.id }"/>'"/>
								</a>
							</div>
						</div>
						<div class="middle">
							<div class="card-assistant-equipment">
								<div class="card-equipment ">
									<div class="one-equipment">
										<c:if test="${ not empty cardItem.playerEquipmentId1 }">
											<img alt="" src="<p:equipImg type="small" id="${cardItem.playerEquipment1.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty cardItem.playerEquipmentId1 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="one-equipment">
										<c:if test="${ not empty cardItem.playerEquipmentId2 }">
											<img alt="" src="<p:equipImg type="small" id="${cardItem.playerEquipment2.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty cardItem.playerEquipmentId2 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="one-equipment">
										<c:if test="${ not empty cardItem.playerEquipmentId3 }">
											<img alt="" src="<p:equipImg type="small" id="${cardItem.playerEquipment3.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty cardItem.playerEquipmentId3 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<div class="right">
							<div class="card-assistant-desc">
								<div class="top-right-panel">
									<div class="level">
										<div class="archives-item icon icon-level icon-location">
											<span><c:out value="${(empty(materialCard.cardLevel) || materialCard.cardLevel<1) ? 1 : materialCard.cardLevel }"></c:out></span>
										</div>
									</div>
									<div class="align-center">
										<c:if test="${materialCard.growingPercent >= 0 }">
											<div class="processing-bar-blue fc-normal-01-m"
												processbar="<c:out value="${materialCard.growingPercent<=100 ? materialCard.growingPercent : 100}" />"></div>
										</c:if>
										<c:if test="${materialCard.growingPercent < 0 }">
											<div class="processing-bar-blue fc-normal-01-m" processbar="0"></div>
										</c:if>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="middle-right-panel">
									<div>
										<div
											class="archives-item icon icon-physicalstrength icon-location ">
											<span><c:out value="${(empty(materialCard.strengthRequireAdded) || materialCard.strengthRequireAdded<0) ? 0 : materialCard.strengthRequireAdded }"></c:out></span>
										</div>
									</div>
									<div>
										<div
											class="archives-item icon icon-total-fighting-energy icon-location ">
											<span><c:out value="${(empty(materialCard.attackAdded) || materialCard.attackAdded<0) ? 0 : materialCard.attackAdded }"></c:out></span>
										</div>
									</div>
									<div>
										<div
											class="archives-item icon icon-total-shield-energy icon-location ">
											<span><c:out value="${(empty(materialCard.defenceAdded) || materialCard.defenceAdded<0) ? 0 : materialCard.defenceAdded }"></c:out></span>
										</div>
									</div>
									<div></div>
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<div class="fc-title-01 centerFont">
			<div>
				<span><spring:message code="label.cg030208.cardevolutionconfirm.crystalneed"></spring:message></span>
				<span class="fc-content-02 centerFont">
					<c:out value="${crystalNeed }"></c:out>
				</span>
			</div>
			<div>
				<span><spring:message code="label.cg030208.cardevolutionrate"></spring:message></span>
				<c:if test="${(evolutionCard.cardLevel ne evolutionCard.levelMax) && (materialCard.cardLevel ne materialCard.levelMax) }">
					<c:set var="rank" value="1"></c:set>
				</c:if>
				<c:if test="${((evolutionCard.cardLevel eq evolutionCard.levelMax) && (materialCard.cardLevel ne materialCard.levelMax))
								|| ((evolutionCard.cardLevel ne evolutionCard.levelMax) && (materialCard.cardLevel eq materialCard.levelMax)) }">
					<c:set var="rank" value="2"></c:set>
				</c:if>
				<c:if test="${(evolutionCard.cardLevel eq evolutionCard.levelMax) && (materialCard.cardLevel eq materialCard.levelMax) }">
					<c:set var="rank" value="3"></c:set>
				</c:if>
				<c:forEach var="i" begin="1" end="${rank}" step="1">
					<img src='<p:localurl value="/resources/images/yupingjixingxing.png"/>' style="vertical-align: middle;"></img>
				</c:forEach>
			</div>
			<div>
				<span><spring:message code="label.cg030208.cardevolutionreward"></spring:message></span>
				<span class="fc-content-02 centerFont">
					<c:if test="${rank eq 1 }">200</c:if>
					<c:if test="${rank eq 2 }">500</c:if>
					<c:if test="${rank eq 3 }">1000</c:if>
					<spring:message code="label.cg030208.cardevolution.friendpoint"></spring:message>
				</span>
			</div>
		</div>
		
	<div class="button">
		<form action='<p:fullurl value="/cg0302/cg030210/index"/>' method="post">
			<c:choose>
				<c:when test="${moneyEnough && (evolutionCard.step<4)}">
					<a class="a" href="#" onclick="this.parentNode.submit()" style="display:inline-block;"> 
						<input type="hidden" name="evolutionCardId" value="${evolutionCard.id }">
						<input type="hidden" name="materialCardId" value="${materialCard.id }"> 
						<input type="hidden" name="playerId" value="${evolutionCard.playerId }"> 
						<input type="hidden" name="silverCoin" value="${crystalNeed }"> 
						<input type="hidden" name="matCardId" value="${materialCard.cardId }"/>
						<input type="hidden" name="rank" value="${rank }"/>
						<img class="clickTone1" src="<p:localurl value='/resources/images/buttons/zhuansheng-green-z.png'/>" />
					</a>
				</c:when>
				<c:otherwise>
					<div class="less-silver">
						<c:if test="${not moneyEnough }">
							<span><spring:message code="label.cg030208.cardevolutionconfirm.lesssilver"></spring:message></span>
						</c:if>
						<c:if test="${evolutionCard.step>=4 }">
							<span><spring:message code="label.cg030208.cardevolutionconfirm.overstep"></spring:message></span>
						</c:if>
					</div>
					<img src="<p:localurl value='/resources/images/buttons/zhuansheng-green-z.png'/>" />
				</c:otherwise>
			</c:choose>
		</form>
	</div>
	<div class="button">
		<form action='<p:fullurl value="/cg0302/cg030207/index"/>' method="post">
			<a href="#" onclick="this.parentNode.submit()" style="display:inline-block;"> 
				<input type="hidden" name="evolutionCardId" value="${evolutionCard.id }"> 
				<img class="clickTone1" src="<p:localurl value='/resources/images/buttons/gengbiansucaika-blue-x.png'/>" />
			</a>
		</form>
	</div>  
	<div class="panel-npc">
		<div class="borderPanel">
		<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="npc-message">
					<div>
						<img alt="" src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class='npc-info fc-normal-05-m'>
						<spring:message code="label.cg030208.cardevolutionconfirm.npc" />
					</div>
					<div></div>
				</div>
				</div>
			</div>
	</div>
</div>