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
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {		
		//音效  ma_li  停止PVE背景音乐
		JSInterface.clickTone(208);
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
					code="label.cg2001.newcommer.challenge.step7"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200108.title"></spring:message></span>
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
						<spring:message code="label.cg200108.set.equipment"></spring:message>
					</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>

	<div class="panel-common" style="overflow: hidden;">
		<div>
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB03-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="consumer-list">
						<div class="consumer-list-title">
							<span class="fc-content-01">${equipmentVO.name}</span>
						</div>
						<div class="consumer-list-image"></div>
						<div class="padding-left-style02">
							<div class="bottomPart_line_image_necommer">
								<img src="<p:equipImg type="large" id="${equipmentVO.id }"/>" />
							</div>
							<div
								class="prop-message fc-content-02 commonPading01 equipment-des">
								<div class="commonPading01 equip-des-width">
									<span>${equipmentVO.description}</span>
								</div>
								<div class="commonPading01 equip-des-width">
									<span class="fc-normal-05-l"><spring:message
											code="label.cg200108.set.require"></spring:message></span> <span>${equipmentVO.requireValue}</span>
									<c:choose>
										<c:when test="${equipmentVO.requireType eq 'ATTACK'}">
											<span><spring:message
													code="label.cg200108.require.attack"></spring:message></span>
										</c:when>
										<c:when test="${equipmentVO.requireType eq 'DEFENCE'}">
											<span><spring:message
													code="label.cg200108.require.defence"></spring:message></span>
										</c:when>
										<c:otherwise>
											<span><spring:message
													code="label.cg200108.require.level"></spring:message></span>
										</c:otherwise>
									</c:choose>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="conference-buttons commonPadding01">
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2001/cg200109/index/${nowattack}/${nowdefence}/${nowLevel}"/>';event.preventDefault();"
				src='<p:localurl value="/resources/images/buttons/xiangqian-green-z.png"/>'>

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