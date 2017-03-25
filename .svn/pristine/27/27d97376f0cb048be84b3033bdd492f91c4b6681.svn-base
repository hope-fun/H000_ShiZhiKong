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
<script type="text/javascript">
	function getReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg2501/cg250104/getReward' />",
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
					var st = "<p:fullurl value='/cg2501/cg250104/index'/>";
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
	    if(rewardCondition==${rankNum}){
		  $(this).addClass("button_gray");
		  $("#pre_"+rewardCondition).addClass("button_gray");
		  $("#hasGet_"+rewardCondition).html("<img src='<p:localurl value="/resources/images/activityreward/yilingqu.png"/>'>");
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
			src='<p:localurl value="/resources/images/xuanchuan/yuandanbanner04.png"/>'>
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
									code="label.cg250102.adv.time.content"></spring:message></span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<img
							src='<p:localurl value="/resources/images/activity/huodongneirong.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body panelActivity-height "
							style="height: 140px;"></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content2"
							style="margin-top: -168px;">
							<span><spring:message code="label.cg250104.adv.content"></spring:message></span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<div style="float: left; margin-right: 5%">
							<img
								src='<p:localurl value="/resources/images/activity/wodexiaofei.PNG"/>'>
						</div>
						<div style="float: left;">
							<span>${pcdrVO.cousumeDiamondsCounts }<spring:message
									code="label.cg250104.zuanshi" /></span>
						</div>
					</div>
					<div class="conference-buttons" style="padding-top: 40px;">
						<c:choose>
							<c:when test="${canGetReward}">

								<img class="clickTone1" onclick="getReward(this)"
									src='<p:localurl value="/resources/images/buttons/lingqujiangli-blue-z.png"/>'>

							</c:when>
							<c:otherwise>
								<img class="button_gray"
									src='<p:localurl value="/resources/images/buttons/lingqujiangli-blue-z.png"/>'>
							</c:otherwise>
						</c:choose>
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
					<div class="panelA-body " style="height: 1400px;">
						<div class="reward-info1" id="rewardBody">
							<c:forEach items="${allRewards}" var="item1" varStatus="i">
							
								<div id="pre_${item1.preCondition}" >
								<div style="float: left; padding-left: 1px; height: 210px; margin-top: 50px;">
									<div style="float: left;">
										<img
											src='<p:localurl value="/resources/images/activityreward/${item1.preCondition}.png"/>'>
									</div>
									<div style="float: left;text-align: left;">
										<div style="">
											<img
												src='<p:localurl value="/resources/images/activityreward/di${item1.preCondition}.PNG"/>'>
										</div>
										<div style="height: 40px;padding-left: 6px;margin-top: -5px;">
										<span>${item1.playerName }</span>
										</div>
										<div><img
												src='<p:localurl value="/resources/images/activityreward/leijixiaofei.PNG"/>'></div>
										<div style="padding-left: 6px;margin-top: -5px;"><span>${item1.counts }<spring:message code="label.cg250104.zuanshi"/></span></div>
									</div>
								</div>
								<div class="eachReward2"
									id="rewardCondition_${item1.preCondition}"
									style="height: 210px; float: left; padding-left: 30px; margin-top: 50px;">

									<c:forEach items="${item1.playerGiftList}" var="item">
										<cards:250104_showAllRewards item="${item}" />
									</c:forEach>
			
								</div>
								<div class="split-item-down2">
									<img style="width: 100%"
										src='<p:localurl value="/resources/images/line-split-down.png" />' />
								</div>
								</div>
								<div id="hasGet_${item1.preCondition}" class="alreadyGetAndLose"></div>
							</c:forEach>
						</div>
					</div>
					<div class="panelA-footer"></div>
				</div>
			</div>
		</div>
	</div>
</div>
