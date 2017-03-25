<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2501/CG2501.css?v=1"/>">
<script>
function openDReward(obj){
	var cardsCount = eval("${player.cardsCount}");
	var cardsMax = eval("${player.cardsMax})";
		//金蛋，银蛋元蛋 内均有1张卡牌
	if(cardsCount +1 > cardsMax){
		kpyxTips(document.getElementById("cardsmax-message-cg2501").innerHTML);
	}else{
		var self = obj;
		self.parentNode.submit();
	}
}

function jumpToItensify(){
	window.location.href="<p:fullurl value='/cg0302/cg030201/index'/>";
}
function jumpToEvo(){
	window.location.href="<p:fullurl value='/cg0302/cg030207/index'/>";
}
</script>
<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg2501.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/yuandanbanner01.png"/>'>
	</div>

	<div class="notice-info">

		<div class="borderPanel">
			<div class="phase-header">
				<span class="phrase-title"><spring:message
						code="label.cg210101.brief.intro"></spring:message></span>
			</div>
			<div class="panelA-header"></div>
			<div class="panelA-body panelActivityButton-height"
				style="height: 550px;"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="cg210101-info02">
					<div class="cg210101-info-title">
						<img
							src='<p:localurl value="/resources/images/activity/huodongshijian.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body "></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content">
							<span><spring:message
									code="label.cg250101.adv.time.content"></spring:message></span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<img
							src='<p:localurl value="/resources/images/activity/huodongneirong.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body panelActivity-height "
							style="height: 10px;"></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content2" style="margin-top: -50px;">
							<span><spring:message code="label.cg250101.adv.content"></spring:message></span>
						</div>
					</div>
				</div>

				<div class="conference-buttons" style="padding-top: 40px;">
					<div style="width: 30%; float: left; right: 3%; margin-left: 3%;">
						<img alt=""
							src="<p:localurl value='/resources/images/consumable/large/YIND.png'/>"
							style="width: 70%">
						<div>
							<span class="button-tab"><spring:message
									code="label.cg250101.YIND" />x${YINDnum }</span>
						</div>
						<c:if test="${canOpenYIND }">
							<form action="<p:fullurl value="/cg2501/cg250101/getReward" />">
								<input type="hidden" name="consumableId" value="YIND" /> 
								<img
									alt=""
									src="<p:localurl value='/resources/images/activity/zadan.PNG'/>"
									style="width: 70%" class="clickTone1 img-use img-use02"
									onclick="openDReward(this)"/>
							</form>
						</c:if>
						<c:if test="${!canOpenYIND }">
							<img alt=""
								src="<p:localurl value='/resources/images/activity/zadan.PNG'/>"
								style="width: 70%" class="button_gray">
						</c:if>
						<div>
							<span class="button-tab"><spring:message
									code="label.cg250101.zaYIND" /></span>
						</div>
					</div>
					<div style="width: 30%; float: left; right: 3%;">
						<img alt=""
							src="<p:localurl value='/resources/images/consumable/large/JD.png'/>"
							style="width: 70%">
						<div>
							<span class="button-tab"><spring:message
									code="label.cg250101.JD" />x${JDnum }</span>
						</div>
						<c:if test="${canOpenJD }">
						<form action="<p:fullurl value="/cg2501/cg250101/getReward" />">
								<input type="hidden" name="consumableId" value="JD" /> 
							<img alt=""
								src="<p:localurl value='/resources/images/activity/zadan.PNG'/>"
								style="width: 70%" class="clickTone1 img-use img-use02"
									onclick="openDReward(this)"/>
						</form>
						</c:if>
						<c:if test="${!canOpenJD }">
							<img alt=""
								src="<p:localurl value='/resources/images/activity/zadan.PNG'/>"
								style="width: 70%" class="button_gray">
						</c:if>

						<div>
							<span class="button-tab"><spring:message
									code="label.cg250101.zaJD" /></span>
						</div>
					</div>
					<div style="width: 30%; float: left; right: 3%;">
						<img alt=""
							src="<p:localurl value='/resources/images/consumable/large/YUAND.png'/>"
							style="width: 70%">
						<div>
							<span class="button-tab"><spring:message
									code="label.cg250101.YUAND" />x${YUANDnum }</span>
						</div>
						<c:if test="${canOpenYUAND }">
						<form action="<p:fullurl value="/cg2501/cg250101/getReward" />">
								<input type="hidden" name="consumableId" value="YUAND" /> 
							<img alt=""
								src="<p:localurl value='/resources/images/activity/zadan.PNG'/>"
								style="width: 70%" class="clickTone1 img-use img-use02"
									onclick="openDReward(this)"/>
						</form>
						</c:if>
						<c:if test="${!canOpenYUAND }">
							<img alt=""
								src="<p:localurl value='/resources/images/activity/zadan.PNG'/>"
								style="width: 70%" class="button_gray">
						</c:if>
						<div>
							<span class="button-tab"><spring:message
									code="label.cg250101.zaYUAND" /></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header">
					<span class="phrase-title"><spring:message
							code="label.cg210103.adv.reward"></spring:message></span>
				</div>
			</div>
			<div style="width: 100%;">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body " style="height: 1500px;">
						<div class="reward-info1" id="rewardBody">
							<c:forEach items="${allRewards}" var="item1" varStatus="i">
								<div style="float: left; padding-left: 30px;">
									<img
										src='<p:localurl value="/resources/images/activityreward/zadan${item1.preCondition}.png"/>'>
								</div>
								<div style="float: left;margin-top: 30px;"><span style="font-size: 20pt;"><spring:message
											code="label.cg250101.rate"></spring:message></span></div>
								<div class="clearfix"></div>
								<div style="height: 400px">



									<div class="eachlist4">
										<c:forEach items="${item1.playerGiftList}" begin="0" end="3"
											var="item2">
											<cards:2101_showAllRewards item="${item2}" width="25" />
										</c:forEach>
									</div>
									<div class="eachlist3">
										<c:forEach items="${item1.playerGiftList}" begin="4" end="6"
											var="item3">
											<cards:2101_showAllRewards item="${item3}" width="30" />
										</c:forEach>
									</div>

									<div class="split-item-down2" style="margin-top: 5px;">
										<img style="width: 100%"
											src='<p:localurl value="/resources/images/line-split-down.png" />' />
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="panelA-footer"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="use-gift-reward" id="use-gift-reward-cg250101" style="display: none;">
	<c:if test="${not empty rewardNewPlayerGiftList}">
		<div class="reward-gift-title">
			<span><spring:message
					code='label.cg250101.kaidan' /></span>
		</div>
		<div class="reward-gift-info">
			<c:forEach items="${rewardNewPlayerGiftList}" var="item">
				<div style="text-align: center;">
					<div class="reward-content" style="overflow: hidden;">
						<div class="reward-gift-pic" style="float:left;padding-left: 30%">
							<c:if test="${item.rewardType eq 'CONSUMABLE' }">
								<img 
									src='<p:consumImg type="large" id="${item.rewardId}" />' style="width: 50%"/>
							</c:if>
							<c:if test="${item.rewardType eq 'TICKET' }">
								<img 
									src='<p:consumImg type="large" id="${item.rewardId}-1" />' style="width: 50%"/>
							</c:if>
							<c:if test="${item.rewardType eq 'CARD' }">
								<img 
									src='<p:cardImg type="small" id="${item.rewardId}"></p:cardImg>' style="width: 35%"/>
							</c:if>
						</div>
						<div style="float: left;margin-top: 40px;">
							<span>X</span><span>${item.rewardCount}</span>
						</div>
					</div>
					<div class="reward-gift-name" style="text-align: center;">${item.rewardName}</div>

				</div>
			</c:forEach>
		</div>
	</c:if>
</div>
<div id="cardsmax-message-cg2501" style="display:none;">
	<spring:message code='label.cg0801.cardcountsupten'/></br>
	
	<spring:message code='label.cg0801.cardsurplus'/>
	<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
	<span><spring:message code='label.CG020000.or'></spring:message></span>
	<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>
</div>
<c:if test="${not empty useResultMsg}">
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
											if ("${backUrl}" !== null && "${backUrl}" !== "") {
												var options = {
														suppressTitle : true,
														cancelOnly : true,
														message : "${useResultMsg}",
														doneCallback : function() {
															window.location.href = "${backUrl}"
														}
												              };
												$(document.body).popup(options);
											} else {								
														if ($(".reward-gift-title").length > 0)
														{
																
															kpyxTips(document.getElementById("use-gift-reward-cg250101").innerHTML);
						
														} else {
															kpyxTips("${useResultMsg}"+ "${rewardDescription}");
														}
													}
			});
		
		
	</script>
</c:if>