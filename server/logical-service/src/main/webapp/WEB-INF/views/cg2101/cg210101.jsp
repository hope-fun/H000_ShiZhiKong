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
	
	$(function(){
		var a=${getNum};
		if(a==0){
			$("#rewardBody").addClass("button_gray");
			 $("#hasGet").html("<img src='<p:localurl value="/resources/images/activityreward/yilingqu.png"/>'>")
		}
		
	});
	

	
	
	
	
	
	function getFirstChargeReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg2101/cg210101/getFirstChargeReward' />",
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
					var st = "<p:fullurl value='"+ "/cg2101/cg210101/index'/>";
					kpyxTips("<spring:message code='label.cg01010301.draw.success' />",function(){window.location.href =st});
				} else {					
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
			src='<p:localurl value="/resources/images/xuanchuan/huodongbanner01.png"/>'>
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
									code="label.cg210101.adv1.content.content"></spring:message></span>
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
						<c:when test="${isFirstCharge eq 'true' }">

							<img class="clickTone1" onclick="getFirstChargeReward(this)"
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
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA16-height">
				<div class="eachReward-title">
					<img alt=""
						src='<p:localurl value="/resources/images/activityreward/zhizunxingjilibao.png"/>'>
				</div>
				<div class="reward-info1" id="rewardBody">
					<div class="eachlist4">
						<c:forEach items="${rewardList}" begin="0" end="3" var="item">
							<cards:2101_showAllRewards item="${item}" width="25" />
						</c:forEach>
					</div>
					<div class="eachlist3">
						<c:forEach items="${rewardList}" begin="4" end="6" var="item1">
							<cards:2101_showAllRewards item="${item1}" width="30" />
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="panelA-footer"></div>
			<div id="hasGet" class="alreadyGet1"></div>
		</div>
	</div>
<div style="top: 1700px;position: absolute;overflow: hidden;height: 150px;width: 720px;"></div>
</div>

