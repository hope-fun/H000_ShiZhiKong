<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120118.title" /></span>
	</div>

	<c:if test="${not empty recordsViewDatas }">
	<c:set var="paginationParams" value="${recordsViewDatas}" scope="request" />
	<c:set var="paginationUrl"
		value="/kpyx-logical-service/cg1201/cg120118/index" scope="request" />
	<tags:pagination items="${recordsViewDatas}" paginationUrl="${paginationUrl }" searchData="${searchData }" method="GET"> 	
	<c:forEach items="${recordsViewDatas }" var ="recordsViewData" varStatus="status">
	<div>
		<c:if test="${status.count ==1 }">
		<div class="panel-02">
			<div class='<cssutils:cardCamp campType="${recordsViewData.playerVO.camp}"></cssutils:cardCamp>'>
				<div class="panel-header">
					<div class="player-name-style">
						<span>${recordsViewData.playerVO.name }</span>
					</div>
					
					<div class="small-rank-pic">
						<c:if test="${recordsViewData.ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${recordsViewData.ranking}.png"/>" />
						</c:if>
					</div> 
					
					<div class="vip-level-style02">
						<c:if test="${ recordsViewData.playerVO.vipLevel > 0 }">
							<img src="<p:localurl value="/resources/images/viplevel/${ recordsViewData.playerVO.vipLevel}.png"/>" />
						</c:if>
					</div>
					<div class="ming-style">
						<spring:message code="label.cg120118.di"/>${status.count+searchData.pageIndex*searchData.pageSize}<spring:message code="label.cg120118.ming"/>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="panel-body">
					<div class="card-major">
						<div class="middle-card-width">
							<div class="card-major-image">
								<img src='<p:cardImg type="middle" id="${recordsViewData.playerCardVO.cardId }"></p:cardImg>' />
							</div>
							<div class="card-major-image-equipment middel-equips-width">
								<div>
									<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId1}">
										<img alt="" src="<p:equipImg type="middle" id="${recordsViewData.playerCardVO.playerEquipment1.equipmentId }" />" />
									</c:if>
									<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId1}">
										<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
									</c:if>
								</div>
								<div>
									<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId2}">
										<img alt="" src="<p:equipImg type="middle" id="${recordsViewData.playerCardVO.playerEquipment2.equipmentId }" />" />
									</c:if>
									<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId2}">
										<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
									</c:if>
								</div>
								<div>
									<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId3}">
										<img alt="" src="<p:equipImg type="middle" id="${recordsViewData.playerCardVO.playerEquipment3.equipmentId }" />" />
									</c:if>
									<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId3}">
										<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
									</c:if>
								</div>
								<div></div>
							</div>
						</div>
						<div class="middle-info-width middle-info-padding02">
							<div class="member-info mem-info-width">
								<div class="fc-title-01 record-player-level">
									<span><spring:message code="label.cg120118.level"/>: </span><span class="fc-content-02">${recordsViewData.playerVO.level}</span>
								</div>
								
								<div class="fc-title-01" style="text-align: left;">
									<span><spring:message code="label.cg120118.donate"/>: </span><span class="fc-content-02">${not empty recordsViewData.unionMemberVO.contribution ? recordsViewData.unionMemberVO.contribution : 0}</span><span class="fc-content-02"><spring:message code="label.CG020108.cystal"/></span>
								</div>
								
							</div>
							
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${status.count !=1 }">
		<div class="panel-03">
			<div class='<cssutils:cardCamp campType="${recordsViewData.playerVO.camp}"></cssutils:cardCamp>'>
				<div class="panel-header">
					<div class="player-name-style">
						<span>${recordsViewData.playerVO.name }</span>
					</div>
					
					<div class="small-rank-pic">
						<c:if test="${recordsViewData.ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${recordsViewData.ranking}.png"/>" />
						</c:if>
					</div> 
					
					<div class="vip-level-style02">
						<c:if test="${ recordsViewData.playerVO.vipLevel > 0 }">
							<img src="<p:localurl value="/resources/images/viplevel/${ recordsViewData.playerVO.vipLevel}.png"/>" />
						</c:if>
					</div>
					<div class="ming-style">
						<spring:message code="label.cg120118.di"/>${status.count+searchData.pageIndex*searchData.pageSize}<spring:message code="label.cg120118.ming"/>
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
									<div class="one-equipment icon-location" >
										<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId1}">
											<img alt="" src="<p:equipImg type="small" id="${recordsViewData.playerCardVO.playerEquipment1.equipmentId }" />" />
										</c:if>
										<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId1}">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
										</c:if>
									</div>
									<div class="one-equipment icon-location" >
										<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId2}">
											<img alt="" src="<p:equipImg type="small" id="${recordsViewData.playerCardVO.playerEquipment2.equipmentId }" />" />
										</c:if>
										<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId2}">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
										</c:if>
									</div>
									<div class="one-equipment icon-location" >
										<c:if test="${not empty recordsViewData.playerCardVO.playerEquipmentId3}">
											<img alt="" src="<p:equipImg type="small" id="${recordsViewData.playerCardVO.playerEquipment3.equipmentId }" />" />
										</c:if>
										<c:if test="${empty recordsViewData.playerCardVO.playerEquipmentId3}">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
										</c:if>
									</div>
								</div>
							</div>
						</div>
						<div class="commonPading01 first-row-style"	>
							<div class="commonPading05">
								<span class="fc-normal-05-l"><spring:message code="label.cg120118.level"/>: </span> <span>${recordsViewData.playerVO.level}</span>
							</div>
							<div class="commonPading05">
								<span class="fc-normal-05-l"><spring:message code="label.cg120118.donate"/>: </span> <span>${not empty recordsViewData.unionMemberVO.contribution ? recordsViewData.unionMemberVO.contribution : 0}<spring:message code="lablel.raidtype.SCOIN"/></span>
							</div>
						</div>
	
					</div>
				</div>
			</div>
		</div>
		</c:if>
	</div>
	</c:forEach>
	</tags:pagination>
	</c:if>

</div>