<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0401/cg0401.css?v=1"/>" />
<script
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<c:if test="${not empty doNotPlay }">
	<script>
	playCss3AnimationFlag = false;
</script>
</c:if>

<script>
	$(document).ready(function() {
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			backUrl='<p:fullurl value="/cg0101/cg010104/index"/>';
			$animation.fightAnimation(".contentFight",${fightProcess},"<p:localurl value='/resources/images/animation'/>","${fightResult}");
		}, false);
	});
	$(function (){
		$("#tiaoguozhandou").click(function(){
			//清除动画效果
			playCss3AnimationFlag= false;
			 $(".contentFight").css("display","none");
			 $(".finalRes").css("display","block");
			//200代表战斗背景音乐停止放映 
			JSInterface.clickTone(200); 
			if("${fightResult}" == "WIN"){
				//音效    ma_li   胜利    
				JSInterface.clickTone(125);
			}else{
				//音效    ma_li   失败   
				JSInterface.clickTone(112);
			}
			location.href='<p:fullurl value="/cg0101/cg010104/index"/>';
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
	
	$("#defence").html(generateNumImg(${fightRivailData.totalDefensePower},'<p:localurl value='/resources/images/animation/'/>'))
	$("#attack").html(generateNumImg(${fightPlayerData.totalAttackPower},'<p:localurl value='/resources/images/animation/'/>'))
});  

</script>
<div class="contentFight" >

	<c:if test="${fn:contains(fightResult, 'WIN')}">
		<img class="VS" src="<p:localurl value="/resources/images/animation/win.png"/>" />
	</c:if>
	<c:if test="${fn:contains(fightResult, 'LOSE')}">
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
		<div class="infoHolder" style="display:none;background: url('<p:localurl value='/resources/images/animation/infoHolder.png'/>') center center no-repeat;">
			<img class="defence-num" src="<p:localurl value='/resources/images/animation/totalDefence.png'/>" />${fightRivailData.totalDefensePower}
		</div>
		<div class ="defensePower defense-power">
			<img src="<p:localurl value='/resources/images/animation/totalDefence.png'/>" /><span id="defence"></span>
		</div>
		<div class="nameHolder rivaildata-name" style="background:url('<p:localurl value='/resources/images/animation/nameHolder.png'/>') center center no-repeat;">
			<span>${fightRivailData.playerName}</span>
		</div>
		<div class="friend-name-up">
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
		<div class="infoHolder" style="bottom: 0px;background: url('<p:localurl value='/resources/images/animation/infoHolder.png'/>') center center no-repeat;">
			<img class="attack-pic" src="<p:localurl value='/resources/images/animation/totalAttack.png'/>" />
			<img id="tiaoguozhandou" style="display:block;margin-top:10px;margin-right:50px;float: right;" src="<p:localurl value='/resources/images/animation/tiaoguozhandou.png'/>" />
		</div>
		
		<div class ="attackPower attack-power">
			<img  src="<p:localurl value='/resources/images/animation/totalAttack.png'/>" /><span id="attack"></span>
		</div>
		<div class="nameHolder rivaildata-name" style="background:url('<p:localurl value='/resources/images/animation/nameHolder2.png'/>') center center no-repeat;">
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
<img style="display:none;" src="<p:localurl value="/resources/images/buttons/huifangjieshu-green-z.png"/>" class="clickTone1" onclick="location.href='<p:fullurl value="/cg0101/cg010104/index"/>';event.preventDefault();"/>
</div>