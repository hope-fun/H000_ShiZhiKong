<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="union" tagdir="/WEB-INF/tags/union"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120130.title" /></span>
	</div>
	<input type="hidden" id="applyFriend_url" value="<p:fullurl value="/cg0501/cg050107/applyFriend/" />" />
	<input type="hidden" id="apply_message" value="<spring:message code="label.cg0501.playertag.applymessage"></spring:message>" />
	<input type="hidden" id="max_message" value="<spring:message code="label.cg0501.playertag.maxmessage"></spring:message>" />
	<input type="hidden" id="playerId" value="${player.id }" />
	<input type="hidden" id="returnUrl" value="<p:fullurl value="/cg1201/cg120109/index/${player.unionId }" />" />
	<input type="hidden" id="cg120109memberlimit" value="<spring:message code="label.cg120109.memberlimit"></spring:message>" />
	<input type="hidden" id="cg120109distribute" value="<spring:message code="label.cg120109.distribute"></spring:message>" />
	<input type="hidden" id="cg120109givecystal" value="<spring:message code="label.cg120109.givecystal"></spring:message>" />
	<input type="hidden" id="cg120109providecount" value="<spring:message code="label.cg120109.providecount"></spring:message>" />
	<input type="hidden" id="cg120109providemax" value="<spring:message code="label.cg120109.providemax"></spring:message>" />
	<input type="hidden" id="cg120109provideweek" value="<spring:message code="label.cg120109.provideweek"></spring:message>" />
	<input type="hidden" id="cg120109providesuccess" value="<spring:message code="label.cg120109.providesuccess"></spring:message>" />
	<input type="hidden" id="cg120109providefail" value="<spring:message code="label.cg120109.providefail"></spring:message>" />
	<input type="hidden" id="cg120109applysend" value="<spring:message code="label.cg120109.applysend"></spring:message>" />
	<div>
	<div class="panel-02">
			<div class="<cssutils:cardCamp campType='${player.camp}'/>">
				<div class="panel-header">
					<div class="rivail-info"><span><c:out value="${player.name }" /></span></div>
					 <div class="small-rank-pic">
						<c:if test="${ ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${ranking}.png"/>" />
						</c:if>
					</div> 
					<div class="vip-level-pic">
						<c:if test="${ player.vipLevel > 0 }">
							<img src="<p:localurl value="/resources/images/viplevel/${player.vipLevel}.png"/>" />
						</c:if>
					</div>
					<div class="clearfix"></div>
				</div>
				
				<div class="panel-body">
					<div class="card-major fc-normal-03-m">
						<div class="middle-card-width">
							<div class="card-major-image">
								<c:if test="${not empty playerCard.cardId }" >
									<img alt="" src="<p:cardImg type="middle" id="${playerCard.cardId }"></p:cardImg>"/>
								</c:if>
								<c:if test="${empty playerCard.cardId }" >
									<img />
								</c:if>
							</div>
							<div class="card-major-image-equipment middel-equips-width">
								<div >
									<c:if test="${not empty playerCard.playerEquipmentId1 }" >
										<img src="<p:equipImg type="middle" id="${playerCard.playerEquipment1.equipmentId }" />" />
									</c:if>
									<c:if test="${empty playerCard.playerEquipmentId1 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
									</c:if>
								</div>
								<div>
									<c:if test="${not empty playerCard.playerEquipmentId2 }" >
										<img src="<p:equipImg type="middle" id="${playerCard.playerEquipment2.equipmentId }" />" />
									</c:if>
									<c:if test="${empty playerCard.playerEquipmentId2 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
									</c:if>
								</div>
								<div>
									<c:if test="${not empty playerCard.playerEquipmentId3 }" >
										<img src="<p:equipImg type="middle" id="${playerCard.playerEquipment3.equipmentId }" />" />
									</c:if>
									<c:if test="${empty playerCard.playerEquipmentId3 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
									</c:if>
								</div>
								<div></div>
							</div>
						</div>
						<div class="middle-info-width">
							<div class="card-major-desc">
								<div class="card-major-data">
									<div class="icon icon-level">
										<span><spring:message code="label.cg0501.middleinfo.level"></spring:message>：</span>
										<span>
											<c:if test="${not empty player.level }"><c:out value="${player.level}" /></c:if>
											<c:if test="${empty player.level }">0</c:if>
										</span>
									</div>
									<div class="icon icon-comrades">
										<span><spring:message code="label.cg0501.middleinfo.friend"></spring:message>：</span>
										<span>
											<c:if test="${not empty player.friendsNum }"><c:out value="${player.friendsNum}" /></c:if>
											<c:if test="${empty player.friendsNum }">0</c:if>/
											<c:if test="${not empty player.friendsMax }"><c:out value="${player.friendsMax}" /></c:if>
											<c:if test="${empty player.friendsMax }">0</c:if>
										</span>
									</div>
									<div class="icon icon-fight-result">
										<span><spring:message code="label.cg0501.middleinfo.combat"></spring:message>：</span>
										<span class="fc-normal-02-m">
											<c:out value="${(not empty player.attackWinTimes ? player.attackWinTimes : 0) + 
													(not empty player.defenceWinTimes ? player.defenceWinTimes : 0) }" />
										</span>
										
										<span><spring:message code="label.cg0501.middleinfo.win"></spring:message></span>
										<span style="color: yellow;">
											<c:out value="${(not empty player.attackLoseTimes ? player.attackLoseTimes : 0) + 
													(not empty player.defenceLoseTimes ? player.defenceLoseTimes : 0) }" />
										</span>
										<span><spring:message code="label.cg0501.middleinfo.fail"></spring:message></span>
									</div>
									<div>
										<span class="font-size-18bt"><spring:message code="label.cg0501.middleinfo.cardnum"></spring:message>：</span>
										<span>
											<c:if test="${not empty player.cardsCount }"><c:out value="${player.cardsCount}" /></c:if>
											<c:if test="${empty player.cardsCount }">0</c:if>/
											<c:if test="${not empty player.cardsMax }"><c:out value="${player.cardsMax}" /></c:if>
											<c:if test="${empty player.cardsMax }">0</c:if>
										</span>
									</div>
									
									<div class="apply-friend-buttons">
										<div class="apply-friend-info"></div>
										<div class="is-apply-button" >
											<c:if test="${isCanApply == true }" >
												<img class="clickTone1" onclick="apply_friend()" src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>" />
											</c:if>
											<c:if test="${isCanApply == false }" >
												<img class="button_gray" src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>" />
											</c:if>
										</div>
										
									</div>
									
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
 	<union:recomCardGroupDiv recomCardGropDivTag="${recomCardGroupDivTagView}"></union:recomCardGroupDiv>
 	
 	
 	

	
	
	
	
	
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1201/cg120109.js'/>"></script>