

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0401/cg0401.css?v=1"/>" />

<script
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	$(document).ready(function() {
		$animation.fightAnimation(".contentFight");
	});
</script>
<div class="contentFight">
	<img class="LightOper"
		src="<p:localurl value="/resources/images/animation/fightLight.png"/>" />
	<img class="VS" src="<p:localurl value="/resources/images/animation/fightVs.png"/>" />
	<img class="VS" src="<p:localurl value="/resources/images/animation/fightVs.png"/>" />
	<img class="VS" src="<p:localurl value="/resources/images/animation/fightVs.png"/>" />
	<div class="upInfo title-label-02">
		<div class="player-name-style">&emsp;Damon</div> 
		<div class="total-power-style"><spring:message code="label.cg200107.defence"></spring:message>1000</div>
		<div class="clearfix"></div>
	</div>
	<div class="upPart">
			<div class="fighter">
				<div class="card-mercenary-list-image">
				<img src='<p:cardImg type="ls" id="${'s0012'}"></p:cardImg>' />
				</div>
				<div class="equipmentContainer">
				<div class="propertyImage">
					<img />
				</div>
				<div class="propertyImage">
					<img />
				</div>
				<div class="propertyImage">
					<img />
				</div>
				<div class="clearfix"></div>
				</div>
			</div>
	</div>
	<div class="downInfo title-label-02">
		<div class="player-name-style">&emsp;${fightPlayerData.playerName}</div>
		<div class="total-power-style"><spring:message code="label.cg200107.attack"></spring:message>${fightPlayerData.totalDefensePower}</div>
		<div class="clearfix"></div>
	</div>
	<div class="downPart">
		<c:forEach items="${fightPlayerData.cardGroupCards}" var="playerCard">
			<div class="fighter">
				<div class="card-mercenary-list-image">
					<c:if test="${ not empty playerCard.cardId }">
						<img src='<p:cardImg type="ls" id="${playerCard.cardId}"></p:cardImg>' />
					</c:if>
				</div>
				<div class="equipmentContainer">

					<c:if test="${ not empty playerCard.playerEquipmentId1 }">
						<div class="propertyNoImage">
							<img alt=""
								src="<p:imgPath id='${playerCard.playerEquipment1.equipmentId}' folder='equipments' type='small' />" />
						</div>
					</c:if>
					<c:if test="${ empty playerCard.playerEquipmentId1 }">
						<div class="propertyImage">
							<img />
						</div>
					</c:if>
					<c:if test="${ not empty playerCard.playerEquipmentId2 }">
						<div class="propertyNoImage">
							<img alt=""
								src="<p:imgPath id='${playerCard.playerEquipment2.equipmentId}' folder='equipments' type='small' />" />
						</div>
					</c:if>
					<c:if test="${ empty playerCard.playerEquipmentId2 }">
						<div class="propertyImage">
							<img />
						</div>
					</c:if>
					<c:if test="${ not empty playerCard.playerEquipmentId3 }">
						<div class="propertyNoImage">
							<img alt=""
								src="<p:imgPath id='${playerCard.playerEquipment3.equipmentId}' folder='equipments' type='small' />" />
						</div>
					</c:if>
					<c:if test="${ empty playerCard.playerEquipmentId3 }">
						<div class="propertyImage">
							<img />
						</div>
					</c:if>
					<div class="clearfix"></div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="clickContinue clickTone1" onclick="doJump('<p:fullurl value='/cg2201/cg220108/iconThree'/>');"><span><spring:message code="label.cg040108.clickContinue" /></span></div>
</div>



