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
	
	function getUpgradeReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg2101/cg210103/getUpgradeReward' />",
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
					var st = "<p:fullurl value='"+ "/cg2101/cg210103/index'/>";
					kpyxTips("<spring:message code='label.cg01010301.draw.success' />",function(){window.location.href =st});
				} else {					
						kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
				}
			}
		}
		$.ajax(options);
	}
$(function(){	
	$(".day1").each(function(){
		var a=$(this).attr("id");  
		var rewardCondition = a.substring(a.indexOf("_")+1); 
		if(rewardCondition==20 || rewardCondition==80 || rewardCondition==100 || rewardCondition==150) $(this).removeClass("eachlist2").addClass("eachlistTotal1");
    if(rewardCondition<=${getRewardLevel}){
	  $(this).addClass("button_gray");
	  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yilingqu.png"/>'>");
    }
	})
	
});
		
	

</script>

<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg210101.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/huodongbanner09.png"/>'>
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
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/activity/huodongshijian.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body "></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content">
							<span><spring:message code="label.cg210101.adv1.time.content"></spring:message></span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/activity/huodongneirong.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body panelActivity-height "></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content2">
							<span><spring:message
									code="label.cg210103.adv.content.content"></spring:message></span>
						</div>
					</div>
				</div>

				<div class="conference-buttons">
					<img class="clickTone1"
						onclick="location.href='<p:fullurl value="/cg0201/cg020101/index2"/>';event.preventDefault();"
						src='<p:localurl value="/resources/images/buttons/shengji-green-z.png"/>'>
				</div>
				<div class="conference-buttons">
					<c:choose>
						<c:when test="${isReachedLevel eq 'true' }">

							<img class="clickTone1" onclick="getUpgradeReward(this)"
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
				<span style="padding-left: 30px; font-size: 18pt;"><spring:message
						code="label.cg210103.adv.reward"></spring:message></span>
			</div>
		</div>
		<div style="width: 100%;">
			<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body " style="height: 1600px;">
					<div class="reward-info1" id="rewardBody">
						<c:forEach items="${allRewards}" var="item1" varStatus="i">
							<div style="float:left;padding-left: 30px;">
						<img 
							src='<p:localurl value="/resources/images/activityreward/juese${item1.preCondition}.png"/>'>
					</div>
					<div class="clearfix"></div>
							<div style="height:180px" >

								<div class="day1 eachlist2" id="rewardCondition_${item1.preCondition}">

								<c:forEach items="${item1.activityRewards}" var="item">
									<cards:2101_showAllRewardsfew item="${item}" distance="37"/>									
								</c:forEach>										
								</div>
									<div class="split-item-down2">
								<img style="width: 100%"
									src='<p:localurl value="/resources/images/line-split-down.png" />' />
							</div>
								<div id="hasGet_${item1.preCondition}" class="alreadyGetAndLose"></div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="panelA-footer"></div>				
			</div>
		</div>
	</div>


</div>


