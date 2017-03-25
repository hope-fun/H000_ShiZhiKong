<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120119.title" /></span>
	</div>

	<div class="memberList">
		<c:if test="${not empty recordsViewDatas }">
		<c:set var="paginationParams" value="${recordsViewDatas}" scope="request" />
		<c:set var="paginationUrl"
			value="/kpyx-logical-service/cg1201/cg120119/index" scope="request" />
		<tags:pagination items="${recordsViewDatas}" paginationUrl="${paginationUrl }" searchData="${searchData }" method="GET"> 	
			<c:forEach items="${recordsViewDatas }" var ="recordsViewData">
				<div class="panel-03">
					<div class='<cssutils:cardCamp campType="${recordsViewData.playerVO.camp}"></cssutils:cardCamp>'>
						<div class="panel-header">
							<div class="rivail-info">
								<span>${recordsViewData.playerVO.name }</span>
							</div>
							
							<div class="small-rank-pic">
								<c:if test="${recordsViewData.ranking > 0 }">
									<img src="<p:localurl value="/resources/images/small-ranking-${recordsViewData.ranking}.png"/>" />
								</c:if>
							</div> 
							
							
							<div class="vip-level-style03">
								<c:if test="${ recordsViewData.playerVO.vipLevel > 0 }">
									<img src="<p:localurl value="/resources/images/viplevel/${recordsViewData.playerVO.vipLevel}.png"/>" />
								</c:if>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-assistant">
								<div class="small-card-width">
									<div class="card-assistant-image">
										<img src='<p:cardImg type="small" id="${recordsViewData.playerCardVO.cardId }"></p:cardImg>' />
									</div>
								</div>
								<div class="equips-width">
									<div class="card-assistant-equipment">
										<div class="card-equipment ">
											<div class="one-equipment icon-location">
												<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId1}">
													<img alt=""src="<p:equipImg type="small" id="${recordsViewData.playerCardVO.playerEquipment1.equipmentId }" />" />
												</c:if>
												<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId1}">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</c:if>
											</div>
											<div class="one-equipment icon-location">
												<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId2}">
													<img alt=""src="<p:equipImg type="small" id="${recordsViewData.playerCardVO.playerEquipment2.equipmentId }" />" />
												</c:if>
												<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId2}">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</c:if>
											</div>
											<div class="one-equipment icon-location">
												<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId3}">
													<img alt=""src="<p:equipImg type="small" id="${recordsViewData.playerCardVO.playerEquipment3.equipmentId }" />" />
												</c:if>
												<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId3}">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</c:if>
											</div>
										</div>
									</div>
								</div>
								<div class="commonPading01 player-info-style">
									<div class="donate-coin-style">
										<span class="fc-normal-05-l"><spring:message code="label.cg120119.donate.coin" />: </span> <span>${recordsViewData.donateAmount }</span>
									</div>
									<div class="commonPading07">
										<span class="fc-normal-05-l"><spring:message code="label.cg120119.union.devote" />: </span> <span><fmt:formatNumber type="number" value="${recordsViewData.donateAmount/100 }" maxFractionDigits="0" /></span>
									</div>
									<div class="commonPading07 fc-normal-05-l danate-date-style">
										<span><fmt:formatDate value="${recordsViewData.donateDate}" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate></span>
									</div>
								</div>
		
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</tags:pagination>
		</c:if>
	</div>
</div>