<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>
<c:if test="${empty header['requestType']}">

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){	
	
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
		
		if("${(playerTaskSection.roundsCountFinished)/(playerTaskSection.roundsCount)*100}"==0){
			var sectionName = "${playerTaskSection.name}";	
			//add by ma_li 2013-9-4 发送征程小节名到客户端  talking game 分析数据
			var data = "{\"pveTaskSectionName\":\""+sectionName+"\"}";
			JSInterface.startPlayerTaskSection(data);
		}
		
		//add by ma_li  使用恢复行动能力药水   
		if("${canAutoUseConsumable}" && "${consumableVO}" != null){
			console.log("${canAutoUseConsumable}");
			if("${consumableVO.buyCount}">0){
				var data1 ="{\"consumableId\":\""+ "${consumableVO.name}" +"\",\"number\":" + 1 +"}";
				JSInterface.useConsumble(data1);
			}
		}
		
	}, false);
});

	
</script>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>
<div class="content">
<input id="canAutoUseConsumable" type="hidden" value="${canAutoUseConsumable}" />
<input id="doAjaxSubmitUrl" type="hidden" value="<p:fullurl value='/cg0201/cg020104/action/${playerTaskSection.id}' />" />
<input id="doJumpUrl" type="hidden" value="'<p:fullurl value='/cg0201/cg020000/index/${playerTaskSection.id}' />'" />
<input id="actionPower" type="hidden" value="${ playerTaskSection.player.actionPower}" />
<input id="consumeActionPower" type="hidden" value="${  playerTaskSection.consumeActionPower}" />
<input id="cg0201attackauto" type="hidden" value="<spring:message code='label.cg0201.attackcannotauto' />" />
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack">${playerTaskSection.name}</span>
	</div>
	<div class="executeMission">
		<img class="lightOper" src="<p:localurl value='/resources/images/animation/light.png' />" />
		<div class="contentOper">
			<img src="<p:localurl value='/resources/images/scene/${playerTaskSection.chapterId}.png' />" />
			<div class="executingMask"> </div>
		</div>
			<div class="noticeOper">
				<span><spring:message code="label.CG020104.executing" />&emsp;&emsp;</span>
				<span>+
				<span>${playerTaskSection.rewardExp}</span>
					EXP
				</span>
				<span>&emsp;&emsp;+
				<span>${playerTaskSection.rewardScoinMin}~${playerTaskSection.rewardScoinMax}</span>
					<spring:message code="lablel.raidtype.SCOIN" />
				</span>
				<span>&emsp;&emsp;-
				<span>${playerTaskSection.consumeActionPower}</span>
					<spring:message code="label.CG020104.action" />
				</span>
			</div>
	</div>
	<div class="pro-bars clearfix">
		<div>
			<div class="fc-normal-05-l font-pro"><spring:message code="label.CG020104.action"></spring:message>：</div>
			<div>
				<div id="actionProcessBar" class="processing-bar-blue fc-normal-01-m"
					processbar="<fmt:formatNumber type='number' value='${playerTaskSection.player.actionPower/playerTaskSection.player.actionPowerMax*100}' maxFractionDigits='0'/>"></div>
				<div class="pro-bar-num02 clearfix">
					<span id="actionNum">${playerTaskSection.player.actionPower}</span> <span>/</span> <span>${playerTaskSection.player.actionPowerMax}</span>
				</div>
			</div>
		</div>
		<div>
			<div class="fc-normal-05-l font-pro" ><spring:message code="label.CG020104.exp"></spring:message>：</div>
			<div>
				<div id="expProcessBar" class="processing-bar-green fc-normal-02-m"
					processbar="<fmt:formatNumber type='number' value='${(playerTaskSection.player.exp)/(playerTaskSection.player.expNextLevel)*100}' maxFractionDigits='0'/>"></div>
				<div class="pro-bar-num02 clearfix">
					<span id="expNum">${playerTaskSection.player.exp}</span> <span>/</span> <span>${playerTaskSection.player.expNextLevel}</span>
				</div>
			</div>
		</div>
		<div>
			<div class="fc-normal-05-l font-pro"><spring:message code="label.CG020104.process"></spring:message>：</div>
			<div>
				<div id="roundsCountProcessBar" class="processing-bar-yellow fc-normal-06-m"
					processbar="<fmt:formatNumber type='number' value='${(playerTaskSection.roundsCountFinished)/(playerTaskSection.roundsCount)*100}' maxFractionDigits='0'/>"></div>
				<div class="pro-bar-num02 clearfix">
					<!-- <span>2000</span> <span>/</span> <span>3000</span>  -->
				</div>
			</div>
		</div>
	</div>
	<div class="info-pic">
		<div class="reward-section">
			<c:choose>
				<c:when test="${playerTaskSection.rewardCard1}">
					<img src='<p:cardImg type="tinysmall" id="${playerTaskSection.rewardCard1Id}"></p:cardImg>'>
				</c:when>
				<c:otherwise>
					<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
				</c:otherwise>
			</c:choose>
		</div>
		<div class="reward-section">
			<c:choose>
				<c:when test="${playerTaskSection.rewardCard2}">
					<img src='<p:cardImg type="tinysmall" id="${playerTaskSection.rewardCard2Id}"></p:cardImg>'>
				</c:when>
				<c:otherwise>
					<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
				</c:otherwise>
			</c:choose>
		</div>
		<div class="reward-section">
			<c:choose>
				<c:when test="${playerTaskSection.rewardCard3}">
					<img src='<p:cardImg type="tinysmall" id="${playerTaskSection.rewardCard3Id}"></p:cardImg>'>
				</c:when>
				<c:otherwise>
					<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
				</c:otherwise>
			</c:choose>
		</div>
		<c:if test="${not empty playerTaskSection.treasureId}">
			<c:choose>
				<c:when test="${playerTaskSection.rewardTreasureFragment}">
					<treasure:treasureImage treasureFragmentVO="${playerTaskSection.fragment}" imageSize="middle"></treasure:treasureImage>
				</c:when>
				<c:otherwise>
					<div class="reward-section">
					<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
					</div>
				</c:otherwise>
			</c:choose>
		</c:if>
	</div>
	
	<div class="recover-energy-checkbox">
	
	
	<div class="recover-energy-img">
		<input name ="checkzhanhunengyuan" type="checkbox" id="checkzhanhunengyuan" class="sell_out" checked="false"/>
		<label id ="checkzhanhunengyuanlabel" for="checkzhanhunengyuan" class="checkbox-pic-style checked-pic"></label>
	</div>
	<div class="recover-energy-info">
			<span class="fc-normal-06-m system-content-other panleText">
			<spring:message code="label.CG020104.autorecoveraction"></spring:message></span>
	</div>
	</div>
	
	<div class="buttonPanel">
	<c:choose>
		<c:when test="${playerTaskSection.player.actionPower >= playerTaskSection.consumeActionPower}">
			<div class="center-site task-section-style" style="">
				<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>' onclick="doAjaxSubmit('<p:fullurl value='/cg0201/cg020104/action/${playerTaskSection.id}' />','<p:fullurl value='/player/getPlayerInfo'/>');">
			</div>
		</c:when>
		<c:otherwise>
			<div class="center-site button_gray task-section-style">
				<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>' onclick="doJumpFor020104('<p:fullurl value='/cg0201/cg020000/index/${playerTaskSection.id}' />')">
			</div>
		</c:otherwise>
	</c:choose>
	</div>
	
	<div class="use-con-style">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height npc-height" style=""></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="card-assistant npc-padding02">
					<div class="npc-pic-width">
						<div>
							<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
						</div>
					</div>
					<div class="description_content npc-message-new task-story-des">
						${taskStoryDesc}
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="goto-task-button">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/qianquzhengchengxiaojie-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020103/index/${playerTaskSection.playerChapterStoryId}'/>')" />
	</div>
	<div class="goto-buttons">
		<div>
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/qianwangdazhang-blue-x.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020101/index2'/>')" />
		</div>
		<div>
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/qianwangzhongjie-green-x.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020102/index/${playerTaskSection.playerChapterId}'/>')" />
		</div>
	</div>
	
