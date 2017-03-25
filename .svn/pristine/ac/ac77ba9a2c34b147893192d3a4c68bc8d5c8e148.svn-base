<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
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
		<img alt="" src='<p:cardImg type="middle" id="${card.id}"></p:cardImg>'>
	</div>
	
	<div class="panel-03 clearfix blue-background">
		<div>
			<div class="panel-header panel-header-padding">
				<div class="item-name-style">
					<span>${card.name}</span>
				</div>
				<div class="item-stars-style">
					<div class="card-star">
						<c:forEach begin="1" step="1" end="${card.star}" var="idx">
							<img alt="" src="<p:localurl value="/resources/images/star-d.png"/>" />
						</c:forEach>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-body rew-padding-top">
				<div class="card-assistant">
					<div class="small-card-width">
						<div class="card-assistant-image">
							<img alt="" src='<p:cardImg type="small" id="${card.id}"></p:cardImg>'>
						</div>
					</div>
					<div class="equips-width">
						<div class="card-assistant-equipment">
							<div class="card-equipment ">
								<div class="one-equipment">
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</div>
								<div class="one-equipment">
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</div>
								<div class="one-equipment">
									<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="player-info-width">
						<div class="card-assistant-desc">
							<div class="top-right-panel">
								<div class="item-exp-style">
									<div class="archives-item icon icon-level icon-location">
										<span>${card.step}</span>
									</div>
								</div>
								<div class="align-center item-now-exp">
									<div class="processing-bar-blue fc-normal-01-m" processbar="0"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="middle-right-panel">
								<div>
									<div class="archives-item icon icon-physicalstrength icon-location">
										<span>${card.strengthRequire}</span>
									</div>
								</div>
								<div>
									<div class="archives-item icon icon-total-fighting-energy icon-location">
										<span>${card.attack}</span>
									</div>
								</div>
								<div>
									<div class="archives-item icon icon-total-shield-energy icon-location">
										<span>${card.defence}</span>
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
	<div class="go-section">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg2601/cg260102/index'/>', this)" />
	</div>
</div>
