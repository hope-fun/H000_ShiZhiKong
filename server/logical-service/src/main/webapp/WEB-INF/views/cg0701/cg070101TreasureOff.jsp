<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>

<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>

<p:fullurl value="/cg0701/cg070101/treasureOff" var="searchFilterAction" />

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0701/CG0701.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value='/resources/css/CG0301/tabpanel.css?v=1'/>">

<div class="content">
	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg0701.title" /></span>
	</div>
	
	<div>
		<tags:npcDialog dialogVal="label.cg0701.msg_npc" dialogType="msgKey" imageType="2" />
	</div>
	
	<div class="div-padding-top">
		<div class="tab-panel03">
			<div>
				<img class="clickTone1" src='<p:localurl value='/resources/images/buttons/weikaiqi-yellow-b.png'/>' onclick="location.href = '<p:fullurl value="/cg0701/cg070101/treasureOff" />';event.preventDefault();">
			</div>
			<div>
				<img class="clickTone1" src='<p:localurl value='/resources/images/buttons/kekaiqi-blue-b.png'/>' onclick="location.href = '<p:fullurl value="/cg0701/cg070102/treasureOn" />';event.preventDefault();">
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="split-line"></div>
	</div>
	<c:if test="${empty playerTreasureList }" >
		<div class="align-center"></div>
	</c:if>
	<c:if test="${not empty playerTreasureList }" >
		<tags:pagination items="${playerTreasureList }" id="searchCardList" method="GET" renderAjax="false" searchData="${searchVO }" paginationUrl="${searchFilterAction }">
		<div>
			<c:forEach items="${playerTreasureList }" var="pt">
				<div class="center-site div-margin-top">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA16-height center-site">
						<div>
							<span class="fc-content-02"><c:out value="${pt.name }" /></span>
							<span class="fc-content-02 div-padding-left"><c:out value="${pt.fragmentTypeCount }" /></span><span class="fc-normal-05-l">/6</span>
						</div>
						<div class="fragmentList">
							<c:forEach items="${pt.fragmentsView }" var="frag">
								<div class="fragClick" id="${frag.id }_${frag.treasureFragmentId }">
									<c:if test="${not empty frag.id }">
										<a id="a_${frag.treasureFragmentId }" href="${pt.id }/${frag.id }" onclick="location.href = '${pt.id }/${frag.id }';event.preventDefault();">
											 <treasure:playerFragmentImage treasureFragmentVO="${frag}" imageSize="large" showFragmentCount="true" />
										</a>
									</c:if>
									
									<c:if test="${empty frag.id }">
										<a id="a_${frag.treasureFragmentId }" href="${pt.id }/${frag.treasureFragmentId }/0" onclick="location.href = '${pt.id }/${frag.treasureFragmentId }/0';event.preventDefault();">
											<img class="fragmentImg clickTone1" src="<p:localurl value='/resources/images/large-equipment.png' />" />
										</a>
									</c:if>
								</div>
							</c:forEach>
						</div>
						<div>
							<div class="rewardInfo">
								<div class="fc-normal-04-l"><spring:message code="label.cg0701.reward" /></div>
								<div><span ><c:out value="${pt.cardVO.name }" /></span></div>
								<div><span class="fc-normal-05-l">(${pt.description })</span></div>
								<%-- <div class="rewardIcon">
									<c:if test="${pt.rewardItemType eq 'CARD' }">
										<c:if test="${not empty pt.rewardItemId }">
											<img class="img-size" alt="" src="<p:cardImg type='tinysmall' id='${pt.rewardItemId }' />" />
										</c:if>
										
										<c:if test="${not empty pt.rewardItemStar}">
											<img class="img-size" alt="" src="<p:cardImg type='tinysmall' id='star-${pt.rewardItemStar }' />" />
										</c:if>
									</c:if>
									<c:if test="${pt.rewardItemType eq 'EQUIPMENT' }">
										<c:if test="${not empty pt.rewardItemColor}">
											<img class="img-size" alt="" src="<p:equipImg type='middle' id='${pt.rewardItemColor }' />" />
										</c:if>
									</c:if>
									<c:if test="${pt.rewardItemType eq 'CONSUMABLE' }">
										<c:if test="${not empty pt.rewardItemId}">
											<img class="img-size" alt="" src="<p:consumImg type='middle' id='${pt.rewardItemId }' />" />
										</c:if>
									</c:if>
								</div> --%>
								
								<div><span>X</span><span class="fc-normal-04-l">${pt.rewardItemCount }</span></div>
							</div>
						</div>
					</div>
					<div class="panelA-footer"></div>
				</div>
			</c:forEach>
		</div>
		</tags:pagination>
		
		<!-- 因为js中无法解析标签，用于保存Url的隐藏域  -->
		<input id="detailUrl" type="hidden" value="<p:fullurl value='/cg0701/cg070103/treasureDetail/'/>" />
		<input id="doBattleUrl" type="hidden" value="<p:fullurl value='/cg0401/cg040102/index/'/>" />
	</c:if>
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0701/cg070101.js'/>"></script>