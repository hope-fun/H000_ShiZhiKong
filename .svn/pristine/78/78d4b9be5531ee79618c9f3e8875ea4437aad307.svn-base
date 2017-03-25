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
	href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	$(document).ready(function() {		
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			JSInterface.showUpandDown("NO");	
			$animation.cardEvolutionAnimation(".contentEvolution");			
		}, false);
		
	});
	var mainCardId = $
	{
		mainCard.id
	};
</script>
<div class="contentEvolution animationHolder_cg2001">
	<div class="contentMask"></div>
	<div class="LightRay">
		<div class="layer_01">
			<img
				src="<p:localurl value="/resources/images/animation/lightLayer_01.png"/>" />
		</div>
		<div class="layer_02">
			<img
				src="<p:localurl value="/resources/images/animation/lightLayer_02.png"/>" />
		</div>
		<div class="layer_03">
			<img
				src="<p:localurl value="/resources/images/animation/lightLayer_03.png"/>" />
		</div>
	</div>
	<img class="main" src="<p:cardImg type="middle" id="${mainCard.id}"></p:cardImg>" />
	<img class="mat" src="<p:cardImg type="middle" id="${materialCardId}"></p:cardImg>" />
</div>
<div class="content finalRes">
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
		<span><spring:message code="label.cg200119.title"></spring:message></span>
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
						<spring:message code="label.cg200119.npc.info"></spring:message>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
<div class="split-01"></div>
<div class="power-info02">
	<div class="commonPading05" style="width: 100%;">
		<div class="system-content-other commonPadding-top06"
			style="float: left;">
			<span class="blue-font"><spring:message
					code="label.cg200116.mercenary.level"></spring:message></span><span>${cardLevel}</span>
		</div>
		<div class="arrow-style">
			<img src='<p:localurl value="/resources/images/Arrow04.png"/>'>
		</div>
		<div class="system-content-other commonPadding-top06"
			style="float: left;">
			<span>${nowLevel}</span>
		</div>
	</div>
</div>
<div class="power-info02 ">
	<div class="commonPading05" style="width: 100%;">
		<div class="system-content-other commonPadding-top06"
			style="float: left;">
			<span class="green-font"><spring:message
					code="label.cg200107.attack"></spring:message></span><span>${mainCard.attack}</span>
		</div>
		<div class="arrow-style">
			<img src='<p:localurl value="/resources/images/Arrow04.png"/>'>
		</div>
		<div class="system-content-other commonPadding-top06"
			style="float: left;">
			<span>${nowattack}</span>
		</div>
	</div>
</div>
<div class="power-info02">
	<div class="commonPading05" style="width: 100%;">
		<div class="system-content-other commonPadding-top06"
			style="float: left;">
			<span class="yellow-font"><spring:message
					code="label.cg200107.defence"></spring:message></span><span>${mainCard.defence}</span>
		</div>
		<div class="arrow-style">
			<img src='<p:localurl value="/resources/images/Arrow04.png"/>'>
		</div>
		<div class="system-content-other commonPadding-top06"
			style="float: left;">
			<span>${nowdefence}</span>
		</div>
	</div>
</div>
<div class="cardInfo commonPading03">
	<div class="borderPanel">
		<div class="panelA-header"></div>
		<div class="panelA-body panelA08-height new-height"></div>
		<div class="panelA-footer"></div>
		<div class="border-content">
			<div class="image-pic center-site">
				<img src='<p:cardImg type="big" id="${mainCard.id }"></p:cardImg>'>
			</div>
			<div class="wordsDescription">
				<div class="firstRow">
					<div class="row-left ">

						<div class="gitem icon icon-level move-from-left">
							<span class="fc-normal-01-m"><spring:message
									code="label.cg030102.carddetail.level"></spring:message>:</span> <span>${nowLevel}</span>
						</div>
					</div>
					<div>
						<div class="processing-bar-blue fc-normal-01-m process-bar"
							processbar="0">
							<div class="pro-bar-style">
								<table class="process-bar">
									<tbody>
										<tr>
											<td></td>
											<td class=""></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div></div>
				</div>
				<div class="down-list-image"></div>
				<div class="secondRow">
					<div>

						<div class="gitem icon icon-total-fighting-energy move-from-left">
							<span class="fc-normal-02-m"><spring:message
									code="label.cg030102.carddetail.attack"></spring:message>:</span> <span>${nowattack}</span>
						</div>
					</div>

					<div>

						<div class="gitem icon icon-total-shield-energy move-from-left">
							<span class="fc-link"><spring:message
									code="label.cg030102.carddetail.defence"></spring:message>:</span> <span>${nowdefence}</span>
						</div>
					</div>
					<div></div>
				</div>
				<div class="up-list-image"></div>
				<div class="defenseNeeded">
					<div class="row-zhxq">
						<div class="gitem icon icon-physicalstrength move-from-left">
							<span class="fc-normal-01-m"><spring:message
									code="label.cg030102.carddetail.strengthrequire"></spring:message>:</span>
							<span>${mainCard.strengthRequire}</span>
						</div>
					</div>
				</div>
				<div class="down-list-image"></div>
				<div class="textDescription  fc-title-02 commonPading03">
					<span>${mainCard.getDescription()}</span>
				</div>
				<div class="fixedPrompt">
					<div class="up-list-image"></div>
					<div class="description-1 fc-withwild ">
						<span>*<spring:message
								code="label.cg030102.carddetail.maincardtips"></spring:message></span>
					</div>
					<div class="down-list-image"></div>

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200120/index/${nowattack}/${nowdefence}/${mainCard.id}/${nowLevel}"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>'>
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