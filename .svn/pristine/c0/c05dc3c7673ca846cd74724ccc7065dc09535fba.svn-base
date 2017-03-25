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
	function JumpToTask(index){
		var a=index;
		var st=null;
		if(a==1) st= "<p:fullurl value='"+ "/cg0201/cg020101/index2'/>";
		else if(a==2) st= "<p:fullurl value='"+ "/cg2201/cg220107/index'/>"
		else if(a==3) st= "<p:fullurl value='"+ "/cg0201/cg020101/index2'/>"
		else if(a==4) st= "<p:fullurl value='"+ "/cg0602/cg060201/index'/>"
		else if(a==5) st= "<p:fullurl value='"+ "/cg0401/cg040102/index/0'/>"
		else if(a==6) st= "<p:fullurl value='"+ "/cg1802/cg180201/index'/>"
		else st="<p:fullurl value='"+ "/cg0201/cg020101/index2'/>";
		window.location.href=st;
	}
	
</script>
	<script type="text/javascript">
	
	function getSevenDaysReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg2101/cg210102/getSevenDaysReward' />",
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
					var st = "<p:fullurl value='"+ "/cg2101/cg210102/index'/>";
					kpyxTips("<spring:message code='label.cg01010301.draw.success' />",function(){window.location.href =st});
				} else {					
						kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
				}
			}
		}
		$.ajax(options);
	}

	
	$(function(){	
		var getDays="${hasGetDays}";
		//alert(${marginDays});
		
		$(".day").each(function(){
			var a=$(this).attr("id");  
			var rewardCondition = a.substring(a.indexOf("_")+1); 
			var charIndex=getDays.indexOf(rewardCondition);
			
	   if(charIndex>=0){
		  $(this).addClass("button_gray");
		  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yilingqu.png"/>'>");
	    }
	   else{
		   if(rewardCondition<${marginDays}){
			   $(this).addClass("button_gray");
				  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yishixiao.PNG"/>'>");
		   }
		   
		   
		   
	   }
   
	 /* if(getDays.indexOf(rewardCondition)<0 && rewardCondition<=getDays.charAt(getDays.length - 1)){
		  $(this).addClass("button_gray");
		  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yishixiao.PNG"/>'>");
	   }
	  if(getDays==0 &&rewardCondition<${marginDays} ){
		  $(this).addClass("button_gray");
		  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yishixiao.PNG"/>'>");
	  }*/
		})
		
	});
</script>

<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg210101.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/huodongbanner02.png"/>'>
	</div>

	<div class="notice-info">

		<div class="borderPanel">
			<div class="phase-header">
				<span class="phrase-title"><spring:message
						code="label.cg210101.brief.intro"></spring:message></span>
			</div>
			<div class="panelA-header"></div>
			<div class="panelA-body panelA16-height"></div>
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
									code="label.cg210101.adv1.time.content"></spring:message></span>
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
									code="label.cg210102.adv.content.content"></spring:message></span>
						</div>
					</div>
				</div>

				<div class="conference-buttons">
					<c:choose>
						<c:when test="${marginDays >=1 && marginDays <=7 }">
							<img class="clickTone1"
								src='<p:localurl value="/resources/images/buttons/kaishirenwu-green-z.png"/>'
								onclick="JumpToTask(${marginDays})">
						</c:when>
						<c:otherwise>
							<img class="button_gray"
								src='<p:localurl value="/resources/images/buttons/kaishirenwu-green-z.png"/>'>
						</c:otherwise>
					</c:choose>

				</div>
				<div class="conference-buttons">
					<c:choose>
						<c:when test="${rewardAble eq 'true' }">

							<img class="clickTone1" onclick="getSevenDaysReward(this)"
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
				<div class="panelA-body " style="height: 1800px;">
					<div class="reward-gift-info12" id="rewardBody">
						<c:forEach items="${allRewards}" var="item1" varStatus="i">
							<div style="width: 100%;">
								<img
									src='<p:localurl value="/resources/images/activityreward/day${i.index+1}.png"/>'>
							</div>
							<div class="reward-gift-titleSevenDays">
								<span><spring:message
										code="label.cg210102.reward.state.content${item1.preCondition}"></spring:message></span>
							</div>
							<div class="clearfix"></div>
							<c:choose>
							<c:when test="${fn:contains(fourRewardsDay,i.index+1)}">   
							<div class="day eachlist4" id="rewardCondition_${item1.preCondition}">
								<c:forEach items="${item1.playerGiftList}" var="item">
									<cards:2101_showAllRewards item="${item}" width="25"/>
								</c:forEach>
							</div>
							</c:when>
							<c:otherwise>
							<div class="day eachlist3" id="rewardCondition_${item1.preCondition}">
								<c:forEach items="${item1.playerGiftList}" var="item">
									<cards:2101_showAllRewards item="${item}" width="30"/>
								</c:forEach>
							</div>																											
							</c:otherwise>
							
							
							</c:choose>
							<div class="split-item-down2">
								<img style="width: 100%"
									src='<p:localurl value="/resources/images/line-split-down.png" />' />
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

