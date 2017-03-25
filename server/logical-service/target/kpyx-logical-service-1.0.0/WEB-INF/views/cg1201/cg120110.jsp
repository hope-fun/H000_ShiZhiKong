<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120110.title" /></span>
	</div>
	
	<utils:npcDialog dialogVal="label.cg120110.npc" dialogType="msgKey" imageType="2" />

	<div class="panel-03">
		<div class="<cssutils:cardCamp campType='${member.cardCamp}'/>">
			<div class="panel-header">
				<div class="player-name-style"><span><c:out value="${member.playerName }" /></span></div>
				<div class="clearfix"></div>
			</div>
			<div class="panel-body">
				<div class="card-assistant">
					<div class="small-card-width">
						<div class="card-assistant-image">
							<img src="<p:cardImg type="small" id="${member.cardId }" />" />
						</div>
					</div>
					<div class="equips-width">
						<div class="card-assistant-equipment">
							<div class="card-equipment ">
								<div class="one-equipment icon-default icon-location">
									<c:if test="${ not empty member.playerEquipmentId1 }" >
										<img src="<p:equipImg type="small" id="${member.playerEquipmentId1 }" />" />
									</c:if>
									<c:if test="${ empty member.playerEquipmentId1 }" >
										<img />
									</c:if>
								</div>
								<div class="one-equipment icon-default icon-location">
									<c:if test="${ not empty member.playerEquipmentId2 }" >
										<img src="<p:equipImg type="small" id="${member.playerEquipmentId2 }" />" />
									</c:if>
									<c:if test="${ empty member.playerEquipmentId2 }" >
										<img />
									</c:if>
								</div>
								<div class="one-equipment icon-default icon-location">
									<c:if test="${ not empty member.playerEquipmentId3 }" >
										<img src="<p:equipImg type="small" id="${member.playerEquipmentId3 }" />" />
									</c:if>
									<c:if test="${ empty member.playerEquipmentId3 }" >
										<img />
									</c:if>
								</div>
							</div>
						</div>
					</div>
					<div class="commonPading01 first-row-style">
						<div class="commonPading05">
							<span class="fc-normal-05-l"><spring:message code="label.cg120110.job" /></span>
							<span><c:out value="${member.unionTitle }" /></span>
						</div>
						<div class="commonPading05">
							<span class="fc-normal-05-l"><spring:message code="label.cg120110.level" /></span>
							<span><c:out value="${member.level }" /></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class=" center-site ask-message">
		<span class="fc-content-02"><spring:message code="label.cg120110.askmsg1" /></span>
		<c:out value="${member.playerName }" />
		<span class="fc-content-02"><spring:message code="label.cg120110.askmsg2" /></span>
	</div>
	
	<div class="intercepting-button">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/jiechu-green-x.png"/>" style="cursor: pointer;" 
			onClick="shotOff('${member.playerId }')" />
	</div>
</div>

<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
<input id="shotOffUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120110/shotOffUnionMember/" />" />

<script type="text/javascript">
<!--
function shotOff(playerId){
	window.location.href = $("#shotOffUrl").val() + playerId;
}
//-->
</script>