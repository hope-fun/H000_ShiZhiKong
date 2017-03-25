<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.cg120302.vipsystem.task"/></span>
	</div>
	
	<utils:npcDialog dialogVal="label.cg120302.vipsystem.npc" dialogType="msgKey" imageType="2" />
	
	<div class="split-01"></div>
	
	<c:if test="${not empty vipSystemSatelliteViewDataList}">
		<input id="task_url" type="hidden" value="<p:fullurl value='/cg1203/cg120302/doVipSystemSatelliteTask/'/>" />
		<c:forEach items="${vipSystemSatelliteViewDataList }" var="list">
			<input name ="id" id="${list.enumSatelliteType}id" type="hidden" value="${list.id}" />
		
			<div class="satellite-style">
				<div class="menu-medium title-label-02">
					<c:if test="${fn:contains(list.enumSatelliteType, 'ASATELLITE')}">
						<span class="menu-large">${list.name }</span>
					</c:if>
					<c:if test="${fn:contains(list.enumSatelliteType, 'BSATELLITE')}">
						<span class="fc-normal-01-l menu-large">${list.name }</span>
					</c:if>
					<c:if test="${fn:contains(list.enumSatelliteType, 'CSATELLITE')}">
						<span class="fc-normal-02-l menu-large">${list.name }</span>
					</c:if>
					<c:if test="${fn:contains(list.enumSatelliteType, 'DSATELLITE')}">
						<span class="fc-normal-04-l menu-large">${list.name }</span>
					</c:if>
					<c:if test="${fn:contains(list.enumSatelliteType, 'ESATELLITE')}">
						<span class="fc-normal-06-l menu-large">${list.name }</span>
					</c:if>
				</div>
		
				<div class="union-info-style">
					<div>
						<div class="borderPanel">
							<div class="panelC-header"></div>
							<div class="panelC-body panelC07-height"></div>
							<div class="panelC-footer"></div>
							<div class="border-content-noleft">
								<div class="satellite-pic">
									<c:if test="${fn:contains(list.enumSatelliteType, 'ASATELLITE')}">
										<img src='<p:localurl value="/resources/images/union/1.png"/>'>
									</c:if>
									<c:if test="${fn:contains(list.enumSatelliteType, 'BSATELLITE')}">
										<img src='<p:localurl value="/resources/images/union/2.png"/>'>
									</c:if>
									<c:if test="${fn:contains(list.enumSatelliteType, 'CSATELLITE')}">
										<img src='<p:localurl value="/resources/images/union/3.png"/>'>
									</c:if>
									<c:if test="${fn:contains(list.enumSatelliteType, 'DSATELLITE')}">
										<img src='<p:localurl value="/resources/images/union/4.png"/>'>
									</c:if>
									<c:if test="${fn:contains(list.enumSatelliteType, 'ESATELLITE')}">
										<img src='<p:localurl value="/resources/images/union/5.png"/>'>
									</c:if>
								</div>
								<div class="satellite-info">
		
									<div class="commonPading03" style="overflow: hidden;">
										<div class="system-content-bold vip-level-style">
											<span class="fc-title-02"><spring:message code="label.cg120302.vipsystem.level"/> : </span>
											<span id="${list.enumSatelliteType}spanlevel">${list.level }</span>
										</div>
										<div id="${list.enumSatelliteType}divgrowingPercent"  class="processing-bar-blue fc-normal-01-m grow-per-style"
											processbar="${list.growingPercent }"></div>
									</div>
									
									<div class="system-content-bold commonPadding-top02">
										<span class="fc-title-02"><spring:message code="label.cg120303.vipsystem.staExp" /> : </span>
										<span id="${list.enumSatelliteType}spancurrentExp">${list.exp }</span>  /
										<span id="${list.enumSatelliteType}spannextLevelExp">${list.nextLevelExp }</span>
									</div>
									
									<div class="system-content-bold commonPading03">
										<span class=" fc-title-02"><spring:message code="label.cg120302.vipsystem.defence"/> : </span>
										<span id="${list.enumSatelliteType}spandefenceMax">${list.defenceMax }</span>
									</div>
									<div class="fc-normal-06-m system-content-other commonPading03">
										<span><spring:message code="label.CG120302.vipsystem.task.message" /></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		
				<div class="conference-buttons">
					<div>
						<div class="aa clickTone1" id='${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[0].enumSatelliteTaskType}div' style='display:<c:if test="${list.vipSystemTaskRecordsViewDatas[0].canDotask == true}">block</c:if><c:if test="${list.vipSystemTaskRecordsViewDatas[0].canDotask == false}"> none </c:if>'>
							<img class="link_hand task" id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[0].enumSatelliteTaskType}"
								src='<p:localurl value="/resources/images/buttons/renwuyi-blue-x.png"/>'>
						</div>
						<div id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[0].enumSatelliteTaskType}divgray" style='display:<c:if test="${list.vipSystemTaskRecordsViewDatas[0].canDotask == false}"> block </c:if><c:if test="${list.vipSystemTaskRecordsViewDatas[0].canDotask == true}"> none </c:if> '>
							<img class="button_gray" 
								src='<p:localurl value="/resources/images/buttons/renwuyi-blue-x.png"/>'>
						</div>
						<div class="fc-title-02">
							<span>(0:00-12:00)</span>
						</div>
					</div>
		
					<div>
						<div class="aa clickTone1" id='${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[1].enumSatelliteTaskType}div' style='display:<c:if test="${list.vipSystemTaskRecordsViewDatas[1].canDotask == true}"> block</c:if><c:if test="${list.vipSystemTaskRecordsViewDatas[1].canDotask == false}"> none </c:if>'>
							<img class="link_hand task" id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[1].enumSatelliteTaskType}"
								src='<p:localurl value="/resources/images/buttons/renwuer-blue-x.png"/>'>
						</div>
						<div id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[1].enumSatelliteTaskType}divgray" style='display:<c:if test="${list.vipSystemTaskRecordsViewDatas[1].canDotask == false}"> block</c:if><c:if test="${list.vipSystemTaskRecordsViewDatas[1].canDotask == true}"> none</c:if> '>
							<img class="button_gray" 
								src='<p:localurl value="/resources/images/buttons/renwuer-blue-x.png"/>'>
						</div>
						<div class="fc-title-02">
							<span>(12:00-18:00)</span>
						</div>
					</div>
				</div>
		
				<div class="task-button">
					<div class="aa clickTone1" id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[2].enumSatelliteTaskType}div" style='display:<c:if test="${list.vipSystemTaskRecordsViewDatas[2].canDotask == true}"> block </c:if><c:if test="${list.vipSystemTaskRecordsViewDatas[2].canDotask == false}"> none </c:if>'>
						<img class="link_hand task" id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[2].enumSatelliteTaskType}"
							src='<p:localurl value="/resources/images/buttons/renwusan-blue-x.png"/>'>
					</div>
					<div id="${list.enumSatelliteType}_${list.vipSystemTaskRecordsViewDatas[2].enumSatelliteTaskType}divgray" style='display:<c:if test="${list.vipSystemTaskRecordsViewDatas[2].canDotask == false}"> block </c:if><c:if test="${list.vipSystemTaskRecordsViewDatas[2].canDotask == true}"> none </c:if> '>
						<img class="button_gray task" 
							src='<p:localurl value="/resources/images/buttons/renwusan-blue-x.png"/>'>
					</div>
					<div class="fc-title-02">
						<span>(18:00-24:00)</span>
					</div>
				</div>
		
			</div>
		</c:forEach>
	</c:if>
</div>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1203/cg120302.js'/>"></script>