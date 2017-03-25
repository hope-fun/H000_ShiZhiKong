<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="consumable" tagdir="/WEB-INF/tags/fight"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:if test="${empty header['requestType']}">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2201/CG22010701.css?v=1"/>" />
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2201/CG22010702.css?v=1"/>" />
<script type="text/javascript" charset="utf-8">
	var enemyName = "${fightName}";
</script>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg2201/cg2201.js'/>"></script>

<input type="hidden" id="cg0401spenddiamond" value="<spring:message code='label.cg0401.spenddiamond'/>"/>
<input type="hidden" id="cg0401probability" value="<spring:message code='label.cg0401.probability'/>"/>
<input type="hidden" id="cg0401investigatefail" value="<spring:message code='label.cg0401.investigatefail'/>"/>

<div  class="content cg040106">
	<div id="consumableContent">
		<consumable:consumableMoveDiv d2="${d2}" d1="${d1}"></consumable:consumableMoveDiv>		
	</div>
	<input id="rivalPlayerCardIds" type="hidden"
			value="${rivalPlayerCardIds }" />
	<input id="dofightUrl" type="hidden" value="<p:fullurl value="/cg2201/cg220107/fight/"/>" />
	<input id="changeGroupUrl" type="hidden" value="<p:fullurl value="/cg2201/cg220107/changePlayerCardGroup/"/>" />
	<input id="useDiamond" type="hidden" value="<p:fullurl value="/cg0401/cg040106/useDiamond/"/>" />
	<div style="display:none">
		<img class="jqPopupcg040102action"
			src="<p:localurl value="/resources/images/buttons/buchongnengliang-blue.png"/>">
		<img class="jqPopupcg040102cancel"
			src="<p:localurl value="/resources/images/buttons/jixugongji-green.png"/>">
		<img class="jqPopupcg040102fangqi"
			src="<p:localurl value="/resources/images/buttons/quxiao-blue.png"/>">
		<img class="jqPopupcg040102fanji"
			src="<p:localurl value="/resources/images/buttons/queding-green.png"/>">
	</div>
	
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg040106.prepare"></spring:message></span>
	</div>
		
	<div class="panel-03">
		<div class="enemyCardGroupName"><spring:message code="label.cg040106.enemy.array"></spring:message>： ${rivalcardGroupName }</div>
		
		<div class="cardFrameHeight">
			<div class="innerCardFrameHeight">
					<div class="cardHead">1</div>
					<div class="cardBody"><img src='<p:cardImg type="small" id="${rivalPlayerCardsList[0].cardId}"></p:cardImg>'/></div>
				</div>
			<c:forEach items="${rivalPlayerCardsList }" begin="1" end="${fn:length(rivalPlayerCardsList)}" var="playerCardViewData" varStatus="itemStatus">
				<div class="innerCardFrameHeight">
					<div class="cardHead">${itemStatus.index+1}</div>
					<div class="cardBody"><img  class ="zhenchakapai" id="img_zhencha_${itemStatus.index}" src='<p:cardImg type="small" id="zhenchakapai"></p:cardImg>'/></div>
				</div>
			</c:forEach>
			
			<c:if test="${fn:length(rivalPlayerCardsList)<5 }">
			 <c:forEach begin="1" end ="${5-fn:length(rivalPlayerCardsList)}" varStatus="itemStatus">
					<div class="innerCardFrameHeight" >
						<div class="cardHead">${itemStatus.index+fn:length(rivalPlayerCardsList)}</div>
						<div class="cardBody"><img  src="<p:localurl value="/resources/images/cards/small/scard-smallcard.png"/>" width="100%" height="100%" /></div>
					</div>
				</c:forEach>
			</c:if>
		</div>

		
		

	



<div id ="divcontent">

