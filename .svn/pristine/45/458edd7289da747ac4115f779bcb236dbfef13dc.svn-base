<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
		JSInterface.showUpandDown("NO");
		//音效  ma_li  开始PVE背景音乐
		JSInterface.clickTone(108);
	}, false);
});
</script>
<div class="content">
	<div class="center-site">
		<div class="fc-normal-02-m commonPadding-top">
			<span><spring:message code="label.cg2001.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="fc-normal-05-m commonPading01 commonPadding-botton">
			<span><spring:message
					code="label.cg2001.newcommer.challenge.step2"></spring:message></span>
		</div>
	</div>
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200110.title"></spring:message></span>
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
						<spring:message code="label.cg200110.npc.info"></spring:message>
					</div>

				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="executeMission">
		<img class="lightOper"
			src="<p:localurl value='/resources/images/animation/light.png' />" />
		<div class="contentOper">
			<img src="<p:localurl value='/resources/images/scene/1.png' />" />
			<div class="executingMask"></div>
		</div>
	</div>
	<div class="pro-bars clearfix">
		<div>
			<div class="fc-normal-05-l progress-bar-name">
				<spring:message code="label.cg200110.action.energy"></spring:message>
			</div>
			<div>
				<div class="processing-bar-blue fc-normal-01-m" processbar="100"></div>
				<div class="pro-bar-num clearfix">
					<span>${player.actionPower}</span> <span>/</span> <span>${player.actionPowerMax}</span>
				</div>
			</div>
		</div>
		<div>
			<div class="fc-normal-05-l progress-bar-name">
				<spring:message code="label.cg200110.experience.count"></spring:message>
			</div>
			<div>
				<div class="processing-bar-green fc-normal-02-m" processbar="0"></div>
				<div class="pro-bar-num clearfix">
					<span>0</span> <span>/</span> <span>10</span>
				</div>
			</div>
		</div>
		<div>
			<div class="fc-normal-05-l progress-bar-name">
				<spring:message code="label.cg200110.task.schedule"></spring:message>
			</div>
			<div>
				<div class="processing-bar-yellow fc-normal-06-m" processbar="0"></div>
			</div>
		</div>
	</div>
	<div class="info-pic02">
		<div>
			<div></div>
		</div>
		<div>
			<div></div>
		</div>
		<div>
			<div></div>
		</div>
		<div>
			<div></div>
		</div>
	</div>
	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="$animation.executeMission('.executeMission',function(){location.href='<p:fullurl value="/cg2001/cg200111/index"/>';event.preventDefault();})"
			src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>'>
	</div>
</div>