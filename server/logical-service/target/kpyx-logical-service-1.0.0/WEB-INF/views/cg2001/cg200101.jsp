<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(
			
			function() {
				document.addEventListener('WebViewJavascriptBridgeReady',
						function(event) {
							JSInterface.showUpandDown("NO");
						}, false);
			$animation.cg200101Animation(".cg200101-ani");
	});
</script>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200101-ani">
		<div class="ani-xieci-pic" style="display:none;">
			<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/xieci.PNG"/>" />
		</div>
		<div class="ani-des-pic01" style="display:none;">
			<img src="<p:localurl value="/resources/images/newPlayer/01.PNG"/>" />
		</div>
		<div class="ani-des-pic02" style="display:none;">
			<img src="<p:localurl value="/resources/images/newPlayer/02.PNG"/>" />
		</div>
		<div class="ani-des-pic03" style="display:none;">
			<img src="<p:localurl value="/resources/images/newPlayer/03.PNG"/>" />
		</div>
		<div class="ani-des-pic04" style="display:none;">
			<img src="<p:localurl value="/resources/images/newPlayer/04.PNG"/>" />
		</div>
		<div class="ani-des-pic05" style="display:none;">
			<img src="<p:localurl value="/resources/images/newPlayer/05.PNG"/>" />
		</div>	
		<div class="ani-smoke" style="display:none;">
			<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/smoke.PNG"/>" />
		</div>
	</div>
	
	<div class="cg200101-content" style="display:none">
		<div class="camp-adv">
			<img
				src='<p:localurl value="/resources/images/xuanchuan/cg200101camp.png"/>'>
		</div>

		<div class="menu-font-max center-site commonPading08">
			<span><spring:message code="label.cg200101.welcome"></spring:message></span>
		</div>

		<div class="center-site">
			<div class="fc-normal-08-m commonPadding-top03 tips_cg2001">
				<span><spring:message code="label.cg200101.newcommer.reward"></spring:message></span>
				<span class="red-font2"><spring:message
						code="label.cg200101.newcommer.reward.value"></spring:message></span> <span><spring:message
						code="label.cg200101.newcommer.reward.info"></spring:message></span>
			</div>
		</div>

		<div class="split-01"></div>

		<div class="center-site font-weight-style">
			<div class="system-content-other commonPading08">
				<span><spring:message code="label.cg200101.newcommer.join"></spring:message></span>
			</div>
		</div>

		<div class="split-01"></div>

		<div class="commonPadding-top02">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="fc-normal-01-l phase-header3">
						<span class="padding-left-style"><spring:message
								code="label.cg200101.newcommer.camp.human"></spring:message></span>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="camp-content">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="camp-info02-new">
								<span id="camp-info-font01"><spring:message
										code="label.cg200101.newcommer.camp.human.info"></spring:message></span>
							</div>

							<div class="commonPading-top01">
								<img class="camp-new-pic"
									src='<p:localurl value="/resources/images/new-human.png"/>' />
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="conference-buttons">
				<img class="clickTone1"
					onclick="location.href='<p:fullurl value="/cg2001/cg200102/index/HUMAN"/>';event.preventDefault();"
					src='<p:localurl value="/resources/images/buttons/xuanzerenlie-blue-d.png"/>'>
			</div>

		</div>

		<div class="split-01"></div>

		<div class="commonPadding-top02">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="fc-normal-04-l phase-header3">
						<span class="padding-left-style"><spring:message
								code="label.cg200101.newcommer.camp.taitan"></spring:message></span>
					</div>
				</div>
				<div class="camp-content">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="camp-info02-new">
								<span id="camp-info-font02"><spring:message
										code="label.cg200101.newcommer.camp.taitan.info"></spring:message></span>
							</div>
							<div class="commonPading-top01">
								<img class="camp-new-pic"
									src='<p:localurl value="/resources/images/new-taitan.png"/>' />
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="conference-buttons">
				<img class="clickTone1"
					onclick="location.href='<p:fullurl value="/cg2001/cg200102/index/TAITAN"/>';event.preventDefault();"
					src='<p:localurl value="/resources/images/buttons/xuanzetaitan-yellow-d.png"/>'>

			</div>

		</div>

		<div class="split-01"></div>

		<div class="commonPadding-top02">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="fc-normal-02-l phase-header3">
						<span class="padding-left-style"><spring:message
								code="label.cg200101.newcommer.camp.yiling"></spring:message></span>
					</div>
				</div>
				<div class="camp-content">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="camp-info02-new">
								<span id="camp-info-font03"><spring:message
										code="label.cg200101.newcommer.camp.yiling.info"></spring:message></span>
							</div>
							<div class="commonPading-top01">
								<img class="camp-new-pic"
									src='<p:localurl value="/resources/images/new-lingyi.png"/>' />
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="conference-buttons">
				<img class="clickTone1"
					onclick="location.href='<p:fullurl value="/cg2001/cg200102/index/LINGYI"/>';event.preventDefault();"
					src='<p:localurl value="/resources/images/buttons/xuanzeyiling-green-d.png"/>'>
			</div>

		</div>
	</div>


</div>


