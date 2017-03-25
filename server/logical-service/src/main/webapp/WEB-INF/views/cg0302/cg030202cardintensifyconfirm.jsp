<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0302/cg0302.js"/>"></script>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<input type="hidden" id="cg0302materialcards" value="<spring:message code='label.cg0302.materialcards' />"/>
<input type="hidden" id="cg0302materialcardslimit" value="<spring:message code='label.cg0302.materialcardslimit' />"/>
<div class="content">
	<form>
		<input type="hidden" name="playerCardId"
			value="${playerCardIntensifyViewData.playerCardId}"> <input
			type="hidden" name="camp" value="${playerCardIntensifyViewData.camp}">
		<!-- <input type="hidden" name="intensifyType"
			value="${playerCardIntensifyViewData.intensifyType}">  --><input
			type="hidden" name="sortType"
			value="${playerCardIntensifyViewData.sortType}"> <input
			type="hidden" name="orderBy"
			value="${playerCardIntensifyViewData.orderBy}">
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg030202.title"></spring:message></span>
		</div>
		<div class="panels">
			<div class="panel-03">
				<div
					class="<cssutils:cardCamp campType="${mainPlayerCard.cardCamp}"></cssutils:cardCamp>">
					<div class="panel-header">
						<div class="card-item-name">
							<span><c:out
									value="${(empty mainPlayerCard.name) ? mainPlayerCard.id : mainPlayerCard.name }"></c:out></span>
						</div>
						<div class="card-item-stars">
							<c:if test="${mainPlayerCard.star>=1 }">
								<c:forEach var="i" begin="1" end="${mainPlayerCard.star}"
									step="1">
									<img
										src='<p:localurl value="/resources/images/star-d.png"/>'></img>
								</c:forEach>
							</c:if>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-body">
						<div class="card-assistant">
							<div class="left">
								<div class="card-assistant-image">
									<a
										href='<p:fullurl value="/cg0301/cg030102/index/${mainPlayerCard.id }"/>'>
										<img alt=""
										src='<p:cardImg type="small" id="${mainPlayerCard.cardId }"></p:cardImg>' />
									</a>
								</div>
							</div>
							<div class="middle">
								<div class="card-assistant-equipment">
									<div class="card-equipment ">
										<div class="one-equipment">
											<c:if test="${ not empty mainPlayerCard.playerEquipmentId1 }">
												<img alt=""
													src="<p:equipImg type="small" id="${mainPlayerCard.playerEquipment1.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty mainPlayerCard.playerEquipmentId1 }">
												<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
											</c:if>
										</div>
										<div class="one-equipment">
											<c:if test="${ not empty mainPlayerCard.playerEquipmentId2 }">
												<img alt=""
													src="<p:equipImg type="small" id="${mainPlayerCard.playerEquipment2.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty mainPlayerCard.playerEquipmentId2 }">
												<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
											</c:if>
										</div>
										<div class="one-equipment">
											<c:if test="${ not empty mainPlayerCard.playerEquipmentId3 }">
												<img alt=""
													src="<p:equipImg type="small" id="${mainPlayerCard.playerEquipment3.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty mainPlayerCard.playerEquipmentId3 }">
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
												<span><c:out
														value="
												${(empty(mainPlayerCard.cardLevel) || mainPlayerCard.cardLevel<1) ? 1 : mainPlayerCard.cardLevel }"></c:out></span>
											</div>
										</div>
										<div class="align-center">
											<c:if test="${mainPlayerCard.growingPercent >= 0 }">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="<c:out value="${mainPlayerCard.growingPercent<=100 ? mainPlayerCard.growingPercent : 100}" />"></div>
											</c:if>
											<c:if test="${mainPlayerCard.growingPercent < 0 }">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="0"></div>
											</c:if>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="middle-right-panel">
										<div>
											<div
												class="archives-item icon icon-physicalstrength icon-location ">
												<span><c:out
														value="
												${(empty(mainPlayerCard.strengthRequireAdded) || mainPlayerCard.strengthRequireAdded<0) ? 0 : mainPlayerCard.strengthRequireAdded }"></c:out></span>
											</div>
										</div>
										<div>
											<div
												class="archives-item icon icon-total-fighting-energy icon-location ">
												<span><c:out
														value="
												${(empty(mainPlayerCard.attackAdded) || mainPlayerCard.attackAdded<0) ? 0 : mainPlayerCard.attackAdded }"></c:out></span>
											</div>
										</div>
										<div>
											<div
												class="archives-item icon icon-total-shield-energy icon-location ">
												<span><c:out
														value="
												${(empty(mainPlayerCard.defenceAdded) || mainPlayerCard.defenceAdded<0) ? 0 : mainPlayerCard.defenceAdded}"></c:out></span>
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
		<c:forEach items="${playerCards}" var="cardItem">
			<div>
				<div class="panel-03">
					<div
						class="<cssutils:cardCamp campType="${cardItem.cardCamp}"></cssutils:cardCamp>">
						<input type="hidden" name="playerCardIds" value="${cardItem.id}">
						<div class="panel-header">
							<div class="card-item-name">
								<span><c:out
										value="${(empty cardItem.name) ? cardItem.id : cardItem.name }"></c:out></span>
							</div>
							<div class="card-item-stars">
								<c:if test="${cardItem.star>=1 }">
									<c:forEach var="i" begin="1" end="${cardItem.star}" step="1">
										<img
											src='<p:localurl value="/resources/images/star-d.png"/>'></img>
									</c:forEach>
								</c:if>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-assistant">
								<div class="left">
									<div class="card-assistant-image">
										<a
											href='<p:fullurl value="/cg0301/cg030102/index/${cardItem.id }"/>'>
											<img src='<p:cardImg type="small" id="${cardItem.cardId }"></p:cardImg>' />
										</a>
									</div>
								</div>
								<div class="middle">
									<div class="card-assistant-equipment">
										<div class="card-equipment ">
											<div class="one-equipment">
												<c:if test="${ not empty cardItem.playerEquipmentId1 }">
													<img src="<p:equipImg type="small" id="${cardItem.playerEquipment1.equipmentId }" />" />
												</c:if>
												<c:if test="${ empty cardItem.playerEquipmentId1 }">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="one-equipment">
												<c:if test="${ not empty cardItem.playerEquipmentId2 }">
													<img src="<p:equipImg type="small" id="${cardItem.playerEquipment2.equipmentId }" />" />
												</c:if>
												<c:if test="${ empty cardItem.playerEquipmentId2 }">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="one-equipment">
												<c:if test="${ not empty cardItem.playerEquipmentId3 }">
													<img src="<p:equipImg type="small" id="${cardItem.playerEquipment3.equipmentId }" />" />
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
													<span><c:out
															value="${(empty(cardItem.cardLevel) || cardItem.cardLevel<1) ? 1 : cardItem.cardLevel }"></c:out></span>
												</div>
											</div>
											<div class="align-center">
												<c:if test="${cardItem.growingPercent >= 0 }">
													<div class="processing-bar-blue fc-normal-01-m"
														processbar="<c:out value="${cardItem.growingPercent<=100 ? cardItem.growingPercent : 100}" />"></div>
												</c:if>
												<c:if test="${cardItem.growingPercent < 0 }">
													<div class="processing-bar-blue fc-normal-01-m"
														processbar="0"></div>
												</c:if>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="middle-right-panel">
											<div>
												<div
													class="archives-item icon icon-physicalstrength icon-location ">
													<span><c:out
															value="${(empty(cardItem.strengthRequireAdded) || cardItem.strengthRequireAdded<0) ? 0 : cardItem.strengthRequireAdded }"></c:out></span>
												</div>
											</div>
											<div>
												<div
													class="archives-item icon icon-total-fighting-energy icon-location ">
													<span><c:out
															value="${(empty(cardItem.attackAdded) || cardItem.attackAdded<0) ? 0 : cardItem.attackAdded }"></c:out></span>
												</div>
											</div>
											<div>
												<div
													class="archives-item icon icon-total-shield-energy icon-location ">
													<span><c:out
															value="${(empty(cardItem.defenceAdded) || cardItem.defenceAdded<0) ? 0 : cardItem.defenceAdded }"></c:out></span>
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
		</c:forEach>
		<div class="fc-title-01 centerFont">
			<span><spring:message code="label.cg030202.silvercount"></spring:message></span>
			<span class="fc-content-02 centerFont">${intensifyCost}</span>
		</div>
		<c:choose>
			<c:when test="${canIntensify}">
				<div class="clearfix goBackButtonPanel clickTone1"
					onclick="doSubmit('<p:fullurl value='/cg0302/cg030204/index'/>')">
					<img
						src="<p:localurl value='/resources/images/buttons/hecheng-green-z.png'/>" />
				</div>
			</c:when>
			<c:otherwise>
				<div class="clearfix goBackButtonPanel">
					<span><spring:message code="label.cg030202.silverless"></spring:message></span>
					<img style="filter: gray; -moz-opacity: .4; opacity: 0.5;"
						src="<p:localurl value='/resources/images/buttons/hecheng-green-z.png'/>" />
				</div>
			</c:otherwise>
		</c:choose>
		<!--
		<div class="clearfix goBackButtonPanel"
			onclick="doSubmit('<p:fullurl value="${goBackUrl}"/>')">
			<img
				src="<p:localurl value='/resources/images/buttons/gengbiansucaika-blue-x.png' />" />
		</div>
		-->
		<div class="clearfix goBackButtonPanel clickTone1" onclick="doSubmit('<p:fullurl value="/cg0302/cg030201/index"/>')" >
			<img src="<p:localurl value='/resources/images/buttons/gengbiansucaika-blue-x.png'/>" />
		</div>
	</form>
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
						<spring:message code="label.cg030202.message.npc" />
					</div>
					<div></div>
				</div>
			</div>
		</div>
	</div>
</div>

