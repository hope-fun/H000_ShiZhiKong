<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<script type="text/javascript">
	$(function() {
		$('.apply-button')
				.click(
						function() {
							var self = $(this);
							var playerId = $(this).attr('playerId');
							var url = '<p:fullurl value="/cg2001/cg200132/friendapply/" />'
									+ playerId;

							$
									.ajax({
										url : url,
										type : 'GET',
										jsonType : 'json',
										success : function(data) {
											var data = JSON.parse(data);
											if (!data.result) {
												if (data.data == 'ownMax') {
													alert("<spring:message code='label.cg0501.playertag.applymessage'></spring:message>");
												} else {
													alert("<spring:message code='label.cg0501.playertag.maxmessage'></spring:message>");
												}
											}else{
												$("#button_" + playerId)
														.removeClass('apply-button')
														.addClass('button_gray');
												self.unbind('click');
											}
										},
										error : function(e) {
											console.log(e);
										}
									});
						});

	});
</script>
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
			JSInterface.showUpandDown("NO");	
	}, false);
});
</script>


<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200132.title"></spring:message></span>
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
						<span><spring:message code="label.cg200132.npc.info"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<c:if test="${not empty friendList}">
		<c:forEach items="${friendList}" var="player">
			<c:set var="playerMainCard" value="${player.playerMaindCardVO}" />
			<div class="panel-03 panel-header-style">
				<div
					class='<cssutils:cardCamp campType="${playerMainCard.cardCamp}" />'>
					<div class="panel-header">
						<div class="player-name-width">
							<span>${player.name}</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-body">
						<div class="card-assistant">
							<div class="small-card-width">
								<div class="card-assistant-image">
									<img alt=""
										src="<p:cardImg type="small" id="${playerMainCard.cardId}"></p:cardImg>" />
								</div>
							</div>
							<div class="equips-width">
								<div class="card-assistant-equipment">
									<div class="card-equipment ">
										<div class="one-equipment icon-location">

											<c:if test="${ not empty playerMainCard.playerEquipmentId1 }">
												<img alt=""
													src="<p:equipImg type="small" id="${playerMainCard.playerEquipment1.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty playerMainCard.playerEquipmentId1 }">
												<img
													src="<p:localurl value="/resources/images/icons/default.png"/>" />
											</c:if>										
											
											
										</div>
										<div class="one-equipment icon-location">
											
											<c:if test="${ not empty playerMainCard.playerEquipmentId2 }">
												<img alt=""
													src="<p:equipImg type="small" id="${playerMainCard.playerEquipment2.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty playerMainCard.playerEquipmentId2 }">
												<img
													src="<p:localurl value="/resources/images/icons/default.png"/>" />
											</c:if>	
											
										</div>
										<div class="one-equipment icon-location">
											<c:if test="${ not empty playerMainCard.playerEquipmentId3 }">
												<img alt=""
													src="<p:equipImg type="small" id="${playerMainCard.playerEquipment3.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty playerMainCard.playerEquipmentId3}">
												<img
													src="<p:localurl value="/resources/images/icons/default.png"/>" />
											</c:if>	
										</div>
									</div>
								</div>
							</div>
							<div class="player-friend-info">
								<div>
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/dengji.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200107.level"></spring:message></span><span
												class="fc-content-02">${player.level}</span>
										</div>
									</div>
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/zhanyou.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message
													code="label.cg200122.player.friend"></spring:message></span>
											<c:if test="${empty player.friendsNum }">0</c:if>
											<c:if test="${not empty player.friendsNum }">
												<span class="fc-content-02">${player.friendsNum}</span>
											</c:if>
											<span>/</span> <span>${player.friendsMax}</span>
										</div>
									</div>
								</div>
								<div class="commonPadding-top02">
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/kapaishu.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200132.card"></spring:message></span><span
												class="fc-content-02">${player.cardsCount}</span><span>/</span><span>${player.cardsMax}</span>
										</div>
									</div>
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/lianmengtubiao.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200132.union"></spring:message></span>
											<span class="fc-content-02"> <c:if
													test="${not empty playerItem.unionName }">
													<c:out value="${fn:substring(playerItem.unionName, 0, 3) }" />
												</c:if> <c:if test="${empty playerItem.unionName }">
													<spring:message code="label.cg0501.playertag.noleague" />
												</c:if>
											</span>
										</div>
									</div>
								</div>
								<div class="battle-apply">
									<img class="apply-button clickTone1" id="button_${player.id}"
										playerId="${player.id}"
										src='<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>'>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:if>
	<div class="conference-buttons commonPading01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200134/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>'>
	</div>
</div>