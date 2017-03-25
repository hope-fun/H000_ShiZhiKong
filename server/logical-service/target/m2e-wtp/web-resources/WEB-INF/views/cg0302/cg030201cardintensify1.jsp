<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0302/cg0302.js"/>"></script>
<c:set var="requestType" value="${header['requestType']}"></c:set>
<c:if test="${not empty requestType or requestType == 'ajax' }">
	<cards:listforintensify searchData="${searchPlayerCardVO}"
		searchUrl="/kpyx-logical-service/cg0302/cg0302011/search"
		items="${playerCards}" normalOrLarger="0"></cards:listforintensify>
</c:if>
<c:if test="${empty requestType}">
	<script>
		$(function() {
			var playerCardId = document.getElementsByName("playerCardId")[0]
					.cloneNode();
			document.forms[0].appendChild(playerCardId);
			var obj = document.getElementById("campFilter")
					.getElementsByTagName("a");
			for ( var i = 0, len = obj.length; i < len; i++)
				obj[i].href += "&playerCardId=" + playerCardId.value;
			$(".pagination-button").bind("click",function() {
								var clickEventObj = $(".pagination-button").click;
								document.forms[1].selectInfo.value = document.forms[1].camp.value
										+ "_"
										+ document.forms[1].selectInfo.value;
								clickEventObj();
							});
		});
		
		
	</script>
	<input type="hidden" id="cg0302materialcards" value="<spring:message code='label.cg0302.materialcards' />"/>
	<input type="hidden" id="cg0302materialcardslimit" value="<spring:message code='label.cg0302.materialcardslimit' />"/>
	<div class="content">
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg030201.title"></spring:message></span>
		</div>
		<div>
			<div class="panel-02">
				<div>
					<div class="panel-header">
						<span>${mainPlayerCard.name}</span>
						<div class="stars">
							<c:forEach begin="0" end="${mainPlayerCard.star - 1}" var="idx">
								<img
									src="<p:localurl value="/resources/images/star-d.png"/>" />
							</c:forEach>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-body">
						<div class="card-major">
							<div class="left">
								<div class="card-major-image">
									<img
										src='<p:cardImg type="middle" id="${mainPlayerCard.cardId }"></p:cardImg>' />
								</div>
								<div class="card-major-image-equipment">
									<div>
										<c:if test="${ not empty mainPlayerCard.playerEquipment1 }">
											<img src="<p:equipImg type="middle" id="${mainPlayerCard.playerEquipment1.equipmentId }" />" />
										</c:if>
										<c:if test="${empty mainPlayerCard.playerEquipment1 }">
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
										</c:if>
									</div>
									<div>
										<c:if test="${ not empty mainPlayerCard.playerEquipment2 }">
											<img src="<p:equipImg type="middle" id="${mainPlayerCard.playerEquipment2.equipmentId }" />" />
										</c:if>
										<c:if test="${empty mainPlayerCard.playerEquipment2 }">
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
										</c:if>
									</div>
									<div>
										<c:if test="${ not empty mainPlayerCard.playerEquipment3 }">
											<img src="<p:equipImg type="middle" id="${mainPlayerCard.playerEquipment3.equipmentId }" />" />
										</c:if>
										<c:if test="${empty mainPlayerCard.playerEquipment3 }">
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
										</c:if>
									</div>
									<div></div>
								</div>
							</div>
							<div class="right">
								<div class="card-major-desc">
									<div class="card-major-data">
										<div class="icon icon-level">
											<span><spring:message
													code="label.cg030101.maincard.level"></spring:message></span> <span><c:out
													value="
												${(empty (mainPlayerCard.cardLevel) || mainPlayerCard.cardLevel<1) ? 1 : mainPlayerCard.cardLevel}" /></span>
										</div>
										<div class="icon icon-physicalstrength">
											<span><spring:message
													code="label.cg030101.maincard.strengthrequire"></spring:message></span>
											<span><c:out
													value="
												${(empty (mainPlayerCard.strengthRequireAdded) || mainPlayerCard.strengthRequireAdded<0) ? 0 : mainPlayerCard.strengthRequireAdded}" /></span>
										</div>
										<div class="icon icon-total-fighting-energy">
											<span><spring:message
													code="label.cg030101.maincard.attack"></spring:message></span> <span><c:out
													value="
												${(empty (mainPlayerCard.attackAdded) || mainPlayerCard.attackAdded<0) ? 0 : mainPlayerCard.attackAdded }" /></span>
										</div>
										<div class="icon icon-total-shield-energy">
											<span><spring:message
													code="label.cg030101.maincard.defence"></spring:message></span> <span><c:out
													value="
												${(empty (mainPlayerCard.defenceAdded) || mainPlayerCard.defenceAdded<0) ? 0 : mainPlayerCard.defenceAdded}" /></span>
										</div>
										<div></div>
									</div>
									<div class="card-major-experience">
										<div class="fc-normal-01-l">
											<span><spring:message
													code="label.cg030101.maincard.growingpercent"></spring:message></span>
										</div>
										<div class="progress">
											<c:if test="${mainPlayerCard.growingPercent >= 0 }">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="<c:out value="${mainPlayerCard.growingPercent<=100 ? mainPlayerCard.growingPercent : 100}" />"></div>
											</c:if>
											<c:if test="${mainPlayerCard.growingPercent < 0 }">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="0"></div>
											</c:if>
										</div>
										<div></div>
									</div>
									<div class="btn-genggaidika"></div>
								</div>
							</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="split-01 clearfix"></div>
		<div class="menu-medium title-label-02">
			<span><spring:message code="label.cg030201.subtitle"></spring:message></span>
		</div>
		<div class="tab-view">
			<div onclick="window.location.href = '<p:fullurl value="/cg0302/cg0302011/index?playerCardId=" />'+ document.forms[0].playerCardId.value">
				<img width="100%" height="100%"  src="<p:localurl value="/resources/images/buttons/yibanhecheng-yellow-b.png" />" />
				</div>
			<div onclick="window.location.href = '<p:fullurl value="/cg0302/cg030201/index?playerCardId=" />'+ document.forms[0].playerCardId.value">
				<img width="100%" height="100%"  src="<p:localurl value="/resources/images/buttons/pilianghecheng-blue-b.png" />" />
			</div>
			<div></div>
		</div>
		<div class="split-line"></div>
		<c:set var="searchFilterCamp"
			value="${not empty searchPlayerCardVO.camp?searchPlayerCardVO.camp:'NONE'}"
			scope="request" />
		<c:set var="searchFilterAction" value="/cg0302/cg0302011/search"
			scope="request" />
		<c:set var="orderSelectValue"
			value="${not empty searchPlayerCardVO.selectInfo?searchPlayerCardVO.selectInfo:'STAR_DESC'}"
			scope="request" />
		<div id="campFilter">
			<jsp:include
				page="/WEB-INF/views/commons/searchFilter/campFilter.jsp"
				flush="true"></jsp:include>
		</div>
		<c:set var="paginationParams" value="${playerCards}" scope="request"></c:set>
		<c:set var="totalSize" scope="request">
			<spring:eval expression="paginationParams.getTotalSize()"
				htmlEscape="false" />
		</c:set>
		<div class="fc-title-01 centerFont">
			<span><spring:message code="label.cg030201.allcards"></spring:message></span>
			<span class="fc-content-02 centerFont">${totalSize}</span> <span>/${playerInfo.cardsMax}</span>
		</div>
		<jsp:include
			page="/WEB-INF/views/commons/searchFilter/orderSelect.jsp"
			flush="true"></jsp:include>
		<div id="btn_more_intensify">
			<div>
				<img src='<p:localurl value="/resources/images/buttons/he-cheng-green-second.png"/>'>
			</div>
			<div class="more_intensify_font">
				<spring:message code="label.cg030201.message"></spring:message>
			</div>
		</div>
		<cards:listforintensify searchData="${searchPlayerCardVO}"
			searchUrl="/kpyx-logical-service/cg0302/cg0302011/search"
			items="${playerCards}" normalOrLarger="0"></cards:listforintensify>
	</div>
</c:if>

