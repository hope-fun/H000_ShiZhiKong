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
					code="label.cg2001.newcommer.challenge.step5"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200117.title"></spring:message></span>
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
						<span><spring:message code="label.cg200117.npc.info"></spring:message></span>
						<span class="red-font"><spring:message
								code="label.cg200117.npc.info.require"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="split-01"></div>



	<div class="panel-03  commonPading01">
		<div
			class='<cssutils:cardCamp campType="${mainCard.camp}"/>'>
			<div class="panel-header-new padding-top-style12">
				<div class="card-name-style">
					<span><c:out value="${mainCard.name}"></c:out></span>
				</div>
				<div class="card-stars-style">
					<div class="card-star">
						<c:forEach begin="1" step="1" end="${mainCard.star}" var="idx">
							<img alt=""
								src="<p:localurl value="/resources/images/star-d.png"/>" />
						</c:forEach>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-body">
				<div class="card-assistant">
					<div class="card-pic-style">
						<div class="card-assistant-image">
							<img alt=""
								src="<p:cardImg type="small" id="${mainCard.id}"></p:cardImg>" />
						</div>
					</div>
					<div class="equips-width">
						<div class="card-assistant-equipment">
							<div class="card-equipment ">
								<div class="one-equipment icon-default margin-style12">
									
								</div>
								<div class="one-equipment icon-default margin-style12">
									
								</div>
								<div class="one-equipment icon-default margin-style12">
									
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="card-info-style">
						<div class="card-assistant-desc">
							<div class="top-right-panel">
								<div class="level-num-style">
									<div class="archives-item icon icon-level icon-location">
										<span><c:out value="${nowLevel}" /></span>
									</div>
								</div>
								<div class="align-center growing-per-style">
									<div class="processing-bar-blue fc-normal-01-m"
										processbar="<c:out value="${growingPercent}" />"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="middle-right-panel">
								<div>
									<div
										class="archives-item icon icon-physicalstrength icon-location">
										<span><c:out value="${mainCard.strengthRequire }" /></span>
									</div>
								</div>
								<div>
									<div
										class="archives-item icon icon-total-fighting-energy icon-location">
										<span><c:out value="${mainCard.attack }" /></span>
									</div>
								</div>
								<div>
									<div
										class="archives-item icon icon-total-shield-energy icon-location">
										<span><c:out value="${mainCard.defence}" /></span>
									</div>
								</div>
								<div></div>
							</div>

							<div></div>
						</div>
					</div>
					<div></div>
				</div>
			</div>
		</div>

	</div>

	<div class="<cssutils:cardCamp campType="${materialCard.camp}"/>">
		<cards:card_newcommer item="${materialCard}" exp="0"></cards:card_newcommer>
	</div>


	<div class="add-pic-style">
		<img src='<p:localurl value="/resources/images/add.png"/>'>
	</div>
	<div class="relative-info">
		<div class="center-site commonPading01">
			<span class="fc-normal-05-l"><spring:message
					code="label.cg200114.cost.slivercoin"></spring:message></span><span
				class="fc-content-02">${silverCost}</span>
		</div>
		<div class="conference-buttons commonPadding01">
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2001/cg200119/index/${mainCard.id}/${materialCard.id}/${mainCard.attack}/${mainCard.defence}/${nowLevel}"/>';event.preventDefault();"
				src='<p:localurl value="/resources/images/buttons/zhuansheng-green-z.png"/>'>
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

		<div class="split-01"></div>
		<div class="center-site commonPading01">
			<span class="fc-content-02"><spring:message
					code="label.cg200117.example"></spring:message></span>
		</div>

		<div class="example-img">
			<div>
				<div>
					<img
						src='<p:localurl value="/resources/images/cards/small/s0191.png"/>'>
				</div>
				<div>
					<img
						src='<p:localurl value="/resources/images/cards/small/s0191.png"/>'>
				</div>

			</div>
			<div>
				<div>
					<img src='<p:localurl value="/resources/images/sanjiao.png"/>'>
				</div>
			</div>
			<div>
				<div>
					<img
						src='<p:localurl value="/resources/images/cards/middle/s0192.jpg"/>'>
				</div>
			</div>
		</div>
	</div>
</div>