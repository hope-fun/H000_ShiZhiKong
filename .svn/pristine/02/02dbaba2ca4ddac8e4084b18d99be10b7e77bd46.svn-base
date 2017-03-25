<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020105.title"></spring:message></span>
	</div>
	<div class=" center-site">
		<span class="fc-content-02">${reward.fragment.name}</span>
	</div>
	<div class="center-site teasure-frg-padding">
		<treasure:treasureImage treasureFragmentVO="${reward.fragment}" imageSize="large"></treasure:treasureImage>
	</div>
	
	<div class="equip-info">
		<div>
			<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA18-height"></div>
				<div class="panelA-footer"></div>
				<div class="border-content-noleft">
					<div class="content-element">
						<div class="fc-content-02 center-site">
							<span>${reward.treasure.name}</span>
							<span>${reward.existFragments.size()}</span>
							<span>/&nbsp;6</span>
						</div>
						<div class="trea-size-style">
						<c:forEach var="i" begin="1" end="6" step="1">
							<c:set var="isHas" value="${false}"/>
							<c:forEach items="${reward.existFragments}" var="fragment" varStatus="index">
								<c:if test="${fragment.orderNumber == i}">
									<div class="fragment fragment02">
										<treasure:playerFragmentImage treasureFragmentVO="${fragment}" imageSize="large" showFragmentCount="true"></treasure:playerFragmentImage>
									</div>
									<c:set var="isHas" value="true"></c:set>
								</c:if>
							</c:forEach>
							<c:if test="${isHas != true}">
								<div class="fragment fragment02">
									<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
								</div>
								<c:set var="isHas" value="false"></c:set>
							</c:if>
							<c:if test="${i % 3 == 0}">
								<div class="clearfix"></div>
							</c:if>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="back-button-style">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020104/index/${playerSectionId}'/>', this)" />
	</div>
</div>
