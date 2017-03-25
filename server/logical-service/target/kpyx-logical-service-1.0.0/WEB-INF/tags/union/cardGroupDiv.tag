
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@attribute name="cardGropDivTag"
	type="com.artistmobile.kpyx.server.logical.busi.viewdata.CardGroupDivTagView"
	required="true" rtexprvalue="true"
	description="The CardGroupDivTagView"%>

<div class="card-group-div">
	<div>
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA18-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="cardgroup-info">
					<div class="select-cardgroup-style">
						<select id="selectCardGroup"
							class="input_class select-cardgroup-input"
							name="selectCardGroup">
							<c:forEach items="${cardGropDivTag.playerCardGroupList}"
								var="playerCardGroup">
								<option value="<c:out value="${playerCardGroup.id}" />"
									<c:if test="${fn:contains(playerCardGroup.id, cardGropDivTag.selectedGroupId)}">selected</c:if>>
									<c:out value="${playerCardGroup.name}" />
								</option>
							</c:forEach>
						</select>
					</div>
					<div>
						<div class="require-attack-power">
							<div class="fc-normal-01-l menu-medium require-padding">
								<span><spring:message code="label.CG020107.require"></spring:message>:</span>
								<span id="cardGroupAttackRequire" class="fc-content-02"><c:out
										value="${cardGropDivTag.cardGroupAttackRequire}"></c:out></span> <span
									class="fc-normal-05-l">/</span> <span class="fc-normal-05-l"
									id="playerRealAttackPowerMax"><c:out
										value="${cardGroupDivTagView.playerRealAttackPowerMax}"></c:out></span>
							</div>
							<div class=" menu-medium require-padding">
								<span class="fc-normal-02-l"><spring:message
										code="label.CG020107.attack"></spring:message>:</span> <span
									class="fc-content-02" id="cardGroupTotalAttack"><c:out
										value="${cardGropDivTag.cardGroupTotalAttack}"></c:out></span>

							</div>
						</div>
						<div class="edit-group-style">
							<a href="#" class="clickTone1"
								onclick="location.href = '<p:fullurl value="/cg0303/cg030301/index" />';event.preventDefault();"><img
								src='<p:localurl value="/resources/images/buttons/bianjizhenrong-green.png"/>'></a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="cardgroup-pic" style="width: 100%;">
					<c:if test="${not empty cardGropDivTag.playerCardsList}">
						<c:forEach items="${cardGropDivTag.playerCardsList}"
							var="playerCard">
							<div class="card-pre-style">
								<div class="card-pic card-pic-width">
									<div class="card-preview-border">
										<c:if test="${ not empty playerCard.cardId }">
											<img style="width: 100%"
												src='<p:cardImg type="small" id="${playerCard.cardId}"></p:cardImg>' />
										</c:if>
									</div>
								</div>
								<div class="equipment-all equip-all-width">
									<div class="equipmentContainer">
										<c:if test="${ not empty playerCard.playerEquipmentId1 }">
											<div class="propertyNoImage">
												<img alt=""
													src="<p:imgPath id='${playerCard.playerEquipmentId1}' folder='equipments' type='small' />" />
											</div>
										</c:if>
										<c:if test="${ empty playerCard.playerEquipmentId1 }">
											<div class="propertyImage"></div>
										</c:if>

										<c:if test="${ not empty playerCard.playerEquipmentId2 }">
											<div class="propertyNoImage">
												<img alt=""
													src="<p:imgPath id='${playerCard.playerEquipmentId2}' folder='equipments' type='small' />" />
											</div>
										</c:if>
										<c:if test="${ empty playerCard.playerEquipmentId2 }">
											<div class="propertyImage"></div>
										</c:if>

										<c:if test="${ not empty playerCard.playerEquipmentId3 }">
											<div class="propertyNoImage">
												<img alt=""
													src="<p:imgPath id='${playerCard.playerEquipmentId3}' folder='equipments' type='small' />" />
											</div>
										</c:if>
										<c:if test="${ empty playerCard.playerEquipmentId3 }">
											<div class="propertyImage"></div>
										</c:if>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

					<c:forEach var="i" begin="1"
						end="${5-(fn:length(cardGropDivTag.playerCardsList))}">
						<div class="card-pre-style">
							<div class="card-pic card-pic-width">
								<div class="card-preview-border">
									<img
										src="<p:localurl value="/resources/images/scard-smallcard.png"/>"
										width="100%" height="auto" />
								</div>
							</div>
							<div class="equipment-all equip-all-width">
								<div class="equipmentContainer">
									<div class="propertyImage"></div>
									<div class="propertyImage"></div>
									<div class="propertyImage"></div>
								</div>
							</div>
						</div>
					</c:forEach>
					<div></div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" charset="utf-8">
	$(function() {
		$("#selectCardGroup")
				.bind(
						"change",
						function doselect() {
							var selectedId = $("#selectCardGroup").val();
							$$
									.ajax({
										url : "<p:fullurl value='/cg1201/cg120122/updateCardGroup/'/>"
												+ selectedId,
										dataType : 'html',
										showMask : false,
										success : function(html) {
											$("#divcontent").html(html);
											$("#selectCardGroup").bind(
													"change", doselect);
										}
									})
						});
	});
</script>