<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="consumable" tagdir="/WEB-INF/tags/fight"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2201/CG22010701.css?v=1"/>" />
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2201/CG22010702.css?v=1"/>" />
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg2201/cg2201.js'/>"></script>
<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg040106.fightconfirm"></spring:message></span>
	</div>
<c:if test="${not empty comeFromCG0101 }">
	<script>
		comeFromCG0101Flag = true;
	</script>
</c:if>
<c:if test="${isUseConsumable eq 'false08' || isUseConsumable eq 'true' || isUseConsumable eq 'nouse'}" >	
<script>
canBack = 'false';
</script>
</c:if>
<c:if test="${isUseConsumable  eq 'true' }" >		
<c:if test="${not empty consumableList }" >	
	<c:forEach items="${consumableList}" var="consumableItem">	
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelC-header"></div>
			<div class="panelC-body panelC02-height"></div>
			<div class="panelC-footer"></div>
			<div class="border-content-noleft">
				<div class="consumer-list">
					<div class="consumer-list-title"><c:out value="${consumableItem.name}"></c:out></div>
					<div class="consumer-list-image"></div>
					<div>
						<div class="bottomPart_line_image">
							<c:if test="${ not empty consumableItem.id }" >
								<img alt="" src="<p:imgPath id='${consumableItem.id}' folder='consumable' type='large' />"/>
							</c:if>
						</div>
						<div class="bottomPart_line_info">
							
							<div class="consumer-list-function">
								<span class="fc-normal-05-l"><c:out value="${consumableItem.description}"></c:out></span>
							</div>
							<div>
								<div class="consumable-count"><span class="fc-title-01"><spring:message code="label.cg040108.count"></spring:message>：</span><c:out value="${consumableItem.count}"></c:out></div>
								<div class="bottomPart_line_info_button">
								<c:if test="${consumableItem.count > 0 }" >
									<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/shiyong-green.png"/>"  onclick="location.href='<p:fullurl value="/cg2201/cg220107/useconsumable/${consumableItem.id}/${rivailInfo.id}"/>';event.preventDefault();" />
								</c:if>
								<c:if test="${consumableItem.count <= 0 }" >
									<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" onclick="location.href='<p:fullurl value="/cg0901/cg090103/index"/>';event.preventDefault();"/>
								</c:if>								
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				
				
			</div>
		</div>	
	</div>
	</c:forEach>
