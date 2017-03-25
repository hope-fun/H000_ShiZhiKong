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
	href="<p:fullurl value="/resources/css/CG2501/CG2501.css?v=1"/>">
	
<script type="text/javascript">
	function getSingleChargeReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg2501/cg250103/getLoginReward' />",
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
					var st = "<p:fullurl value='/cg2501/cg250103/index'/>";
					kpyxTips(
							"<spring:message code='label.cg01010301.draw.success' />",
							function() {
								window.location.href = st
							});
				} else {
					kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
				}
			}
		}
		$.ajax(options);
	}
	
$(function(){	
		
		$(".eachReward2").each(function(){
			var a=$(this).attr("id");  
			var rewardCondition = a.substring(a.indexOf("_")+1); 
			var days="${days}";
			var getDays="${hasGetDays}";
			
			
	   if(getDays.indexOf(rewardCondition)>=0){
		  $(this).addClass("button_gray");
		  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yilingqu.png"/>'>");
	    }
	   else if(eval(rewardCondition)<eval(days)){
		  $(this).addClass("button_gray");
		  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yishixiao.PNG"/>'>");
	   }
		})
		
	});
</script>

<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg2501.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/yuandanbanner03.png"/>'>
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
							<span><spring:message code="label.cg250103.adv.time.content"></spring:message></span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<img 
							src='<p:localurl value="/resources/images/activity/huodongneirong.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body panelActivity-height " style="height: 50px;"></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content2" style="margin-top: -85px;">
							<span><spring:message
									code="label.cg250103.adv.content"></spring:message></span>
						</div>
					</div>
				</div>
                
			
				<div class="conference-buttons" style="padding-top: 50px;">
					<c:choose>
						<c:when test="${canGetReward eq 'true' }">

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
				<div class="panelA-body " style="height: 1000px;">
					<div class="reward-info1" id="rewardBody">
						<c:forEach items="${allRewards}" var="item1" varStatus="i">
							<div style="float:left;padding-left: 30px;">
						<img 
							src='<p:localurl value="/resources/images/activityreward/yuandan00${item1.preCondition}.PNG"/>'>
					</div>
					<div class="clearfix"></div>
							<div style="height:200px" >

								<div class="eachReward2" id="rewardCondition_${item1.preCondition}">

								<c:forEach items="${item1.playerGiftList}" var="item">
								<cards:2501_showAllRewards item="${item}"/>									
								</c:forEach>							
								</div>
								<div class="split-item-down2">
									<img style="width: 100%"
										src='<p:localurl value="/resources/images/line-split-down.png" />' />
								</div>
							</div>
							<div id="hasGet_${item1.preCondition}" class="alreadyGetAndLose"></div>
							<div id="lose_${item1.preCondition}" class="alreadyGetAndLose"></div>
							<div class="clearfix"></div>
						</c:forEach>
					</div>
				</div>
				<div class="panelA-footer"></div>				
			</div>
		</div>
	</div>


</div>

