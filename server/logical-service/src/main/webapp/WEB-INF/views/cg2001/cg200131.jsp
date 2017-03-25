<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
	function goToNext() {
		var newCourseStartTime = "${playerGuideStartTime}";
		var newCourseEndTime = "${playerGuideEndTime}";
		var costTime = newCourseEndTime - newCourseStartTime;
		var data ="{\"playerGCTName\":\"新手引导耗时" +"\",\"newPlayerCostTime\":" +costTime+"}";	
		JSInterface.finishNewCourseCostTime(data);
		location.href = "<p:fullurl value='/cg2001/cg200132/index'/>";
	}
	$(document).ready(function(){		
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
			JSInterface.showUpandDown("NO");		
		}, false);
	});
</script>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<div class="content">

	<div class="center-site">

		<div class="fc-normal-02-m commonPadding-top">
			<span><spring:message code="label.cg2001.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="fc-normal-05-m commonPading01 commonPadding-botton">
			<span><spring:message
					code="label.cg2001.newcommer.challenge.step12"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200131.title"></spring:message></span>
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
					<div class="npc-message-cg200102-new">
						<span><spring:message code="label.cg200131.npc.info"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="split-01"></div>

	<div class="newcommer-reward">
		<div class="center-site fc-content-02">
			<span><spring:message code="label.cg200131.newcommer.reward"></spring:message></span><span
				class="red-font"><spring:message
					code="label.cg200101.newcommer.reward.value"></spring:message></span><span><spring:message
					code="label.cg200131.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="newcommer-reward-info clearfix commonPadding-top04">
			<div>
				<div>
					<img
						src='<p:localurl value="/resources/images/icons/zhaomudianshu.png"/>'>
				</div>
				<div class="fc-normal-02-l recruit-width">
					<span><spring:message
							code="label.cg200131.newcommer.reward.recruit"></spring:message></span>
					<span class="fc-content-02">${friendPoint}</span><span
						class="fc-content-02"><spring:message
							code="label.cg200131.point"></spring:message></span>
				</div>
			</div>

			<div>
				<div>
					<img
						src="<p:consumImg type="small" id="${cardTicketPicId}"></p:consumImg>" />
				</div>
				<div class="fc-normal-02-l recruit-width">
					<span><spring:message
							code="label.cg200131.newcommer.reward.ticketcount"></spring:message></span>
					<span class="fc-content-02">${cardTicketCount}</span>
				</div>
			</div>

			<div>
				<div>
					<img
						src="<p:consumImg type="small" id="${finalEnergyConsumable.id}"></p:consumImg>" />
				</div>
				<div class="fc-normal-02-l recruit-width">
					<span><spring:message
							code="label.cg200131.newcommer.reward.energy"></spring:message></span> <span
						class="fc-content-02">${finalEnergyCount}</span>
				</div>
			</div>

			<div>
				<div>
					<img
						src="<p:consumImg type="small" id="${fightEnergyConsumable.id}"></p:consumImg>" />
				</div>
				<div class="fc-normal-02-l recruit-width">
					<span><spring:message
							code="label.cg200131.newcommer.reward.fight"></spring:message></span> <span
						class="fc-content-02">${fightEnergyCount}</span>
				</div>
			</div>

			<div>
				<div>
					<img
						src="<p:consumImg type="small" id="${magicCircleConsumable.id}"></p:consumImg>" />
				</div>
				<div class="fc-normal-02-l recruit-width">
					<span><spring:message
							code="label.cg200131.newcommer.reward.defense"></spring:message></span>
					<span class="fc-content-02">${magicCircleCount}</span>
				</div>
			</div>


		</div>

		<div class="commonPadding-top04 center-site fc-normal-05-l">
			<span><spring:message code="label.cg200131.notice.message"></spring:message></span>
		</div>

	</div>

	<div class="split-01"></div>

	<div class="system-info-left">
		<div>
			<div class="center-site new-img-width">
				<img src='<p:localurl value="/resources/images/meng.png"/>'>
			</div>
		</div>
		<div>
			<div class="npc-message-cg200102-new new-info-width">
				<div class="system-content">
					<span> <spring:message code="label.cg200131.union.info"></spring:message>
					</span>
				</div>
			</div>
		</div>
	</div>

	<div class="split-01"></div>

	<div class="system-info-right">
		<div>
			<div class="npc-message-cg200102-new new-info-width">
				<div class="system-content">
					<span> <spring:message code="label.cg200131.vip.info"></spring:message>
					</span>

				</div>
			</div>
		</div>
		<div>
			<div class="center-site new-img-width">
				<img src='<p:localurl value="/resources/images/large-vip.png"/>'>
			</div>
		</div>
	</div>

	<div class="split-01"></div>

	<div class="system-info-left">
		<div>
			<div class="center-site new-img-width">
				<img src='<p:localurl value="/resources/images/shang.png"/>'>
			</div>
		</div>
		<div>
			<div class="npc-message-cg200102-new new-info-width">
				<div class="system-content">
					<span> <spring:message code="label.cg200131.shop.info"></spring:message>
					</span>
				</div>

			</div>
		</div>
	</div>

	<div class="split-01"></div>

	<div class="system-info-right">
		<div>
			<div class="npc-message-cg200102-new new-info-width">
				<div class="system-content">
					<span> <spring:message code="label.cg200131.friend.info"></spring:message>
					</span>

				</div>
			</div>
		</div>
		<div>
			<div class="center-site new-img-width">
				<img src='<p:localurl value="/resources/images/you.png"/>'>
			</div>
		</div>
	</div>


	<div class="conference-buttons commonPading01">
		<img class="clickTone1" onclick="goToNext()"
			src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>'>
	</div>


</div>