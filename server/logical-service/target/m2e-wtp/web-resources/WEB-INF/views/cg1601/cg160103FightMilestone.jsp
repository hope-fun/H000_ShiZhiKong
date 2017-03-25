<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1601.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg1601/cg1601.js"/>"></script>
<div class="content">
	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg1601.title"></spring:message></span>
	</div>
	<utils:npcDialog dialogVal="label.cg1601.npc" dialogType="msgKey" imageType="2" />
	<input type="hidden" id="rewardsuccess"
					value="<spring:message code='label.cg01010301.draw.success'/>" /> 
	<input type="hidden" id="rewardfail"
					value="<spring:message code='label.cg01010301.draw.fault'/>" /> 				
	<div class="tab-view">
		<div class="clickTone1" onclick="window.location.href='<p:fullurl value='/cg1601/cg160101/index'/>'">
			<img width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/lichengjiangli-blue-b.png"/>" />
		</div>
		<div class="clickTone1" onclick="window.location.href='<p:fullurl value='/cg1601/cg160102/index'/>'">
			<img width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/yingxiongjiangli-blue-b.png"/>" />
		</div>
		<div class="clickTone1" onclick="window.location.href='<p:fullurl value='/cg1601/cg160103/index'/>'">
			<img width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/zhanjijiangli-yellow-b.png"/>" />
		</div>
		<div class="clickTone1" onclick="window.location.href='<p:fullurl value='/cg1601/cg160104/index'/>'">
			<img width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/wuzijiangli-blue-b.png"/>" />
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<c:forEach items="${resList}" var="item" varStatus="i">
		<div class="panel-01 MileStoneItem">
			<form id="subForm${i.index}" method="POST"
				action="<p:fullurl value="/cg1601/cg160101/getReward"/>">
				<input type="hidden" name="id" value="${item.id}" /> <input
					type="hidden" name="milestoneId" value="${item.milestoneId}" /> <input
					type="hidden" name="name" value="${item.name}" /> <input
					type="hidden" name="description" value="${item.description}" /> <input
					type="hidden" name="milestoneType" value="${item.milestoneType}" />
				<input type="hidden" name="milestoneSubType"
					value="${item.milestoneSubType}" /> <input type="hidden"
					name="orderNumber" value="${item.orderNumber}" /> <input
					type="hidden" name="rewardDesc" value="${item.rewardDesc}" />
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB03-height"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
				<div class="propsListStyle">
					<div>
						<div class="rewardtitle"
									style="width: 100%;text-align: center;">
							<span> &nbsp;${item.name}&nbsp;</span>
						</div>
						<c:if test="${item.isGrant != null}">
									<div class="fc-title-parent-01 reward-process-width">
								<span class="fc-title-02"><spring:message code="lable.cg1601.reward.process"></spring:message>:</span>
								<span class="fc-normal-03-m">${empty item.actualValue ? 0 : item.actualValue}/${item.requireValue}</span>
							</div>
						</c:if>
								<div class="fc-title-parent-02 desc-message-width">
							<span class="fc-title-02"><spring:message code="lable.cg1601.reward.Desc.message"></spring:message>:</span>
							<span class="fc-normal-03-m"> ${item.description}</span>
						</div>
						<div class="clearfix"></div>
						<div class="fc-container-01">
							<span class="fc-title-02 fc-title-02-add"><spring:message code="lable.cg1601.reward.message"></spring:message>:</span>
							<c:forEach items="${item.milestoneRewardVos }" var="reward">
								<span style="float: left;"> 
									<c:if test="${reward.rewardType.name() eq 'CONSUMABLE' }">
										<img src='<p:consumImg type="middle" id="${reward.rewardId}" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'EQUIPMENT' }">
										<img src='<p:equipImg type="middle" id="${reward.rewardEquipmentColor}" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'CARD' }">
										<img src='<p:cardImg type="tinysmall" id="${reward.rewardId}" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'TICKET' }">
										<img src='<p:localurl value="/resources/images/other/middle/K1.png" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'FPOINT' }">
										<img src='<p:localurl value="/resources/images/other/middle/FPOINT.png" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'CPOINT' }">
										<img src='<p:localurl value="/resources/images/other/middle/CPOINT.png" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'SCOIN' }">
										<img src='<p:localurl value="/resources/images/other/middle/SCOIN.png" />' />
									</c:if>
									<c:if test="${reward.rewardType.name() eq 'GCOIN' }">
										<img src='<p:localurl value="/resources/images/other/middle/GCOIN.png" />' />
									</c:if>
								</span>
								<span class="rewardCount">${reward.rewardCount}</span>
							</c:forEach>
							<div class="clearfix"></div>
						</div>
								<div class="reward-button-style">
							<c:if test="${item.isGrant}">
								<img class="clickTone1" onclick="doCG16Submit('subForm${i.index}','<p:fullurl value="/cg1601/cg160101/index" />','<spring:message code="label.cg1601.reward.success1"></spring:message><br/><spring:message code="label.cg1601.reward.success2"></spring:message>','<spring:message code="label.cg1601.reward.failed1"></spring:message><spring:message code="label.cg1601.reward.failed2"></spring:message>',this,${totalMsg + item.milestoneRewardVos.size()})" src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>' />
							</c:if>
							<c:if test="${item.isGrant eq false}">
								<img class="gray button_gray" src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>' />
							</c:if>
							<c:if test="${empty item.isGrant}">
								<img class="finish-button-style" src='<p:localurl value="/resources/images/buttons/finsh.png"/>' />
							</c:if>
						</div>
						<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</c:forEach>
</div>