<div class="content finalRes">
	<div class="title-label-03">
		<span><spring:message code="label.cg040108.fightresult"></spring:message></span>
	</div>
	<div style="width:100%;margin:0 auto;text-align:center;"><img class="fight-result-pic" src='<p:localurl value="/resources/images/xuanchuan/cg040108win.png"/>'></div>
	
	<div class="panel-03">
		<c:choose>
			<c:when test="${fn:contains(playerInfo.camp, 'HUMAN')}">
				<div class="blue-background">
			</c:when>

			<c:when test="${fn:contains(playerInfo.camp, 'TAITAN')}">
				<div class="yellow-background">
			</c:when>

			<c:otherwise>
				<div class="green-background">
			</c:otherwise>
		</c:choose>
		<div class="panel-header">
			<div class="rivail-info">
				<span><c:out value="${playerInfo.name}"></c:out></span>
			</div>
			
			 <div class="small-rank-pic">
						<c:if test="${ ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${ranking}.png"/>" />
						</c:if>
			</div> 
			
			<div class="vip-level-pic">
			<c:if test="${ playerInfo.vipLevel >0 }">
				<img src="<p:localurl value="/resources/images/viplevel/${playerInfo.vipLevel}.png"/>" />
			</c:if>	
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="panel-body">
			<div class="card-assistant">
				<div class="small-card-width">
					<div class="card-assistant-image">
						<c:if test="${ not empty playerInfo.playerCardVO.cardId }" >
						<img src='<p:cardImg type="small" id="${playerInfo.playerCardVO.cardId}"></p:cardImg>' />
						</c:if>
					</div>
				</div>
				<div class="equips-width">
					<div class="card-assistant-equipment">
						<div class="card-equipment ">

							<c:if test="${ not empty playerInfo.playerCardVO.playerEquipmentId1 }" >
							<div class="one-equipment">
								<img alt="" src="<p:imgPath id='${playerInfo.playerCardVO.playerEquipmentId1}' folder='equipments' type='small' />"/>
							</div>
							</c:if>
							<c:if test="${ empty playerInfo.playerCardVO.playerEquipmentId1 }" >
							<div class="one-equipment icon-default">
								<img />
							</div>
							</c:if>

							<c:if test="${ not empty playerInfo.playerCardVO.playerEquipmentId2 }" >
							<div class="one-equipment">
								<img alt="" src="<p:imgPath id='${playerInfo.playerCardVO.playerEquipmentId2}' folder='equipments' type='small' />"/>
							</div>
							</c:if>
							<c:if test="${ empty playerInfo.playerCardVO.playerEquipmentId2 }" >
							<div class="one-equipment icon-default">
								<img />
							</div>
							</c:if>
							
							<c:if test="${ not empty playerInfo.playerCardVO.playerEquipmentId3 }" >
							<div class="one-equipment">
								<img alt="" src="<p:imgPath id='${playerInfo.playerCardVO.playerEquipmentId3}' folder='equipments' type='small' />"/>
							</div>
							</c:if>
							<c:if test="${ empty playerInfo.playerCardVO.playerEquipmentId3 }" >
							<div class="one-equipment icon-default">
								<img />
							</div>
							</c:if>							
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="player-info-width">
					<div class="player-info-style" >
						<div class="player-message">
							<div class="archives-item icon icon-level icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040108.level"></spring:message>：</span> <span><c:out
										value="${playerInfo.level}"></c:out></span>
							</div>
							<div class="archives-item icon icon-shield-energy icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040108.defensepower"></spring:message>：</span><span><c:out
										value="${playerInfo.defencePowerMax}"></c:out></span>
							</div>
							<div class="archives-item icon icon-comrades icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040108.friend"></spring:message>：</span> <span><c:out
										value="${playerInfo.friendsNum}"></c:out></span>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>	
</div>

	<div class="commonPading01" style="width:100%;">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="fight-result-list">
	               <div class="margin-style0">
						<div class="fight-result" >
							<!--  <span class="fc-title-02"><spring:message code="label.cg040108.result"></spring:message>:</span>
							<span><c:out value="${winNum}"></c:out></span>
							<span class="fc-normal-02-m"><spring:message code="label.cg040108.win"></spring:message></span>
							<span><c:out value="${loseNum}"></c:out></span>
							<span class="fc-normal-04-m"><spring:message code="label.cg040108.lose"></spring:message></span>-->
						</div>
						<div class="fight-result">
						</div>
						<div class="fight-result-cystal">
							<!--<span class="fc-title-02"><spring:message code="label.cg040108.crystal"></spring:message>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<span><c:out value="${crystalBefore}"></c:out></span>
							<span><img src="<p:localurl value="/resources/images/Arrow04.png"/>" /></span>
							<span><c:out value="${playerInfo.silverCoin}"></c:out></span>-->
						</div>
		            </div>
		            <div class="fight-result">
		            	<span><spring:message code="label.cg040108.reward"></spring:message></span>
		            </div>
		            <div class="line-0401"></div>
					<div class="win-pannel">
						<div class="win-info-reward">
							<div class="win-equipment"></div>
						</div>
						<div class="win-info-reward">
							<div class="win-equipment"></div>
						</div>
						<div class="win-info-reward">
								<div class="win-equipment"></div>
							
						</div>
						<div class="win-info-reward">
								<div class="win-equipment"></div>
							
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
	</div>				
	</div>
	  <div class="link-button-green clickTone1 activity-style" onclick="doJump('<p:fullurl value='/cg2201/cg220108/iconThree'/>');">
		<span><spring:message code="label.CG020109.activity"></spring:message></span>
	</div>
	<div class="split-01"></div>

</div>


<script type="text/javascript" >

function doJump(url) {
		kpyxConfirm("<spring:message code='label.cg220108.fightresult' />",function (){
			window.location.href = url;
		});
}
</script>



