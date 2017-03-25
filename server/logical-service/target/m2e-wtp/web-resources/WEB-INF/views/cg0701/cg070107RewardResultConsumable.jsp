<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0705.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg0701.reward.result" /></span>
	</div>
	<c:if test="${fn:contains(playerTreasureViewData.rewardItemType, 'CONSUMABLE')}">
		<treasure:obtainConsumable consumableId="${playerTreasureViewData.playerConsumable.consumableId}" consumableName="${playerTreasureViewData.playerConsumable.name}"  enumRewardType="${playerTreasureViewData.rewardItemType}" count="${playerTreasureViewData.rewardItemCount}" />
	</c:if>	
	
	<c:if test="${fn:contains(playerTreasureViewData.rewardItemType, 'EQUIPMENT')}">
		<treasure:obtainConsumable consumableId="${playerTreasureViewData.playerEquipment.equipmentId}" consumableName="${playerTreasureViewData.playerEquipment.name}"  enumRewardType="${playerTreasureViewData.rewardItemType}" />		
	</c:if>
	
	<div class="split-01" ></div>
	
	<treasure:recoverAttack playerConsumableVO="${playerTreasureViewData.attackAndDefenseConsumable}" />
	
	<div class="lastback-button">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg0701/cg070102/index" />';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value='/resources/images/buttons/fanhuiyuanseshouye-green-z.png'/>'>
		</a>
	</div>
</div>

