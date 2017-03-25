<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg2001/cg2001.js'/>"></script>
<script type="text/javascript" charset="utf-8">
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
					code="label.cg2001.newcommer.challenge.step1"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200105.hire.mercenary"></spring:message></span>
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
						<span><spring:message
								code="label.cg200105.hire.first.mercenary.info"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>


	<div class="commonPading08">
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header padding-left-style">
					<span class=""><spring:message
							code="label.cg200105.cardpackage.name"></spring:message></span> <span
						class="fc-normal-06-l"><spring:message
							code="label.cg200105.cardpackage.num"></spring:message></span>
				</div>
			</div>
			<div class="camp-content">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA07-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">

						<div class="commonPadding01 cardpackage-pic">
							<div>
								<img class="cardpackage-style" src='<p:localurl value="/resources/images/cardticket/CP1.png"/>'>
							</div>
							<div class="employ-info-cg2001">
								<span><spring:message code="label.cg200105.free.chance"></spring:message></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200107/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/zhaomuyongbing-green-z.png"/>'>
	</div>

	<div class="center-site">
		<div class="fc-normal-08-m commonPading01">
			<span><spring:message code="label.cg200105.notice"></spring:message></span>
		</div>
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