</c:if>
</c:if>
<c:if test="${isUseConsumable =='true'}" >	
<script>
$(document).ready(function() {
	kpyxTips("<spring:message code="label.cg040108.useconsumable"></spring:message>");
});
</script>
</c:if>
<c:if test="${isUseConsumable eq'nouse'}" >	
<script>
$(document).ready(function() {
	kpyxTips("<spring:message code="label.cg040108.notneeduseconsumable"></spring:message>");
});
</script>
</c:if>
<div class="split-01"></div>	
	<div class="panel-03">
		<c:choose>
			<c:when test="${fn:contains(rivailInfo.camp, 'HUMAN')}">
				<div class="blue-background">
			</c:when>

			<c:when test="${fn:contains(rivailInfo.camp, 'TAITAN')}">
				<div class="yellow-background">
			</c:when>

			<c:otherwise>
				<div class="green-background">
			</c:otherwise>
		</c:choose>
		<div class="panel-header">
			<div class="rivail-info">
				<span><c:out value="${rivailInfo.name}"></c:out></span>
			</div>
			 <div class="small-rank-pic">
						<c:if test="${ ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${ranking}.png"/>" />
						</c:if>
			</div> 
			
			<div class="vip-level-pic">
			<c:if test="${ rivailInfo.vipLevel >0 }">
				<img src="<p:localurl value="/resources/images/viplevel/${rivailInfo.vipLevel}.png"/>" />
			</c:if>	
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="panel-body">
			<div class="card-assistant">
				<div class="small-card-width">
					<div class="card-assistant-image">
						<c:if test="${ not empty rivailInfo.playerCardVO.cardId }" >
						<img src='<p:cardImg type="small" id="${rivailInfo.playerCardVO.cardId}"></p:cardImg>' />
						</c:if>
					</div>
				</div>
				<div class="equips-width">
					<div class="card-assistant-equipment">
						<div class="card-equipment ">	
							<div class="one-equipment">					
								<c:if test="${ not empty rivailInfo.playerCardVO.playerEquipmentId1 }" >								
									<img alt="" src="<p:imgPath id='${rivailInfo.playerCardVO.playerEquipmentId1}' folder='equipments' type='small' />"/>								
								</c:if>
								<c:if test="${ empty rivailInfo.playerCardVO.playerEquipmentId1 }" >								
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>								
								</c:if>
							</div>
							<div class="one-equipment ">
								<c:if test="${ not empty rivailInfo.playerCardVO.playerEquipmentId2 }" >
									<img alt="" src="<p:imgPath id='${rivailInfo.playerCardVO.playerEquipmentId2}' folder='equipments' type='small' />"/>
								</c:if>
								<c:if test="${ empty rivailInfo.playerCardVO.playerEquipmentId2 }" >
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</c:if>
							</div>	
							<div class="one-equipment">
								<c:if test="${ not empty rivailInfo.playerCardVO.playerEquipmentId3 }" >
									<img alt="" src="<p:imgPath id='${rivailInfo.playerCardVO.playerEquipmentId3}' folder='equipments' type='small' />"/>
								</c:if>
								<c:if test="${ empty rivailInfo.playerCardVO.playerEquipmentId3 }" >
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</c:if>
							</div>							
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="player-info-width">
					<div class="card-assistant-desc">
						<div class="rivail-info">
							<div class="archives-item icon icon-level icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040106.level"></spring:message>：</span> <span><c:out
										value="${rivailInfo.level}"></c:out></span>
							</div>
							<div class="archives-item icon icon-shield-energy icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040106.defensepower"></spring:message>：</span><span><c:out
										value="${rivailInfo.defencePowerMax}"></c:out></span>
							</div>
							<div class="archives-item icon icon-comrades icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040106.friend"></spring:message>：</span> <span><c:out
										value="${rivailInfo.friendsNum}"></c:out></span>
							</div>
						</div>
						<div class="juezhanbutton revail-info-button">
						
						<c:if test="${powernotenough!=true }" >
							<c:if test="${empty treasureFragmentId}" >
								<img  class="fightButtonForPeople clickTone1" src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>" enemyId=${rivailInfo.id} />
							</c:if>
						</c:if>
						<c:if test="${powernotenough==true }" >	
							<img class="button_gray" src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>" />
						</c:if>
						</div>
						<div class="clearfix"></div>
					</div>
					<c:if test="${tipMessage==true }" >	
					<div class="fc-withwild" style="text-align: left;">*<spring:message code="label.cg040106.fighttime"></spring:message></div>
					</c:if>
				</div>
				<div></div>
			</div>
		</div>
	</div>

	<div class="menu-medium title-label-02">
		<span><c:out value="${cardGroupName}"></c:out></span>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA13-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="card-mercenary-list-0401">
				  <c:if test="${not empty playerCardsList }" >	
				    <c:forEach items="${playerCardsList}" var="playerCard">
					<div>
						<div class="card-mercenary-list-image">
							<c:if test="${ not empty playerCard.cardId }" >
							<img src='<p:cardImg type="ls" id="${playerCard.cardId}"></p:cardImg>' />
							</c:if>
						</div>
						<div class="equipmentContainer">

							<c:if test="${ not empty playerCard.playerEquipmentId1 }" >
							<div class="propertyNoImage">
								<img alt="" src="<p:imgPath id='${playerCard.playerEquipmentId1}' folder='equipments' type='small' />"/>
							</div>
							</c:if>
							<c:if test="${ empty playerCard.playerEquipmentId1 }" >
							<div class="propertyImage">
								<img />
							</div>
							</c:if>
							<c:if test="${ not empty playerCard.playerEquipmentId2 }" >
							<div class="propertyNoImage">
								<img alt="" src="<p:imgPath id='${playerCard.playerEquipmentId2}' folder='equipments' type='small' />"/>
							</div>
							</c:if>
							<c:if test="${ empty playerCard.playerEquipmentId2 }" >
							<div class="propertyImage">
								<img />
							</div>
							</c:if>
							<c:if test="${ not empty playerCard.playerEquipmentId3 }" >
							<div class="propertyNoImage">
								<img alt="" src="<p:imgPath id='${playerCard.playerEquipmentId3}' folder='equipments' type='small' />"/>
							</div>
							</c:if>
							<c:if test="${ empty playerCard.playerEquipmentId3 }" >
							<div class="propertyImage">
								<img />
							</div>
							</c:if>
						</div>
					</div>
					 </c:forEach>
					</c:if>
					<c:forEach var="i" begin="1" end="${number}">
					<div>
						<div class="card-mercenary-list-image">
							<img src="<p:localurl value="/resources/images/specialcard.png"/>" />
						</div>
						<div class="equipmentContainer">
							<div class="propertyImage"></div>
							<div class="propertyImage"></div>
							<div class="propertyImage"></div>
						</div>						
					</div>
					</c:forEach>
					<div></div>
                    <div class="level-div" style="width:100%">
						<div>
							<div class="archives-item icon icon-level icon-location ">
								<span class="fc-title-01"><spring:message code="label.cg040106.level"></spring:message>：</span> <span><c:out value="${playerInfo.level}"></c:out></span>
							</div>
						</div>			
                   </div>
					<div class="archives-item icon icon-total-fighting-energy icon-location attack-width">
						<span class="fc-title-01"><spring:message code="label.cg040106.attack"></spring:message>：</span>
						<span><c:out value="${totalAttack}"></c:out></span>
					</div>

					<div class="archives-item icon icon-total-shield-energy icon-location defense-width">
						<span class="fc-title-01"><spring:message code="label.cg040106.defense"></spring:message>:</span>
						<span><c:out value="${totalDefense}"></c:out></span>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
	</div>
	<div class="fight-button">
	 <c:if test="${powernotenough!=true }" >
		<c:if test="${empty treasureFragmentId}" >
			<img class="fightButtonForPeople clickTone1" src="<p:localurl value="/resources/images/buttons/jeuzhan-green-x.png"/>" enemyId=${rivailInfo.id} />
		</c:if>
	</c:if>	
	 <c:if test="${powernotenough==true }" >
		 <img class="button_gray" src="<p:localurl value="/resources/images/buttons/jeuzhan-green-x.png"/>"/>
	 </c:if>
</div>
	<consumable:consumableMoveDiv d2="${d2}" d1="${d1}"></consumable:consumableMoveDiv>
	<input id="dofightUrl" type="hidden" value="<p:fullurl value="/cg2201/cg220107/fight/"/>" />
	<input id="doComsumableUrl" type="hidden" value="<p:fullurl value="/cg0601/cg060101/index"/>" />
	<input id="checkCanFightUrl" type="hidden" value="<p:fullurl value="/cg2201/cg220107/checkCanFight/"/>" />
	<input id="listCg220107Index" type="hidden" value="<p:fullurl value="/cg2201/cg220107/index"/>" />
	<input id="showmessage" type="hidden" value="<spring:message code="label.cg0401.confirmfight"></spring:message>" />
</div>