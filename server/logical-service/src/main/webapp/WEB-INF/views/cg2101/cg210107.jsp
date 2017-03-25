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
$(function () {

$("#getReward").click(function(){
	var url = "<p:fullurl value='/cg2101/cg210107/getReward'/>/${canGetEquipment}/${canGetDiamond}";
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post(url,randomParms,function (message){
		if(null != message && true == message.result)
			{
	  			  kpyxTips(message.data.message,function(){
	  				  window.location.href="<p:fullurl value='/cg2101/cg210107/index'/>";
	  			  });
			}
		},("json"));
});
$("#cannotgetReward").click(function(){
	kpyxTips($("#cannotgetRewardMsg").val());
});
});


$(function(){
	var list = ${hasGetNum};     
	$(".eachlist1").each(function(){
		var a=$(this).attr("id");  
		var rewardCondition = a.substring(a.indexOf("_")+1);
		for(var i=0;i<list.length;i++){
			if(list[i]==rewardCondition){
				  $(this).addClass("button_gray");
				  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yilingqu.png"/>'>");
			}
		}
		
	});
	
});
</script>
<input type="hidden" id="cannotgetRewardMsg" value="<spring:message code='label.cg210107.cannotgetReward'/>"/>
<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg210101.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/huodongbanner07.png"/>'>
	</div>

	<div class="notice-info">

		<div class="borderPanel">
			<div class="phase-header">
				<span class="phrase-title"><spring:message
						code="label.cg210101.brief.intro"></spring:message></span>
			</div>
			<div class="panelA-header"></div>
			<div class="panelA-body" style="height:400px;'"></div>
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
							<span><spring:message code="label.cg210106.adv.time.content"></spring:message></span>
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
									code="label.cg210107.adv.reward"></spring:message></span>
						</div>
					</div>
				</div>

				<div class="conference-buttons" style="padding-top:30px;">
		<c:choose>
			<c:when test="${canGetReward }">
				<img class="clickTone1" id="getReward"
					src='<p:localurl value="/resources/images/buttons/lingqujiangli-blue-z.png"/>'>
			</c:when>
			<c:otherwise>
				<img class="button_gray clickTone1" id="cannotgetReward"
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
					<div class="reward-gift-info12" id="rewardBody">
						<c:forEach items="${allRewards}" var="item" varStatus="i">
							<div style="float:left;padding-left: 30px;padding-top:15px;">
						<img 
							src='<p:localurl value="/resources/images/activityreward/zhanli${i.index+1}.png"/>'>
					</div>
					<div class="clearfix"></div>
							<div style="height:180px" >

								<div class="eachlist1" id="reward_${i.index+1}">
									<cards:2101_showAllRewards item="${item}" width="50"/>															
								</div>																
								<div class="split-item-down2">
									<img style="width: 100%"
										src='<p:localurl value="/resources/images/line-split-down.png" />' />
								</div>
								<div id="hasGet_${i.index+1}" class="alreadyGetAndLose"></div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="panelA-footer"></div>				
			</div>
		</div>
	</div>


</div>


