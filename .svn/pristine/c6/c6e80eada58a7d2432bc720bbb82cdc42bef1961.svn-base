<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
<!-- 获得卡牌  卡牌拥有量已达上限-->
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020106.title"></spring:message></span>
	</div>
	<div class="center-site">
		<span class="fc-content-02"><spring:message code="label.CG020106.totle"></spring:message>：</span>
		<span class="fc-content-02">${player.cardsCount}</span>
		<span class="fc-normal-05-l">/</span>
		<span class="fc-normal-05-l">${player.cardsMax}</span>
	</div>
	<div class="center-site reward-card-padding">
		<img alt="" src='<p:cardImg type="middle" id="${reward.card.id}"></p:cardImg>'>
	</div>

	<div class="borderPanel reward-card-padding">
		<div class="panelA-header"></div>
		<div class="panelA-body panelA07-height"></div>
		<div class="panelA-footer"></div>
		<div class="border-content-noleft">
			<div class="sold-card">
				<div>
					<spring:message code="label.CG020106.cardlimit"></spring:message>
					<img
						onclick="location.href='<p:fullurl value="/cg0302/cg030201/index"/>'"
						class="imgIntensifyEvo"
						src='<p:localurl value="/resources/images/hechengnew.png" />' />
					<span><spring:message code="label.cg0801.or"></spring:message></span> <img
						onclick="location.href='<p:fullurl value="/cg0302/cg030207/index"/>'"
						class="imgIntensifyEvo"
						src='<p:localurl value="/resources/images/zhuanshengnew.png" />' />
				</div>
				<div style="padding-top: 20px;">
					<span>${card.name}<spring:message code="label.CG020106.yi"></spring:message>${card.price}<spring:message
							code="label.CG020106.sold"></spring:message>(${beforeCoin }
						&rarr; ${beforeCoin+card.price})
					</span>
				</div>
			</div>
		</div>
	</div>

	<div class="go-section">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020104/index/${playerSectionId}'/>', this)" />
	</div>
</div>
