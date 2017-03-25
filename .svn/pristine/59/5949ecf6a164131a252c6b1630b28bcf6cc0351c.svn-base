<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0401/cg0401.css?v=1"/>" />
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	$(document).ready(function() {
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			JSInterface.showUpandDown("NO");	
			$animation.fightAnimation(".contentFight",${fightProcess},"<p:fullurl value='/resources/images/animation'/>","WIN");
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
			JSInterface.clickTone(125);
			
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
	
	$("#defence").html(generateNumImg(35,'<p:fullurl value='/resources/images/animation/'/>'))
	$("#attack").html(generateNumImg(${mainCard.attack},'<p:fullurl value='/resources/images/animation/'/>'))
});  

</script>
<div class="contentFight" >	
	<img class="VS" src="<p:localurl value="/resources/images/animation/win.png"/>" />
	<div class="upPart">
		<img class="cardHolder"
			style="-webkit-transform: rotate(180deg); top: -100%;"
			src="<p:fullurl value='/resources/images/animation/human.png'/>" />
		<div class="infoHolder" style="display:none;background: url('<p:fullurl value='/resources/images/animation/infoHolder.png'/>') center center no-repeat;">
			<img class="total_defence" src="<p:fullurl value='/resources/images/animation/totalDefence.png'/>" />${fightRivailData.totalDefensePower}
		</div>
		<div class ="defensePower defensePower_cg200124">
			<img src="<p:fullurl value='/resources/images/animation/totalDefence.png'/>" /><span id="defence"></span>
		</div>
		<div class="nameHolder name_holder_cg200124" style="background:url('<p:fullurl value='/resources/images/animation/nameHolder.png'/>') center center no-repeat;">
			<span>&emsp;<spring:message code="label.cg200122.player.name" /></span>
		</div>
		<div class="fighter pos4" maxHp="${defencePlayerCardList.get(3).attack + defencePlayerCardList.get(3).defence}">
			<c:if test="${not defencePlayerCardList.get(3).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${defencePlayerCardList.get(3).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${defencePlayerCardList.get(3).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos2" maxHp="${defencePlayerCardList.get(1).attack + defencePlayerCardList.get(1).defence}">
			<c:if test="${not defencePlayerCardList.get(1).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${defencePlayerCardList.get(1).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${defencePlayerCardList.get(1).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos1" maxHp="${defencePlayerCardList.get(0).attack + defencePlayerCardList.get(0).defence}">
			<c:if test="${not defencePlayerCardList.get(0).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${defencePlayerCardList.get(0).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${defencePlayerCardList.get(0).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos3" maxHp="${defencePlayerCardList.get(2).attack + defencePlayerCardList.get(2).defence}">
			<c:if test="${not defencePlayerCardList.get(2).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${defencePlayerCardList.get(2).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${defencePlayerCardList.get(2).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos5" maxHp="${defencePlayerCardList.get(4).attack + defencePlayerCardList.get(4).defence}">
			<c:if test="${not defencePlayerCardList.get(4).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${defencePlayerCardList.get(4).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${defencePlayerCardList.get(4).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
		<div class="fighter pos6" maxHp="${defencePlayerCardList.get(5).attack + defencePlayerCardList.get(5).defence}">
			<c:if test="${not defencePlayerCardList.get(5).isBlankCard}">
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${defencePlayerCardList.get(5).attackTimes}</span>
				</div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<img src="<p:cardImg type="small" id="${defencePlayerCardList.get(5).cardId}"></p:cardImg>" style="color: white;" />
			</c:if>
		</div>
	</div>
	<div class="height_cg200124"></div>
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
			<img style="display:none;margin-top:40px;margin-left:50px;" src="<p:fullurl value='/resources/images/animation/totalAttack.png'/>" />
			<img id="tiaoguozhandou" style="display:block;margin-top:40px;margin-right:50px;float: right;" src="<p:fullurl value='/resources/images/animation/tiaoguozhandou.png'/>" />
		</div>
		
		<div class ="attackPower"style="right: -248px;position: absolute;font-size: 30pt">
			<img  src="<p:fullurl value='/resources/images/animation/totalAttack.png'/>" /><span id="attack"></span>
		</div>
		<div class="nameHolder" style="font-size: 22pt;left: -248px;background:url('<p:fullurl value='/resources/images/animation/nameHolder2.png'/>') center center no-repeat;">
			<span>${player.name}</span>
		</div>	
		<div class="fighter pos4" maxHp="${attackPlayerCardsList.get(3).attack + attackPlayerCardsList.get(3).defence}">
			<c:if test="${not attackPlayerCardsList.get(3).isBlankCard}">
				<img src="<p:cardImg type="small" id="${attackPlayerCardsList.get(3).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${attackPlayerCardsList.get(3).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos2" maxHp="${attackPlayerCardsList.get(1).attack + attackPlayerCardsList.get(1).defence}">
			<c:if test="${not attackPlayerCardsList.get(1).isBlankCard}">
				<img src="<p:cardImg type="small" id="${attackPlayerCardsList.get(1).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${attackPlayerCardsList.get(1).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos1" maxHp="${attackPlayerCardsList.get(0).attack + attackPlayerCardsList.get(0).defence}">
			<c:if test="${not attackPlayerCardsList.get(0).isBlankCard}">
				<img src="<p:cardImg type="small" id="${attackPlayerCardsList.get(0).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${attackPlayerCardsList.get(0).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos3" maxHp="${attackPlayerCardsList.get(2).attack + attackPlayerCardsList.get(2).defence}">
			<c:if test="${not attackPlayerCardsList.get(2).isBlankCard}">
				<img src="<p:cardImg type="small" id="${attackPlayerCardsList.get(2).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${attackPlayerCardsList.get(2).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos5" maxHp="${attackPlayerCardsList.get(4).attack + attackPlayerCardsList.get(4).defence}">
			<c:if test="${not attackPlayerCardsList.get(4).isBlankCard}">
				<img src="<p:cardImg type="small" id="${attackPlayerCardsList.get(4).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${attackPlayerCardsList.get(4).attackTimes}</span>
				</div>
			</c:if>
		</div>
		<div class="fighter pos6" maxHp="${attackPlayerCardsList.get(5).attack + attackPlayerCardsList.get(5).defence}">
			<c:if test="${not attackPlayerCardsList.get(5).isBlankCard}">
				<img src="<p:cardImg type="small" id="${attackPlayerCardsList.get(5).cardId}"></p:cardImg>" style="color: white;" />
				<div class="processing-bar-blue fc-normal-01-m" processbar="100" noNum="true"></div>
				<div style="display:none;">
					<spring:message code="lable.cg040108.surplusattacktimes" /><span>${attackPlayerCardsList.get(5).attackTimes}</span>
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
	<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			//音效    ma_li  PVP成功
			JSInterface.clickTone(125);
		}, false);
	});
	
		
	</script>
	<div class="center-site">
		<div class="fc-normal-02-m commonPadding-top">
			<span><spring:message code="label.cg2001.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="fc-normal-05-m commonPading01 commonPadding-botton">
			<span><spring:message
					code="label.cg2001.newcommer.challenge.step9"></spring:message></span>
		</div>
	</div>
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200122.title"></spring:message></span>
	</div>
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img-new">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>

					<div class="npc-message-cg2001-new">
						<span><spring:message code="label.cg200124.npc.info"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="split-01"></div>
	<div class="advertise-activity">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/cg040108win.png"/>'>
	</div>
	<div class="commonPading01" style="width: 100%;; margin: 0 auto">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA15-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="center-site ">
					<div class="power-info03">
						<div class="fc-normal-05-l">
							<span><spring:message code="label.cg200124.combat.gains"></spring:message></span>
							<span class="fc-content-02">1</span> <span class="fc-normal-02-l">
								<spring:message code="label.cg200124.fight.success"></spring:message>
							</span> <span class="fc-content-02">0</span> <span
								class="fc-normal-04-l"> <spring:message
									code="label.cg200124.fight.fail"></spring:message>
							</span>
						</div>
					</div>
					<div class="power-info03">
						<div class="center" style="width: 100%;">
							<div class="fc-content-02" style="float: left;">
								<span class="fc-normal-05-l"> <spring:message
										code="label.cg200107.attack"></spring:message>
								</span> <span>${attackPower}</span>
							</div>
							<div class="arrow-style">
								<img src='<p:localurl value="/resources/images/Arrow04.png"/>'>
							</div>
							<div class="fc-content-02" style="float: left;">
								<span>${player.attackPower}</span>
							</div>
						</div>
					</div>

					<div class="power-info03 sliver-info-width">
						<div class="center" style="width: 100%;">
							<div class="fc-content-02" style="float: left;">
								<span class="fc-normal-05-l"> <spring:message
										code="label.cg200124.silver"></spring:message>
								</span> <span>${silverCoin}</span>
							</div>
							<div class="arrow-style">
								<img src='<p:localurl value="/resources/images/Arrow04.png"/>'>
							</div>
							<div class="fc-content-02" style="float: left;">
								<span>${player.silverCoin}</span>
							</div>
						</div>
					</div>
				</div>
				<div class="center-site commonPadding-top06 menu-medium">
					<span><spring:message code="label.cg200124.reward"></spring:message></span>
				</div>
				<div class="split-item-down"></div>
				<div class="conquest-point02 system-content-bold fc-content-03">
					<div>
						<div>
							<img
								src="<p:localurl value="/resources/images/other/middle/CPOINT.png"/>" />
						</div>
						<div class="fc-content-03 commonPadding-top">
							<span><spring:message code="lablel.raidtype.CPOINT"></spring:message></span>
						</div>
						<div class="fc-normal-05-m ">
							<span>${conquestPoints}</span>
						</div>
					</div>
					<div>
						<div>
							<img
								src="<p:localurl value="/resources/images/other/middle/SCOIN.png"/>" />
						</div>
						<div class="fc-content-03 commonPadding-top">
							<span><spring:message code="label.cg200124.crystal"></spring:message></span>
						</div>
						<div class="fc-normal-05-m ">
							<span>${rewardSilverCoin}</span>
						</div>
					</div>
					<div>
						<div>
							<treasure:treasureImage treasureFragmentVO="${treasureFragment}"
								imageSize="middle"></treasure:treasureImage>
						</div>
						<div class="fc-content-03 commonPadding-top">
							<span><spring:message code="label.cg0602.yuansu"></spring:message></span>
						</div>
						<div class="fc-normal-05-m">
							<span>1</span>
						</div>
					</div>
					<div>
						<div></div>
						<div class="fc-normal-05-m commonPadding-top"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200125/index/${treasureFragment.id}"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>'>
	</div>
	
	<div class="conference-buttons commonPadding-top03">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200131/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/tiaoguoxinshoujiaocheng-blue-z.png"/>'>
	</div>
	
	<div class="center-site">
		<div class="fc-normal-08-m commonPading01">
			<span><spring:message code="label.cg200105.notice2"></spring:message></span>
		</div>
	</div>
	
</div>