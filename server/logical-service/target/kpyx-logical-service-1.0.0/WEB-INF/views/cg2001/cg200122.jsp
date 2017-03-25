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
			<span><spring:message
					code="label.cg2001.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="fc-normal-05-m commonPading01 commonPadding-botton">
			<span><spring:message
					code="label.cg2001.newcommer.challenge.step9"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200122.title"></spring:message></span>
	</div>

	<div class="commonPading01" style="width: 100%; overflow: hidden;">
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
						<span><spring:message code="label.cg200122.npc.info"></spring:message></span>
					</div>
				</div>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="split-01"></div>

	<div class="commonPading08">
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="fc-normal-01-l phase-header3">
					<span class="padding-left-style"><spring:message
							code="label.cg200122.target"></spring:message></span>
				</div>
			</div>
			<div class="camp-content">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA12-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div class="commonPading01">
							<div class="center-site fc-normal-05-l">
								<span><spring:message
										code="label.cg200122.player.element"></spring:message></span>
							</div>
							<div class="split-item-down"></div>
							<div style="width: 100%; margin: 0 auto;">
								<div class="playerelement-info">
									<div class="trea-pic">
										<treasure:treasureImage
											treasureFragmentVO="${treasureFragment}" imageSize="large"></treasure:treasureImage>
									</div>
								</div>
								<div class="element-info">
									<div class="commonPading01 element-num-width">
										<div class="fc-content-03 commonPading01">
											<span class="fc-normal-05-m"><spring:message
													code="label.cg200122.player.element.num"></spring:message></span><span>1</span>
										</div>
										<div class="fc-normal-05-m commonPading03">
											<span><spring:message
													code="label.cg200122.player.progress"></spring:message></span><span
												class="fc-content-03">1/</span><span>6</span>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="panel-03">
		<div class="blue-background">
			<div class="panel-header">
				<div style="float: left; width: 100%;">
					<span><spring:message code="label.cg200122.player.name"></spring:message></span>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-body">
				<div class="card-assistant">
					<div class="small-card-width">
						<div class="card-assistant-image">
							<img
								src='<p:localurl value="/resources/images/cards/small/s0012.png"/>' />
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="equips-width">
						<div class="card-assistant-equipment">
							<div class="card-equipment ">
								<div
									class="one-equipment icon-default icon-location equip-small-height">

								</div>
								<div
									class="one-equipment icon-default icon-location equip-small-height">

								</div>
								<div
									class="one-equipment icon-default icon-location equip-small-height">

								</div>
							</div>
						</div>
					</div>
					<div class="player-info">
						<div>
							<div>
								<img
									src='<p:localurl value="/resources/images/icons/dengji.png"/>'>
							</div>
							<div class="fc-normal-05-m">
								<span><spring:message code="label.cg200107.level"></spring:message></span><span
									class="fc-content-03">2</span>
							</div>
						</div>

						<div>
							<div>
								<img
									src='<p:localurl value="/resources/images/icons/hudunli.png"/>'>
							</div>
							<div class="fc-normal-05-m">
								<span><spring:message code="label.cg200107.defence"></spring:message></span><span
									class="fc-content-03">35</span>
							</div>
						</div>

						<div>
							<div>
								<img
									src='<p:localurl value="/resources/images/icons/zhanyou.png"/>'>
							</div>
							<div class="fc-normal-05-m">
								<span><spring:message code="label.cg200122.player.friend"></spring:message></span><span
									class="fc-content-03">5</span>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>


		<div class="conference-buttons commonPadding01">
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2001/cg200124/index"/>';event.preventDefault();"
				src='<p:localurl value="/resources/images/buttons/juezhan-green-z.png"/>'>
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
</div>