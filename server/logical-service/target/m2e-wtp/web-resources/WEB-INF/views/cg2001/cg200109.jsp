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
					code="label.cg2001.newcommer.challenge.step7"></spring:message></span>
		</div>

	</div>

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200109.title"></spring:message></span>
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
						<spring:message code="label.cg200109.npc.info"></spring:message>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>




	<div class="panel-02">
		<div class="<cssutils:cardCamp campType="${mainCardVO.camp}"/>">
			<div class="panel-header">
				<span><c:out value="${mainCardVO.name}"></c:out></span>
				<div class="card-star">
					<c:forEach begin="1" step="1" end="${mainCardVO.star}" var="idx">
						<img alt=""
							src="<p:localurl value="/resources/images/star-d.png"/>" />
					</c:forEach>
				</div>
			</div>
			<div class="panel-body">
				<div class="card-major">
					<div class="middle-card-width">
						<div class="card-major-image">
							<img
								src='<p:cardImg type="middle" id="${mainCardVO.id }"></p:cardImg>' />
						</div>
						<div class="card-major-image-equipment middel-equips-width">
							<div>
								<c:if test="${ not empty equipmentVO }">
									<img src="<p:equipImg type="middle" id="${equipmentVO.id}"/>" />
								</c:if>								
							</div>
							<div>
								<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
							</div>
							<div>
								<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
							</div>
							<div></div>
						</div>
					</div>
					<div class="middle-info-width">
						<div class="card-major-desc">
							<div class="card-major-data">
								<div class="icon icon-level">
									<span><spring:message
											code="label.cg030101.maincard.level"></spring:message>:</span> <span><c:out
											value="${nowLevel}" /></span>
								</div>
								<div class="icon icon-physicalstrength">
									<span><spring:message
											code="label.cg030101.maincard.strengthrequire"></spring:message>:</span>
									<span><c:out value="${strengthRequireAdded}" /></span>
								</div>
								<div class="icon icon-total-fighting-energy">
									<span><spring:message
											code="label.cg030101.maincard.attack"></spring:message>:</span> <span><c:out
											value="${attackAdded}" /></span>
								</div>
								<div class="icon icon-total-shield-energy">
									<span><spring:message
											code="label.cg030101.maincard.defence"></spring:message>:</span> <span><c:out
											value="${defenceAdded }" /></span>
								</div>
								<div></div>
							</div>
							<div class="card-major-experience">
								<div class="fc-normal-01-l growing-per-info">
									<span><spring:message
											code="label.cg030101.maincard.growingpercent"></spring:message>:</span>
								</div>
								<div class="growing-per-bar">
									<div class="processing-bar-blue fc-normal-01-m" processbar="0"></div>
								</div>
								<div></div>
							</div>

						</div>
					</div>
					<div></div>
				</div>
			</div>
		</div>
	</div>






	<div>
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header">
					<span class="padding-left-style"><spring:message
							code="label.cg200109.card.equip"></spring:message></span>
				</div>
			</div>
			<div class="camp-content">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA09-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div class="equip-info">
							<div class="equip-info-pic">
								<div>
									<div>
										<img src="<p:equipImg type="large" id="${equipmentVO.id}"/>" />
									</div>
									<div>
										<span class="fc-normal-03-m">${equipmentVO.name}</span>
									</div>

								</div>

								<div>
									<div> <img src="<p:localurl value="/resources/images/large-equipment.png"/>" /></div>
									<div>
										<span class="fc-normal-03-m"></span>
									</div>

								</div>

								<div>
									<div><img src="<p:localurl value="/resources/images/large-equipment.png"/>" /></div>
									<div>
										<span class="fc-normal-03-m"></span>
									</div>

								</div>
								<div class="clearfix"></div>
							</div>
							<div class="split-item-down"></div>
							<div class="proportion-info fc-withwild-s">
								<div>
									<span><spring:message
											code="label.cg200108.require.attack"></spring:message></span><span>+</span><span>${equipmentVO.getAdditionValue()}</span>
								</div>
								<div></div>
								<div></div>
							</div>
							<div class="split-item-down split-down-style"></div>

							<div class="power-info">
								<div>
									<img
										src='<p:localurl value="/resources/images/icons/zhanhuxuqiu.png"/>'>
								</div>
								<div>
									<div class="commonPading05 require-width">
										<div class="fc-content-02" style="float: left;">
											<span class="fc-normal-01-l"><spring:message
													code="label.cg200107.fight.require"></spring:message></span><span>${mainCardVO.strengthRequire}</span>
										</div>
										<div class="arrow-style">
											<img src='<p:localurl value="/resources/images/Arrow01.png"/>'>
										</div>
										<div class="fc-content-02" style="float: left;">
											<span>${strengthRequireAdded}</span>
										</div>
									</div>
								</div>

							</div>

							<div class="power-info">
								<div>
									<img
										src='<p:localurl value="/resources/images/icons/zhandouli.png"/>'>
								</div>
								<div>
									<div class="commonPading05 require-width">
										<div class="fc-content-02" style="float: left;">
											<span class="fc-normal-02-l"><spring:message
													code="label.cg200107.attack"></spring:message></span><span>${mainCardVO.attack}</span>
										</div>
										<div class="arrow-style">
											<img src='<p:localurl value="/resources/images/Arrow03.png"/>'>
										</div>
										<div class="fc-content-02" style="float: left;">
											<span>${attackAdded}</span>
										</div>
									</div>
								</div>

							</div>

							<div class="power-info">
								<div>
									<img
										src='<p:localurl value="/resources/images/icons/hudunli.png"/>'>
								</div>
								<div>
									<div class="commonPading05 require-width" >
										<div class="fc-content-02" style="float: left;">
											<span class="fc-normal-04-l"><spring:message
													code="label.cg200107.defence"></spring:message></span><span>${mainCardVO.defence}</span>
										</div>
										<div class="arrow-style">
											<img src='<p:localurl value="/resources/images/Arrow02.png"/>'>
										</div>
										<div class="fc-content-02" style="float: left;">
											<span>${defenceAdded}</span>
										</div>
									</div>
								</div>

							</div>

							<div class="clearfix"></div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200121/index"/>';event.preventDefault();"
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