<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@attribute name="playerConsumableVO"
	type="com.artistmobile.kpyx.server.data.service.vo.PlayerConsumableVO"
	required="true" rtexprvalue="true" description="playerConsumableVO"%>

<div class="panel-01">
	<div class="borderPanel">
		<div class="panelB-header"></div>
		<div class="panelB-body panelB03-height"></div>
		<div class="panelB-footer"></div>
		<div class="border-content-noleft">
			<div class="propsListStyle">
				<div class="consumable-padding-top">
					<div class="propsImagesDiv">
						<div class="propsImageStyle">
							<img class=""
								src="<p:consumImg type="large" id="${playerConsumableVO.consumableId }" />" />
						</div>
					</div>
					<div class="split-down-style"></div>
					<form id="recoverAttack"
						action="<p:fullurl value="/cg0701/cg070105/useDefenseConfirm"/>">
						<input type="hidden" id="playerConsumableVOcount"
							value="${playerConsumableVO.count}" />
						<div class="propsDetailinfo">
							<div class="propsName system-title reward-equip-style">
								<span><spring:message
										code="label.cg0706.reward.have.attack_and_defense_recover"></spring:message></span><span
									class="fc-normal-06-m">(<spring:message
										code="label.cg0706.reward.have.use_myself"></spring:message>)
								</span>
							</div>
							
							<div class="system-content">
								<span class="fc-normal-05-m"><spring:message
										code="label.cg0706.reward.have.number"></spring:message>:</span> <span
									class="fc-normal-03-m" id="playerConsumableCount">${empty
									playerConsumableVO.count ? 0 : playerConsumableVO.count}</span>
							</div>
							<div class="system-content">
								<span class="fc-normal-05-m"><spring:message
										code="label.cg0706.reward.have.function"></spring:message>:</span> <span
									class="fc-normal-03-m"><spring:message
										code="label.cg0706.reward.have.recover"></spring:message></span>
							</div>
							<div class="buy-consumable-style">
								<a href="#" class="clickTone1"
									onclick="location.href = '<p:fullurl value="/cg0901/cg090103/index" />';event.preventDefault();">
									<img id="playerConsumableGoumai"
									src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>'>
								</a> <img id="playerConsumableShiyong" class="clickTone1"
									src='<p:localurl value="/resources/images/buttons/shi-yong-green-s.png"/>'>
							</div>
						</div>
					</form>
					<div style="clear: both;"></div>
				</div>
			</div>
		</div>
	</div>

</div>



<script type="text/javascript" charset="utf-8">
	$(function() {
		$("#playerConsumableShiyong")
				.click(
						function() {
							$
									.post(
											$("#recoverAttack").attr('action'),
											null,
											function(message) {
												if (message != null) {
													if (message.result
															&& message.data != null) {
														$(
																"#playerConsumableCount")
																.html(
																		message.data.count);

														if (message.data.count > 0) {
															$(
																	"#playerConsumableShiyong")
																	.css(
																			"display",
																			"block");
															$(
																	"#playerConsumableGoumai")
																	.css(
																			"display",
																			"none");
														}
														if (message.data.count <= 0) {
															$(
																	"#playerConsumableShiyong")
																	.css(
																			"display",
																			"none");
															$(
																	"#playerConsumableGoumai")
																	.css(
																			"display",
																			"block");
														}
														kpyxTips("<spring:message code='label.cg0706.reward.have.recover'></spring:message>");
													}
												}
											}, ("json"));
						});
	});

	$(document).ready(
			function() {
				if (null == $("#playerConsumableVOcount").val()
						|| $("#playerConsumableVOcount").val() <= 0) {
					$("#playerConsumableShiyong").css("display", "none");
					$("#playerConsumableGoumai").css("display", "block");
				} else {
					$("#playerConsumableShiyong").css("display", "block");
					$("#playerConsumableGoumai").css("display", "none");
				}
			});
</script>