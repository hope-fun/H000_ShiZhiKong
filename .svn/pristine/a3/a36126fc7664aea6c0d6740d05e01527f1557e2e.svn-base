

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
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			$animation.fightAnimation(".contentFight",${fightProcess},"<p:fullurl value='/resources/images/animation'/>","${fightResult.result}");
			var bridge = event.bridge;
			bridge.send("Disable Back");
		}, false);
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			var enemyName = "${fightName}";
			var fightResult = "${fightResult.result}";
			
			var result;
			var reason;
			if(fightResult == "WIN"){ 
				result = 1;
				reason = "<spring:message code="lable.cg040108.enemynotstrong"/>";
			}else{
				result = 0;
				reason="<spring:message code="lable.cg040108.enemystrong"/>";
			}
			var data ="{\"playerName\":\""+ enemyName +"\",\"pvpResult\":" +result +",\"pvpReason\":\"" +reason +"\"}";	
			JSInterface.finishPvpBattle(data);
		}, false);
		
		
	});
	
	$(function (){
		$("#tiaoguozhandou").click(function(){
			playCss3AnimationFlag= false;
			//清除动画效果
			 $(".contentFight").css("display","none");
			 $(".finalRes").css("display","block");
			//200代表战斗背景音乐停止放映 
			JSInterface.clickTone(200); 
			if("${fightResult.result}" == "WIN"){
				//音效    ma_li   胜利    
				JSInterface.clickTone(125);
			}else{
				//音效    ma_li   失败   
				JSInterface.clickTone(112);
			}
		});
	})	
	
	
	
</script>
<script>
function generateNumImg(val,imgSrc){	
	if (isNaN(val))
		return;	
	var valStr = new String(val);
	var dataString = "";
	for (var i = 0, len = valStr.length; i < len; i++)
		dataString += "<img src='"+imgSrc+ valStr[i] + ".png' />";		
	return dataString;
}
$(function() { 
	$("#defence").html(generateNumImg(${fightRivailData.totalDefensePower},'<p:fullurl value='/resources/images/animation/'/>'))
	$("#attack").html(generateNumImg(${fightPlayerData.totalAttackPower},'<p:fullurl value='/resources/images/animation/'/>'))
});  

