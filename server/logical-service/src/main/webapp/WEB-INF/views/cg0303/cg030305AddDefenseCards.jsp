<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="${searchFilterAction}" var="cardSearchURL"/>	
<c:if test="${not empty requestType or requestType == 'ajax' }">
	<cards:listgroupcards searchData="${searchPlayerCardVO }" searchUrl="${cardSearchURL }" items="${playerCards}"></cards:listgroupcards>
</c:if>	
<c:if test="${empty requestType}">
	<div class="content cg030305">
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg030305.title"></spring:message></span>
		</div>
		<c:if test="${ not empty backPlayerCard }">
			<div id="edit-groupcard">
				<div class="panel-02">
					<div class='<cssutils:cardCamp campType="${backPlayerCard.cardCamp}"></cssutils:cardCamp>'>
						<div class="panel-header">
							<span><c:out value="${backPlayerCard.name }"></c:out></span>
							<div class="card_star">
								<c:forEach var="i" begin="1" end="${backPlayerCard.star}" step="1">
									<img src="<p:localurl value="/resources/images/star-d.png"/>"></img>
								</c:forEach>
							</div>
		
						</div>
						<div class="panel-body">
							<div class="card-major">
								<div class="div11">
									<div class="card-major-image">
										<img class="img-action clickTone1" 
											src='<p:cardImg type="middle" id="${backPlayerCard.cardId }"></p:cardImg>' onclick='location.href="<p:fullurl value="/cg0301/cg030102/cardDetail/${backPlayerCard.id} "/>"'/>
									</div>
									<input type ="hidden" class="backgroud_card" value="${backPlayerCard.id }"/>
									<div class="card-major-image-equipment">
										<div>
											<c:if test="${ not empty backPlayerCard.playerEquipmentId1 }">
												<img alt=""
													src="<p:equipImg type="small" id="${backPlayerCard.playerEquipment1.equipmentId }"/>" />
											</c:if>
										</div>
										<div>
											<c:if test="${ not empty backPlayerCard.playerEquipmentId2 }">
												<img alt=""
													src="<p:equipImg type="small" id="${backPlayerCard.playerEquipment2.equipmentId }"/>" />
											</c:if>
										</div>
										<div>
											<c:if test="${ not empty backPlayerCard.playerEquipmentId3 }">
												<img alt=""
													src="<p:equipImg type="small" id="${backPlayerCard.playerEquipment3.equipmentId }"/>" />
											</c:if>
										</div>
										<div></div>
									</div>
								</div>
								<div class="div12">
									<div class="card-major-desc">
										<div class="card-major-data">
											<div class="icon icon-level">
												<span><spring:message
														code="label.cg030101.maincard.level"></spring:message></span> <span><c:out
														value="${backPlayerCard.cardLevel }" /></span>
											</div>
											<div class="icon icon-physicalstrength">
												<span><spring:message
														code="label.cg030101.maincard.strengthrequire"></spring:message></span>
												<span><c:out
														value="${backPlayerCard.strengthRequireAdded }" /></span>
											</div>
											<div class="icon icon-total-fighting-energy">
												<span><spring:message
														code="label.cg030101.maincard.attack"></spring:message></span> <span><c:out
														value="${backPlayerCard.attackAdded }" /></span>
											</div>
											<div class="icon icon-total-shield-energy">
												<span><spring:message
														code="label.cg030101.maincard.defence"></spring:message></span> <span><c:out
														value="${backPlayerCard.defenceAdded }" /></span>
											</div>
											<div></div>
										</div>
										<div class="card-major-experience">
											<div class="fc-normal-01-l div1">
												<span><spring:message
														code="label.cg030101.maincard.growingpercent"></spring:message></span>
											</div>
											<div class="div2">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="${backPlayerCard.growingPercent }"></div>
										</div>
										<div></div>
									</div>
								</div>
							</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
			<div class="split-01"></div>
		</div>
		</c:if>
		<jsp:include page="../commons/searchFilter/campFilter.jsp" flush="true" ></jsp:include>
	
		<jsp:include page="../commons/searchFilter/orderSelect.jsp" flush="true" ></jsp:include>
		
		<div id="cardSelectType">
			<span class="fc-title-01"><spring:message
					code="label.cg030303.surplusdemand"></spring:message></span> <span><c:out
					value="${surplus}" /></span> <span class="fc-title-01">/</span>
					<span class="fc-title-01"> <c:out value="${playerVo.defencePowerMax}" /></span>
		</div>
	
	
		<div class="addCard">
			<spring:message code="label.cg030303.addcardtitle"></spring:message>
		</div>
	
	
	
		<c:if test="${empty playerCards }">
			<div class="align-center"><spring:message code="label.cg030305.nosuitcards"></spring:message></div>
		</c:if>
		<c:if test="${not empty playerCards }">
	
			<c:set var="paginationParams" value="${playerCards}" scope="request" />
			<cards:listgroupcards searchData="${searchPlayerCardVO }" searchUrl="${cardSearchURL }" items="${playerCards}"></cards:listgroupcards>
			
		</c:if>
		<c:if test="${not empty  backPlayerCard}">
			<input type="hidden" value ='/cg0303/cg030305/addCard/${playerCardGroupId}/${backPlayerCard.id }' id="urlPath"/>
		</c:if>
		<c:if test="${ empty  backPlayerCard}">
			<input type="hidden" value ='/cg0303/cg030305/addCard/${playerCardGroupId}' id="urlPath"/>
		</c:if>	
	</div>
</c:if>	
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0303/cg030303.js"/>"></script>