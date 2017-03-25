<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure"%>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg2001/cg2001.js'/>"></script>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
		JSInterface.showUpandDown("NO");	
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
					code="label.cg2001.newcommer.challenge.step8"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200121.title"></spring:message></span>
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
						<span><spring:message code="label.cg200121.npc.info"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class=" center-site commonPading01 fc-content-02">
		<span>${treasureFragment.name}</span>
	</div>
	<div class="center-site commonPading03">
		<treasure:treasureImage treasureFragmentVO="${treasureFragment}"
			imageSize="large"></treasure:treasureImage>
	</div>
	<div>
		<div class="split-01"></div>
	</div>

	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200122/index"/>';event.preventDefault();"
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

	<div class="commonPading01 center-site" style="width: 100%;">
		<div>
			<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA18-height"></div>
				<div class="panelA-footer"></div>
				<div class="border-content-noleft">
					<div class="content-element">
						<div class="fc-content-02 center-site">
							<span>${treasure.name}</span> <span>1</span> <span>/</span> <span>6</span>
						</div>
						<div class="commonPading01 center-site treasure-pic-width">
							<div class="element-pic clearfix">
								<div>
									<div>
										<treasure:treasureImage
											treasureFragmentVO="${treasureFragment}" imageSize="large"></treasure:treasureImage>
										<div class="treasurefgs-count">1</div>
									</div>
									
								</div>
								<div>
									<div></div>
								</div>
								<div>
									<div></div>
								</div>
							</div>
						</div>
						<div class="commonPading01 center-site treasure-pic-width">
							<div class="element-pic clearfix">
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</div>