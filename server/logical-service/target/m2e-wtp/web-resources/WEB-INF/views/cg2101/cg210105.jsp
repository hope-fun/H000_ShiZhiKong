<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2101/CG2101.css?v=1"/>">
	
<script type="text/javascript">
	function getSingleChargeReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg2101/cg210105/getSingleChargeReward' />",
			data : {
				id : $(obj).attr("id"),
				type : $(obj).attr("type")
			},
			dataType : 'json',
			showMask : true,
			success : function(json) {
				updatePlayerInfo();
				;
				if (json.succeed == "true") {
					if (json.isDiamond) {
						var data = "{\"number\":" + json.diamondCount
								+ ",\"consumableId\":系统赠送钻石" + "}";
						JSInterface.getDiamondFromSystem(data);
					}
					updatePlayerInfo();
					var st = "<p:fullurl value='"+ "/cg2101/cg210105/index'/>";
					//kpyxTips("<spring:message code='label.cg01010301.draw.success' />",function() {window.location.href = st});
					kpyxTips(document.getElementById("get-gift-reward-cg210105").innerHTML,function(){window.location.href =st});
				} 
				
				else if(json.fullcards=="true"){
					kpyxTips("<spring:message code='label.cg01010301.draw.faultreason.reachupper' />");
				}
				
				else {
					kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
				}
			}
		}
		$.ajax(options);
	}
</script>

<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg210101.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/huodongbanner05.png"/>'>
	</div>

	<div class="notice-info">

		<div class="borderPanel">
			<div class="phase-header">
				<span class="phrase-title"><spring:message
						code="label.cg210101.brief.intro"></spring:message></span>
			</div>
			<div class="panelA-header"></div>
			<div class="panelA-body panelActivityButton-height"></div>
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
							<!-- <span><spring:message code="label.cg210105.adv.time2"></spring:message></span>-->
							<span>1月28日 00:00 —2月16日 23:59 </span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<img 
							src='<p:localurl value="/resources/images/activity/huodongneirong.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body panelActivity-height "></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content2">
							<span><spring:message
									code="label.cg210105.adv.content"></spring:message></span>
						</div>
					</div>
				</div>

				<div class="conference-buttons">
					<img class="clickTone1"
						onclick="location.href='<p:fullurl value="/cg0901/cg090101/index"/>';event.preventDefault();"
						src='<p:localurl value="/resources/images/buttons/chongzhi-green-z.png"/>'>
				</div>
				<div class="conference-buttons">
					<c:choose>
						<c:when test="${isSingleCharge eq 'true' }">

							<img class="clickTone1" onclick="getSingleChargeReward(this)"
								src='<p:localurl value="/resources/images/buttons/lingqujiangli-blue-z.png"/>'>

						</c:when>
						<c:otherwise>
							<img class="button_gray"
								src='<p:localurl value="/resources/images/buttons/lingqujiangli-blue-z.png"/>'>
						</c:otherwise>
					</c:choose>
				</div>
				<c:if test="${getNum >0}">
					<div class="activityRewardNum">
						<img
							src='<p:localurl value="/resources/images/activity/${getNum}.PNG"/>'>
					</div>
				</c:if>
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
							<div style="float:left;padding-left: 30px;">
						<img 
							src='<p:localurl value="/resources/images/activityreward/danchong${item1.preCondition}.png"/>'>
					</div>
					<div class="clearfix"></div>
							<div style="height:200px" >

								<div class="eachlist2" id="rewardCondition_${item1.preCondition}">

								<c:forEach items="${item1.playerGiftList}" var="item">
								<cards:2101_showAllRewards item="${item}" width="35"/>									
								</c:forEach>							
								</div>
								<div class="split-item-down2">
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

<div class="get-reward" id="get-gift-reward-cg210105">
	<c:if test="${not empty chargeGift}">
		<div class="eachReward-title"><span><spring:message code='label.cg01010301.draw.success'/></span></div>
		<div class="eachReward-info">
			<c:forEach items="${chargeGift}" var="item">
				<div style="float:left;padding-left:8%; width:30%;" >
					<div class="reward-content" style="overflow:hidden;">
						<div class="reward-gift-pic">

							<c:if test="${item.type.name() eq 'EQUIPMENT' }">
								<img class="imgReward1"
									src='<p:localurl value="/resources/images/activityreward/${item.staticItemId}.png"/>'>
							</c:if>
							<c:if test="${item.type.name() eq 'CARD' }">
								<img class="imgReward1"
									src='<p:localurl value="/resources/images/activityreward/card_star${item.staticItemId}.PNG"/>'>
							</c:if>
							<c:if test="${item.type.name() eq 'CRYSTAL' }">
								<img class="imgReward1"
									src='<p:localurl value="/resources/images/other/large/SCOIN.png" />' />
							</c:if>
							<c:if test="${item.type.name() eq 'CONSUMABLE' }">
								<img class="imgReward1"
									src='<p:consumImg type="large" id="${item.staticItemId}" />' />
							</c:if>
						</div>
						<div style="float:left; padding-left: 20px;padding-top: 20px;"><span>X</span><span>${item.itemCount}</span></div>						
					</div>
					<div class="reward-gift-name">${item.name}</div>
				
				</div>
			</c:forEach>
		</div>
	</c:if>
	</div>