</script>
<div class="contentFight">
	<c:if test="${fn:contains(fightResult.result, 'WIN')}">		
		<img class="VS" src="<p:localurl value="/resources/images/animation/win.png"/>" />
	</c:if>
	<c:if test="${fn:contains(fightResult.result, 'LOSE')}">		
		<img class="VS" src="<p:localurl value="/resources/images/animation/lose.png"/>" />
	</c:if>
	<div class="upPart">
		<c:choose>
	    <c:when test="${rivalPlayer.camp=='HUMAN' }">
	    <img class="cardHolder card-holder"
			src="<p:localurl value='/resources/images/animation/human.png'/>" />
	    </c:when>
	     <c:when test="${rivalPlayer.camp=='TAITAN' }">
	    <img class="cardHolder card-holder"
			src="<p:localurl value='/resources/images/animation/Protoss.png'/>" />
	    </c:when>
	    <c:otherwise>
	    <img class="cardHolder card-holder"
			src="<p:localurl value='/resources/images/animation/zerg.png'/>" />
	    </c:otherwise>
	    </c:choose>
		<div class="infoHolder" style="display:none;background: url('<p:fullurl value='/resources/images/animation/infoHolder.png'/>') center center no-repeat;">
			<img class="defence-num" src="<p:fullurl value='/resources/images/animation/totalDefence.png'/>" />
		</div>
		<div class ="defensePower defense-power">
			<img src="<p:fullurl value='/resources/images/animation/totalDefence.png'/>" /><span id="defence"></span>
		</div>
		<div class="nameHolder rivaildata-name" style="background:url('<p:fullurl value='/resources/images/animation/nameHolder.png'/>') center center no-repeat;">
			<span>${fightRivailData.playerName}</span>
		</div>
		<div  class="friend-name-up">
		<c:if test="${not empty rivialFriendName }">
		<span>${rivialFriendName }</span>
		</c:if>
		</div>
		<div class="fighter pos4" maxHp="${fightRivailData.playerCardsList.get(3).attack + fightRivailData.playerCardsList.get(3).defence}">
			<c:if test="${not fightRivailData.playerCardsList.get(3).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightRivailData.playerCardsList.get(3).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${fightRivailData.playerCardsList.get(3).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos2" maxHp="${fightRivailData.playerCardsList.get(1).attack + fightRivailData.playerCardsList.get(1).defence}">
			<c:if test="${not fightRivailData.playerCardsList.get(1).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightRivailData.playerCardsList.get(1).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${fightRivailData.playerCardsList.get(1).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos1" maxHp="${fightRivailData.playerCardsList.get(0).attack + fightRivailData.playerCardsList.get(0).defence}">
			<c:if test="${not fightRivailData.playerCardsList.get(0).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightRivailData.playerCardsList.get(0).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${fightRivailData.playerCardsList.get(0).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos3" maxHp="${fightRivailData.playerCardsList.get(2).attack + fightRivailData.playerCardsList.get(2).defence}">
			<c:if test="${not fightRivailData.playerCardsList.get(2).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightRivailData.playerCardsList.get(2).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${fightRivailData.playerCardsList.get(2).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos5" maxHp="${fightRivailData.playerCardsList.get(4).attack + fightRivailData.playerCardsList.get(4).defence}">
			<c:if test="${not fightRivailData.playerCardsList.get(4).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightRivailData.playerCardsList.get(4).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${fightRivailData.playerCardsList.get(4).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos6" maxHp="${fightRivailData.playerCardsList.get(5).attack + fightRivailData.playerCardsList.get(5).defence}">
			<c:if test="${not fightRivailData.playerCardsList.get(5).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightRivailData.playerCardsList.get(5).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${fightRivailData.playerCardsList.get(5).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
	</div>
	
	<div class="ani-height"></div>
	<div class="downPart">
		<c:choose>
	    <c:when test="${player.camp=='HUMAN' }">
	    <img class="cardHolder" style="bottom: -100%;"
			src="<p:localurl value='/resources/images/animation/human.png'/>" />
	    </c:when>
	     <c:when test="${player.camp=='TAITAN' }">
	    <img class="cardHolder" style="bottom: -100%;"
			src="<p:localurl value='/resources/images/animation/Protoss.png'/>" />
	    </c:when>
	    <c:otherwise>
	    <img class="cardHolder" style="bottom: -100%;"
			src="<p:localurl value='/resources/images/animation/zerg.png'/>" />
	    </c:otherwise>
	    </c:choose>
		<div class="infoHolder" style="bottom: 0px;background: url('<p:fullurl value='/resources/images/animation/infoHolder.png'/>') center center no-repeat;">
			<img class="attack-pic" src="<p:fullurl value='/resources/images/animation/totalAttack.png'/>" />
			<img id="tiaoguozhandou" class="skipfightbutton" src="<p:fullurl value='/resources/images/animation/tiaoguozhandou.png'/>" />
		</div>
		
		<div class ="attackPower attack-power">
			<img  src="<p:fullurl value='/resources/images/animation/totalAttack.png'/>" /><span id="attack"></span>
		</div>
		<div class="nameHolder rivaildata-name" style="background:url('<p:fullurl value='/resources/images/animation/nameHolder2.png'/>') center center no-repeat;">
			<span>${fightPlayerData.playerName}</span>
		</div>	
		<div class="friend-name">
		<c:if test="${not empty playerFriendName }">
		<span>${playerFriendName }</span>
		</c:if>
		</div>
		<div class="fighter pos4" maxHp="${fightPlayerData.playerCardsList.get(3).attack + fightPlayerData.playerCardsList.get(3).defence}">
			<c:if test="${not fightPlayerData.playerCardsList.get(3).isBlankCard}">
				<img src="<p:cardImg type="small" id="${fightPlayerData.playerCardsList.get(3).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightPlayerData.playerCardsList.get(3).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos2" maxHp="${fightPlayerData.playerCardsList.get(1).attack + fightPlayerData.playerCardsList.get(1).defence}">
			<c:if test="${not fightPlayerData.playerCardsList.get(1).isBlankCard}">
				<img src="<p:cardImg type="small" id="${fightPlayerData.playerCardsList.get(1).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightPlayerData.playerCardsList.get(1).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos1" maxHp="${fightPlayerData.playerCardsList.get(0).attack + fightPlayerData.playerCardsList.get(0).defence}">
			<c:if test="${not fightPlayerData.playerCardsList.get(0).isBlankCard}">
				<img src="<p:cardImg type="small" id="${fightPlayerData.playerCardsList.get(0).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightPlayerData.playerCardsList.get(0).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos3" maxHp="${fightPlayerData.playerCardsList.get(2).attack + fightPlayerData.playerCardsList.get(2).defence}">
			<c:if test="${not fightPlayerData.playerCardsList.get(2).isBlankCard}">
				<img src="<p:cardImg type="small" id="${fightPlayerData.playerCardsList.get(2).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightPlayerData.playerCardsList.get(2).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos5" maxHp="${fightPlayerData.playerCardsList.get(4).attack + fightPlayerData.playerCardsList.get(4).defence}">
			<c:if test="${not fightPlayerData.playerCardsList.get(4).isBlankCard}">
				<img src="<p:cardImg type="small" id="${fightPlayerData.playerCardsList.get(4).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightPlayerData.playerCardsList.get(4).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos6" maxHp="${fightPlayerData.playerCardsList.get(5).attack + fightPlayerData.playerCardsList.get(5).defence}">
			<c:if test="${not fightPlayerData.playerCardsList.get(5).isBlankCard}">
				<img src="<p:cardImg type="small" id="${fightPlayerData.playerCardsList.get(5).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes"/><span>${fightPlayerData.playerCardsList.get(5).attackTimes}</span>
				</div>
			</c:if>
		</div>
	</div>	
	<div class="attackInfoHolder">
		<div class="normal"></div>
		<div class="skill"></div>
	</div>
</div>


<div class="content finalRes">
	<div class="title-label-03">
		<span><spring:message code="label.cg040108.fightresult"></spring:message></span>
	</div>
	<c:if test="${fn:contains(fightResult.result, 'WIN')}">
		
		<div style="width:100%;margin:0 auto;text-align:center;"><img class="fight-result-pic" src='<p:localurl value="/resources/images/xuanchuan/cg040108win.png"/>'></div>
	</c:if>
	<c:if test="${fn:contains(fightResult.result, 'LOSE')}">
			
		<div style="width:100%;margin:0 auto;text-align:center;"><img class="fight-result-pic" src='<p:localurl value="/resources/images/xuanchuan/cg040108lose.png"/>'></div>
	</c:if>
	
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

							
							<div class="one-equipment">
								<c:if test="${ not empty playerInfo.playerCardVO.playerEquipmentId1 }" >
									<img alt="" src="<p:imgPath id='${playerInfo.playerCardVO.playerEquipmentId1}' folder='equipments' type='small' />"/>
								</c:if>
								<c:if test="${ empty playerInfo.playerCardVO.playerEquipmentId1 }" >
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</c:if>
							</div>
							<div class="one-equipment">
								<c:if test="${ not empty playerInfo.playerCardVO.playerEquipmentId2 }" >
									<img alt="" src="<p:imgPath id='${playerInfo.playerCardVO.playerEquipmentId2}' folder='equipments' type='small' />"/>
								</c:if>
								<c:if test="${ empty playerInfo.playerCardVO.playerEquipmentId2 }" >
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</c:if>								
							</div>							
							<div class="one-equipment">
								<c:if test="${ not empty playerInfo.playerCardVO.playerEquipmentId3 }" >
									<img alt="" src="<p:imgPath id='${playerInfo.playerCardVO.playerEquipmentId3}' folder='equipments' type='small' />"/>
								</c:if>
								<c:if test="${ empty playerInfo.playerCardVO.playerEquipmentId3 }" >
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</c:if>
							</div>
												
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="player-info-width">
					<div class="player-info-style">
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
							<span class="fc-title-02"><spring:message code="label.cg040108.attackpower"></spring:message>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<span><c:out value="${attackBefore}"></c:out></span>
							<span><img src="<p:localurl value="/resources/images/Arrow04.png"/>" /></span>
							<span><c:out value="${playerInfo.attackPower}"></c:out></span>
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
						<!--<div class="win-info-reward">
							<div>
								<img src="<p:localurl value="/resources/images/other/middle/CPOINT.png"/>" />
							</div>
							<div class="fc-title-02"><spring:message code="label.cg040108.cpoint"></spring:message></div>
							  <div><c:out value="${getorloseCpoint}"></c:out></div>
						</div>-->
						<div class="win-info-reward">
							<div class="win-equipment"></div>
						</div>
						<div class="win-info-reward">
							
							<c:if test="${ not empty treasureFragmentVO }" >
							<div>
								<treasure:treasureImage treasureFragmentVO="${treasureFragmentVO}" imageSize="middle"></treasure:treasureImage>
							</div>
							<div class="fc-title-02"><spring:message code="label.cg040108.treasure"></spring:message></div>
							<div>1</div>
							</c:if>
							<c:if test="${ empty treasureFragmentVO}" >
								<div class="win-equipment"></div>
							</c:if>
							
						</div>
						<div class="win-info-reward">
							
							<c:if test="${ not empty fightResult.equipmentId }" >
							<div>
								<img alt="" src="<p:imgPath id='${fightResult.equipmentId}' folder='equipments' type='middle' />"/>
							</div>
							<div class="fc-title-02"><spring:message code="label.cg040108.equipment"></spring:message></div>
							<div>1</div>
							</c:if>
							<c:if test="${ empty fightResult.equipmentId}" >
								<div class="win-equipment"></div>
							</c:if>

							
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
	</div>				
	</div>
	<div class="split-01"></div>
	<div class="title-label-04">
		<div>
			<span style="font-weight:bold;"><spring:message code="label.cg040108.recoverinfo"></spring:message></span>
		</div>
	</div>
	
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
						<form id = "recoverAttack" action="<p:fullurl value="/cg0701/cg070105/useDefenseConfirm"/>">
						<div class="bottomPart_line_info">
							
							<div class="consumer-list-function">
								<span class="fc-normal-05-l"><c:out value="${consumableItem.description}"></c:out></span>
							</div>
							<div>
								<div class="consumable-count-num"><span class="fc-title-01"><spring:message code="label.cg040108.count"></spring:message>：</span><c:out value="${consumableItem.count}"></c:out></div>
								<div class="bottomPart_line_info_button bottomPart_line_info_button_cg220107">
								<c:if test="${consumableItem.count > 0 }" >
									<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/shiyong-green.png"/>"  onclick="location.href='<p:fullurl value="/cg2201/cg220107/useconsumable/${consumableItem.id}/${rivalPlayerId}"/>${(not empty comeFromCG0101)?'?comeFromCG0101=true':'' }';event.preventDefault();" />
								</c:if>
								<c:if test="${consumableItem.count <= 0 }" >
									<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" onclick="location.href='<p:fullurl value="/cg0901/cg090103/index"/>';event.preventDefault();"/>
								</c:if>								
								</div>
							</div>
						</div>
						</form>
						<div class="clearfix"></div>
					</div>
				</div>
				
				
			</div>
		</div>	
	</div>
	</c:forEach>
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
	<div style="text-align: center;" class="panel-03">
			<!--  <img class="clickTone1" src='<p:localurl value="/resources/images/buttons/zaicijuezhan-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg2201/cg220107/attackRival/${rivalPlayerId}"/>';event.preventDefault();"/>-->
	</div>
	<div style="text-align: center;" class="panel-03">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/fanhui-blue-z.png"/>' onclick="location.href='<p:fullurl value="/cg2201/cg220107/index"/>';event.preventDefault();"/>
	</div>
	<div style="text-align: center;" class="panel-03">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/hecheng-green-z.png"/>'  onclick="location.href='<p:fullurl value="/cg0302/cg030201/index"/>';event.preventDefault();"/>
	</div>
	<div style="text-align: center;" class="panel-03">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/chouqukabao-blue-z.png"/>' onclick="location.href='<p:fullurl value="/cg0801/cg080102/tabchange/HERO"/>';event.preventDefault();"/>
	</div>
	<div style="text-align: center;" class="panel-03">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/zhuansheng-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0302/cg030207/index"/>';event.preventDefault();"/>
	</div>
	<div style="text-align: center;" class="panel-03">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zhuangbeixiangqian-blue-z.png"/>" onclick="location.href='<p:fullurl value="/cg0602/cg060201/index"/>';event.preventDefault();"/>
	</div>
</div>
