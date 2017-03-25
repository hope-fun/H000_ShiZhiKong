<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	$(document).ready(function() {
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
			JSInterface.showUpandDown("NO");
			$animation.cardGetAnimationOne(".animationHolder");
		}, false);
		
		
	});
</script>
<div class="animationHolder cardGENERAL animationHolder_cg2001">
	<div class="contentLightRayOper">
		<div class="light" id="layer_02">
			<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
		</div>
		<div class="light" id="layer_03">
			<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
		</div>
	</div>
	<div class="contentGet">
		<div class="surprise">
			<img class="card" src="<p:localurl value="/resources/images/animation/cardGetBackground_big.jpg"/>" />
		</div>
		<img class="hiddenPart" src="<p:cardImg type="big" id="${cardVO.id}"></p:cardImg>">
	</div>
	<div class = "contentMask"></div>
	<div class = "clickContinue clickTone1"><span><spring:message code="label.cg0801.clickContinue" /></span></div>
</div>
<div class="content finalRes">

	<div class="center-site">

		<div class="fc-normal-02-m commonPadding-top">
			<span><spring:message code="label.cg2001.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="fc-normal-05-m commonPading01 commonPadding-botton">
			<span><spring:message 
					code="label.cg2001.newcommer.challenge.step1"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200107.title"></spring:message></span>
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
						<span><spring:message code="label.cg200107.npc.info"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>


	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200110/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-d.png"/>'>
	</div>
	<div class="conference-buttons commonPadding-top03">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200131/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/tiaoguoxinshoujiaocheng-blue-z.png"/>'>
	</div>
	
	<div class="center-site">
		<div class="fc-normal-08-m commonPading01">
			<span><spring:message code="label.cg200105.notice2"></spring:message></span>
		</div>
	</div>
	
	<div class="commonPading03">
		<cards:detail_newcommer item="${cardVO}" exp="0"></cards:detail_newcommer>
	</div>

	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200110/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-d.png"/>'>
	</div>

	<div class="conference-buttons commonPadding-top03">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200131/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/tiaoguoxinshoujiaocheng-blue-z.png"/>'>
	</div>
	
	<div class="center-site">
		<div class="fc-normal-08-m commonPading01">
			<span><spring:message code="label.cg200105.notice2"></spring:message></span>
		</div>
	</div>


</div>