</c:if>
	<c:if test="${not empty header['requestType'] or header['requestType'] == 'ajax' }">
		
		<input id="playerCardIds" type="hidden"
			value="${extraPowerViewData.playerCardIds }" />
		<input id="playerCardIdsPrimary" type="hidden"
			value="${extraPowerViewData.playerCardPrimaryIds }" />	
		<input id="playerCardGroupId" type="hidden" value="${playerCardGroupId }" />
		<div class="myCardGroupName"><spring:message code="label.cg040106.mycardgroup"></spring:message> ${cardGroupName }</div>
		
		
		<div class="player-cards-height">
			<c:forEach items="${playerCardsList }"  var="playerCardViewData" varStatus="itemStatus">
				<div class="innerCardFrameHeight">
					<div class="cardHead">${itemStatus.index+1}</div>
					<div class="cardBody"><img id="img_${itemStatus.index+1}" src='<p:cardImg type="small" id="${playerCardViewData.cardId}" ></p:cardImg>'/></div>
				</div>
			</c:forEach>
			<c:if test="${fn:length(playerCardsList)<5 }">
			 <c:forEach begin="1" end ="${5-fn:length(playerCardsList)}" varStatus="itemStatus">
					<div class="innerCardFrameHeight" >
						<div class="cardHead">${itemStatus.index+fn:length(playerCardsList)}</div>
						<div class="cardBody"><img id="img_${itemStatus.index+fn:length(playerCardsList)}" src="<p:localurl value="/resources/images/cards/small/scard-smallcard.png"/>" width="100%" height="100%" /></div>
					</div>
				</c:forEach>
			</c:if>
		</div>
		
		<div class="qiehuanzhanwei-green-x">
			<div style="float: left;">
				<img id ="qiehuanzhanwei" src="<p:localurl value="/resources/images/buttons/qiehuanzhanwei-green-x.png"/>"  class='clickTone1' />
			</div>
			<div style="float: right;">
				<img id ="qiehuanzhanrong" src="<p:localurl value="/resources/images/buttons/qiehuanzhanrong-blue-x.png"/>" class='clickTone1' />
			</div>
		</div>
		
		<div class="juezhan-green-z">
			<img src="<p:localurl value="/resources/images/buttons/juezhan-green-z.png"/>" class='clickTone1 fightButtonForPeople' enemyId=${rivailInfo.id } />
		</div>

		<div class="borderPanel">
		<div class="panelB-header"></div>
		<div class="panelB-body panelB08-height"></div>
		<div class="panelB-footer"></div>
		<div class="border-content-noleft">
			<div class="totalPower">
				<div class="all-power-info">
					<div class="now-power"><spring:message code="label.cg040106.totalattackpower"></spring:message></div>
					<div class="total-power">${totalAttackPower }</div>
				</div>
				<div class="all-power-info02">
					<div class="now-power"><spring:message code="label.cg040106.totaldefencepower"></spring:message></div>
					<div class="total-power">${totalDefensePower }</div>
				</div>
			</div>
			<div class="consumer-list-image"></div>
			<div class="clearfix"></div>
			<div class="totalPower">

				<div class="all-power-info">
					<div class="add-power"><spring:message code="label.cg040106.attackpoweradd"></spring:message></div>
					<div class="add-power-percent">
						<span>+ ${extraPowerViewData.fightPowerAddtionPercent }%</span>
					</div>
				</div>
				<div class="all-power-info02">
					<div class="add-power"><spring:message code="label.cg040106.defencepoweradd"></spring:message></div>
					<div class="add-power-percent">
						<span>+
							${extraPowerViewData.fightDefencePowerAddtionPercent }%</span>
					</div>
				</div>

			</div>

			<div class="addedByPower">
				<div class="added-power-count">
					<div class="added-num-style"><spring:message code="label.cg040106.attack.power"></spring:message> +
						${extraPowerViewData.attackAddedByPower }</div>
				</div>
				<div class="added-power-count02">
					<div class="added-num-style02"><spring:message code="label.cg040106.defence.power"></spring:message> +
						${extraPowerViewData.defenceAddedByPower }</div>
				</div>
			</div>
			<div class="clearfix"></div>


			<div class="totalPower">
				<div class="all-power-info">
					<div class="add-power"><spring:message code="label.cg040106.continue.login"></spring:message></div>
					<div class="add-power-percent">
						<span>+ ${extraPowerViewData.continueRegisterPercent}%</span>
					</div>
				</div>
				<div class="all-power-info"></div>

			</div>
			<div class="clearfix"></div>
			<div class="addedByPower">
				<div class="all-power-info">
					<div class="added-num-style"><spring:message code="label.cg040106.attack.power"></spring:message> +
						${extraPowerViewData.attackAddedByRegister }</div>
				</div>
				<div class="all-power-info02">
					<div class="added-num-style02"><spring:message code="label.cg040106.defence.power"></spring:message> +
						${extraPowerViewData.defenceAddedByRegister }</div>
				</div>

			</div>
		</div>
	</div>
	
	</c:if>
	
	<c:if test="${empty header['requestType']}">
		<input id="playerCardIds" type="hidden"
			value="${extraPowerViewData.playerCardIds }" />
		<input id="playerCardIdsPrimary" type="hidden"
			value="${extraPowerViewData.playerCardPrimaryIds }" />	
		<input id="playerCardGroupId" type="hidden" value="${playerCardGroupId }" />
	<div class="myCardGroupName"><spring:message code="label.cg040106.mycardgroup"></spring:message> ${cardGroupName }</div>
		
		
		<div class="cardFrameHeight">
			<c:forEach items="${playerCardsList }"  var="playerCardViewData" varStatus="itemStatus">
				<div class="innerCardFrameHeight">
					<div class="cardHead">${itemStatus.index+1}</div>
					<div class="cardBody"><img id="img_${itemStatus.index+1}" src='<p:cardImg type="small" id="${playerCardViewData.cardId}" ></p:cardImg>'/></div>
				</div>
			</c:forEach>
			<c:if test="${fn:length(playerCardsList)<5 }">
			 <c:forEach begin="1" end ="${5-fn:length(playerCardsList)}" varStatus="itemStatus">
					<div class="innerCardFrameHeight" >
						<div class="cardHead">${itemStatus.index+fn:length(playerCardsList)}</div>
						<div class="cardBody"><img id="img_${itemStatus.index+fn:length(playerCardsList)}" src="<p:localurl value="/resources/images/cards/small/scard-smallcard.png"/>" width="100%" height="100%" /></div>
					</div>
				</c:forEach>
			</c:if>
		</div>
		
		
		<div class="qiehuanzhanwei-green-x">
			<div style="float: left;">
				<img id ="qiehuanzhanwei" src="<p:localurl value="/resources/images/buttons/qiehuanzhanwei-green-x.png"/>"  class='clickTone1' />
			</div>
			<div style="float: right;">
				<img id ="qiehuanzhanrong" src="<p:localurl value="/resources/images/buttons/qiehuanzhanrong-blue-x.png"/>" class='clickTone1' />
			</div>
		</div>
		
		<div class="juezhan-green-z">
			<img src="<p:localurl value="/resources/images/buttons/juezhan-green-z.png"/>" class='clickTone1 fightButtonForPeople' enemyId=${rivailInfo.id } />
		</div>

		<div class="borderPanel">
		<div class="panelB-header"></div>
		<div class="panelB-body panelB08-height"></div>
		<div class="panelB-footer"></div>
		<div class="border-content-noleft">
			<div class="totalPower">
				<div class="all-power-info">
					<div class="now-power"><spring:message code="label.cg040106.totalattackpower"></spring:message></div>
					<div class="total-power">${totalAttackPower }</div>
				</div>
				<div class="all-power-info02">
					<div class="now-power"><spring:message code="label.cg040106.totaldefencepower"></spring:message></div>
					<div class="total-power">${totalDefensePower }</div>
				</div>
			</div>
			<div class="consumer-list-image"></div>
			<div class="clearfix"></div>
			<div class="totalPower">

				<div class="all-power-info">
					<div class="add-power"><spring:message code="label.cg040106.attackpoweradd"></spring:message></div>
					<div class="add-power-percent">
						<span>+ ${extraPowerViewData.fightPowerAddtionPercent }%</span>
					</div>
				</div>
				<div class="all-power-info02">
					<div class="add-power"><spring:message code="label.cg040106.defencepoweradd"></spring:message></div>
					<div class="add-power-percent">
						<span>+
							${extraPowerViewData.fightDefencePowerAddtionPercent }%</span>
					</div>
				</div>

			</div>

			<div class="addedByPower">
				<div class="added-power-count">
					<div class="added-num-style"><spring:message code="label.cg040106.attack.power"></spring:message> +
						${extraPowerViewData.attackAddedByPower }</div>
				</div>
				<div class="added-power-count02">
					<div class="added-num-style02"><spring:message code="label.cg040106.defence.power"></spring:message> +
						${extraPowerViewData.defenceAddedByPower }</div>
				</div>
			</div>
			<div class="clearfix"></div>


			<div class="totalPower">
				<div class="all-power-info">
					<div class="add-power"><spring:message code="label.cg040106.continue.login"></spring:message></div>
					<div class="add-power-percent">
						<span>+ ${extraPowerViewData.continueRegisterPercent}%</span>
					</div>
				</div>
				<div class="all-power-info"></div>

			</div>
			<div class="clearfix"></div>
			<div class="addedByPower">
				<div class="all-power-info">
					<div class="added-num-style"><spring:message code="label.cg040106.attack.power"></spring:message> +
						${extraPowerViewData.attackAddedByRegister }</div>
				</div>
				<div class="all-power-info02">
					<div class="added-num-style02"><spring:message code="label.cg040106.defence.power"></spring:message> +
						${extraPowerViewData.defenceAddedByRegister }</div>
				</div>

			</div>
		</div>
	</div>
</c:if>
	
	
<c:if test="${empty header['requestType']}">		
</div>	
		
</div>
</c:if>