</div>

<div class="OverWritePanel" style="display:none;">
  

</div>
</c:if>
<c:if
	test="${(header['requestType'] == 'ajax' and header['requestFrom'] == 'TaskSection') }">
	<div>
		
		<div class="OverWritePanel">
		</div>
		
		
  		<div id="actionProcessBartarget" class="processing-bar-blue fc-normal-01-m" processbar="<fmt:formatNumber type='number' value='${playerTaskSection.player.actionPower/playerTaskSection.player.actionPowerMax*100}' maxFractionDigits='0'/>"></div>
		<div id="expProcessBartarget" class="processing-bar-green fc-normal-02-m"
						processbar="<fmt:formatNumber type='number' value='${(playerTaskSection.player.exp)/(playerTaskSection.player.expNextLevel)*100}' maxFractionDigits='0'/>"></div>
		<div id="roundsCountProcessBartarget" class="processing-bar-yellow fc-normal-06-m"
						processbar="<fmt:formatNumber type='number' value='${(playerTaskSection.roundsCountFinished)/(playerTaskSection.roundsCount)*100}' maxFractionDigits='0'/>"></div>
		<span id="actionNumtarget">${playerTaskSection.player.actionPower}</span> <span>/</span> <span>${playerTaskSection.player.actionPowerMax}</span>
		<span id="expNumtarget">${playerTaskSection.player.exp}</span> <span>/</span> <span>${playerTaskSection.player.expNextLevel}</span>
		<div class="buttonPanel">
			<c:choose>
				<c:when test="${playerTaskSection.player.actionPower >= playerTaskSection.consumeActionPower}">
					<div class="center-site task-section-style" style="">
						<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>' onclick="doAjaxSubmit('<p:fullurl value='/cg0201/cg020104/action/${playerTaskSection.id}' />','<p:fullurl value='/player/getPlayerInfo'/>');">
					</div>
				</c:when>
				<c:otherwise>
					<div class="center-site button_gray task-section-style">
						<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>' onclick="doJumpFor020104('<p:fullurl value='/cg0201/cg020000/index/${playerTaskSection.id}' />')">
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<input id="canAutoUseConsumabletarget" type="hidden" value="${canAutoUseConsumable}" />
		<input id="doAjaxSubmitUrltarget" type="hidden" value="<p:fullurl value='/cg0201/cg020104/action/${playerTaskSection.id}' />" />
		<input id="doJumpUrltarget" type="hidden" value="'<p:fullurl value='/cg0201/cg020000/index/${playerTaskSection.id}' />'" />
		<input id="actionPowertarget" type="hidden" value="${ playerTaskSection.player.actionPower}" />
		<input id="consumeActionPowertarget" type="hidden" value="${  playerTaskSection.consumeActionPower}" />

		
	
	</div>
</c:if>


