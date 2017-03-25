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
		<span class="label-title-attack"><spring:message code="label.cg120303.vipsystem.build"/></span>
	</div>
	
	<utils:npcDialog dialogVal="label.cg120303.vipsystem.npc" dialogType="msgKey" imageType="2" />
	
	<c:if test="${not empty vipSystemSatelliteList}">
		
		<input id="unionId" type="hidden" value="${union.id}" />
		<input id="up_url" type="hidden" value="<p:fullurl value='/cg1203/cg120303/upVipSystemSatellite/'/>" />
				
		<c:forEach items="${vipSystemSatelliteList}" var="list">
			<div class="vip-sate-style">
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB12-height"></div>
					<div class="panelB-footer"></div>
					
					<div class="border-content-noleft">
						<div class="consumer-list">
							<div class="consumer-list-title">
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
												
								<input name ="silverCoin" id="${list.enumSatelliteType}silverCoin" type="hidden" value="${list.silverCoin }" />
								<input name ="id" id="${list.enumSatelliteType}id" type="hidden" value="${list.id}" />
								
							</div>
							<div class="consumer-list-image2"></div>
							<div style="width:100%;">
								<div class="sate-type-style">
									<div class="bottomPart_line_image01">
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
								</div>
								<div class="sate-info-style">
									<div class="satellite-info-style">
										<div class="system-content-bold commonPadding-top06">
											<span class=" fc-title-02"><spring:message code="label.cg120303.vipsystem.defence"/> : </span><span id="${list.enumSatelliteType}spandefenceMax">${list.defenceMax }</span>
										</div>
										<div class="system-content-bold commonPadding-top02">
											<span class=" fc-title-02"><spring:message code="label.cg120303.vipsystem.unionCoin"/> : </span><span class="allunionSilverCoin">${union.silverCoin }</span>
										</div>
										
										<div class="system-content-bold commonPadding-top02">
											<span class="fc-title-02"><spring:message code="label.cg120303.vipsystem.staExp" /> : </span>
											<span id="${list.enumSatelliteType}spancurrentExp">${list.exp }</span>  /
											<span id="${list.enumSatelliteType}spannextLevelExp">${list.nextLevelExp }</span>
										</div>
										
										<div class="commonPadding-top02" style="overflow: hidden;">
											<div class="system-content-bold vip-sate-level" >
												<span class="fc-title-02"><spring:message code="label.cg120303.vipsystem.level"/> : </span><span id="${list.enumSatelliteType}spanlevel">${list.level }</span>
											</div>
											<div id="${list.enumSatelliteType}divgrowingPercent" class="processing-bar-blue fc-normal-01-m grow-percent-style" processbar="${list.growingPercent }" ></div>								
										</div>
										<div class="commonPadding-top02 center-site upSatellite clickTone1" id="${list.enumSatelliteType}">
											<img class="link_hand" src='<p:localurl value="/resources/images/buttons/shengji-green.png"/>'>								
										</div>
										<div class="clearfix"></div>
									</div>
								</div>	
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</c:forEach>
	</c:if>
</div>
<script type="text/javascript" charset="utf-8">
	//获取点击升级需要的水晶
	function getMessage(silverCoin)
	{
		return  "<spring:message code='label.cg12030.you.will.use'></spring:message>" + silverCoin + "<spring:message code='label.cg12030.union.upgrade'></spring:message>";
	}
</script>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1203/cg120303.js'/>"></script>


