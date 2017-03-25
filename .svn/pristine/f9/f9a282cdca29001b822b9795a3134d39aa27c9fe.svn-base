<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
	
<p:fullurl value="/cg1201/cg120108/index/${union.id }" var="waitJoinUnionUrl"/>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1208.union.title"/></span>
	</div>
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelC-header"></div>
			<div class="panelC-body panelC02-height"></div>
			<div class="panelC-footer"></div>
			<div class="border-content">
				<div class="lableText member-count-style">
					<span><spring:message code="label.cg1208.union.memberview"/>:</span> <span>${union.memberCount }</span> <span>/</span> <span>${union.maxMemberCount }</span>
				</div>
				<div class="lableText fc-normal-01-m memberview-message">
					<span>${message }</span>
				</div>
				<div class="split-item-down"></div>
				<div class="conference-buttons">
					<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120109/index/${union.id }" />';event.preventDefault();">
						<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/chengyuan-green.png"/>" /></a>
				</div>
			</div>
		</div>

	</div>
	<div class="split-01"></div>
	
	<c:if test="${empty memberList }" >
		<div class="align-center"></div>
	</c:if>
	<!-- 分页展示数据 -->
	<c:if test="${not empty memberList }" >
		<tags:pagination items="${memberList}" id="waitJoinUnionList" method="GET" renderAjax="false" searchData="${searchUnionMemberVO }" paginationUrl="${waitJoinUnionUrl }">
			<div class="memberList">
			
				<input type="hidden" id="unionId" value='${union.id }' />
				<input type="hidden" id="exist_message" value="<spring:message code="label.cg1208.member.exist" />" />
				<input type="hidden" id="max_message" value="<spring:message code="label.cg1208.member.max" />" />
				<input type="hidden" id="reject_message" value="<spring:message code="label.cg1208.member.reject" />" />
				<input type="hidden" id="unionMember_Url" value='${waitJoinUnionUrl }' />
				<input type="hidden" id="agree_Url" value='<p:fullurl value="/cg1201/cg120108/agreeJoinUnionMember/"/>' />
				<input type="hidden" id="reject_Url" value='<p:fullurl value="/cg1201/cg120108/rejectJoinUnionMember/"/>' />
			
				<c:forEach items="${memberList}" var="member">
					<div class="panel-03">
						<div class='<cssutils:cardCamp campType="${member.cardCamp}"/>'>
							<div class="panel-header">
								<div class="rivail-info">
									<span><c:out value="${member.playerName }" /></span>
								</div>
								
								<div class="small-rank-pic">
									<c:if test="${member.ranking > 0 }">
										<img src="<p:localurl value="/resources/images/small-ranking-${member.ranking}.png"/>" />
									</c:if>
								</div> 
								
								<div class="vip-level-pic">
									<c:if test="${ member.vipLevel > 0 }">
										<img src="<p:localurl value="/resources/images/viplevel/${member.vipLevel}.png"/>" />
									</c:if>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<div class="card-assistant">
									<div class="small-card-width">
										<div class="card-assistant-image">
											<img alt="" src="<p:cardImg type="small" id="${member.cardId}"></p:cardImg>" />
										</div>
									</div>
									<div class="equips-width">
										<div class="card-assistant-equipment">
											<div class="card-equipment ">
												<div class="one-equipment icon-default">
													<c:if test="${ not empty member.playerEquipmentId1 }" >
														<img alt="" src="<p:equipImg type="small" id="${member.playerEquipmentId1 }" />"/>
													</c:if>
													<c:if test="${ empty member.playerEquipmentId1 }" >
														<img />
													</c:if>
												</div>
												<div class="one-equipment icon-default">
													<c:if test="${ not empty member.playerEquipmentId2 }" >
														<img alt="" src="<p:equipImg type="small" id="${member.playerEquipmentId2 }" />"/>
													</c:if>
													<c:if test="${ empty member.playerEquipmentId2 }" >
														<img />
													</c:if>
												</div>
												<div class="one-equipment icon-default">
													<c:if test="${ not empty member.playerEquipmentId3 }" >
														<img alt="" src="<p:equipImg type="small" id="${member.playerEquipmentId3 }" />"/>
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
											<span class="fc-normal-05-l"><spring:message code="label.cg1208.union.level"/></span> <span>${member.level }</span>
										</div>
										<div class="commonPading05">
											<span class="fc-normal-05-l"><spring:message code="label.cg1208.union.playerFriend"/></span>
											 <span><c:if test="${ not empty member.friendCount }" >${member.friendCount }</c:if><c:if test="${empty member.friendCount }" >0</c:if></span>
											 <span class="fc-normal-05-l">/ <c:if test="${ not empty member.maxFriendCount }" >${member.maxFriendCount }</c:if><c:if test="${empty member.maxFriendCount }" >0</c:if></span>
										</div>
									</div>
									<div class="commonPading01 clickTone1 second-row-style">
										<div class="commonPading05">
											<img id="${member.id }_${member.playerId}" class="agree button_search" src="<p:localurl value="/resources/images/buttons/tongyi-green.png"/>" />
										</div>
										<div class="commonPading05">
											<img id="${member.playerId }_${member.id}" class="reject button_search" src="<p:localurl value="/resources/images/buttons/jujue-blue.png"/>" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</tags:pagination>
	</c:if>
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1201/cg120108.js'/>"></script>