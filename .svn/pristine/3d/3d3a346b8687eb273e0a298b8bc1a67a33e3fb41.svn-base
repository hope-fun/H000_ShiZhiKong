<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>

<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<p:fullurl value="${searchFilterAction }" var="searchFilterAction" />
<p:fullurl value="/cg1201/cg120109/updateUnionMemberInfo/" var="updateUnionMemberInfo" />
<p:fullurl value="/cg1201/cg120109/distributeUnionCrystal/" var="distributeUnionCrystal" />
<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
<input id="doDistributeCrystalUrl" type="hidden" value="${distributeUnionCrystal }" />
<input id="shotOffSurePageUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120110/index/" />" />
<input type="hidden" id="full_applyFriend_url" value="<p:fullurl value="/cg0501/cg050106/doApplyFriend/" />" />
<input type="hidden" id="apply_message" value="<spring:message code="label.cg0501.playertag.applymessage"></spring:message>" />
<input type="hidden" id="max_message" value="<spring:message code="label.cg0501.playertag.maxmessage"></spring:message>" />
<input type="hidden" id="cg120109memberlimit" value="<spring:message code="label.cg120109.memberlimit"></spring:message>" />
<input type="hidden" id="cg120109distribute" value="<spring:message code="label.cg120109.distribute"></spring:message>" />
<input type="hidden" id="cg120109givecystal" value="<spring:message code="label.cg120109.givecystal"></spring:message>" />
<input type="hidden" id="cg120109providecount" value="<spring:message code="label.cg120109.providecount"></spring:message>" />
<input type="hidden" id="cg120109providemax" value="<spring:message code="label.cg120109.providemax"></spring:message>" />
<input type="hidden" id="cg120109provideweek" value="<spring:message code="label.cg120109.provideweek"></spring:message>" />
<input type="hidden" id="cg120109providesuccess" value="<spring:message code="label.cg120109.providesuccess"></spring:message>" />
<input type="hidden" id="cg120109providefail" value="<spring:message code="label.cg120109.providefail"></spring:message>" />
<input type="hidden" id="cg120109applysend" value="<spring:message code="label.cg120109.applysend"></spring:message>" />
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120109.title" /></span>
	</div>
	
	<c:if test="${empty unionMemberJoinList }" >
		<div class="align-center"></div>
	</c:if>
	
	<c:if test="${not empty unionMemberJoinList }" >
		<div class="center-site fc-title-01 union-member-num">
			<span><spring:message code="label.cg120109.unionmember" /></span>
			<span class="fc-content-02"><c:out value="${memberCount }" /></span>
			<span class="fc-content-02">/</span><span><c:out value="${maxMemberCount }" /></span>
		</div>
		<tags:pagination items="${unionMemberJoinList }" id="unionMemberJoinList" method="GET" renderAjax="false" searchData="${searchVO }" paginationUrl="${searchFilterAction }">
		<div>
		<c:forEach items="${unionMemberJoinList }" var="member" varStatus="idx">
			<div class="panel-02 card-campe-height">
				<div class="<cssutils:cardCamp campType='${member.cardCamp}'/>">
					<div class="panel-header">
						<div class="rivail-info"><span><c:out value="${member.playerName }" /></span></div>
						
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
					<div class="panel-body" >
						<div class="card-major">
							<div class="middle-card-width">
								<div class="card-major-image">
									<img src="<p:cardImg type="middle" id="${member.cardId }" />" />
								</div>
								<div class="card-major-image-equipment middel-equips-width">
									<div>
										<c:if test="${ not empty member.playerEquipmentId1 }" >
											<img src="<p:equipImg type="middle" id="${member.playerEquipmentId1 }" />" />
										</c:if>
										<c:if test="${ empty member.playerEquipmentId1 }" >
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
										</c:if>
									</div>
									<div>
										<c:if test="${ not empty member.playerEquipmentId2 }" >
											<img src="<p:equipImg type="middle" id="${member.playerEquipmentId2 }" />" />
										</c:if>
										<c:if test="${ empty member.playerEquipmentId2 }" >
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
										</c:if>
									</div>
									<div>
										<c:if test="${ not empty member.playerEquipmentId3 }" >
											<img src="<p:equipImg type="middle" id="${member.playerEquipmentId3 }" />" />
										</c:if>
										<c:if test="${ empty member.playerEquipmentId3 }" >
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
										</c:if>
									</div>
									<div></div>
								</div>
							</div>
							<div class="middle-info-width middle-info-padding">
								<div class="member-info">
									<div class="fc-title-01" style="text-align: left;">
										<span><spring:message code="label.cg120109.level" /></span>
										<span class="fc-content-02"><c:out value="${member.level }" /></span>
									</div>
									<div>
										<div class="fc-title-01" style="float: left;">
											<span><spring:message code="label.cg120109.job" /></span>
											<c:if test="${false eq isBoss || (0 == idx.index && searchVO.pageIndex == 0) }">
												<span class="fc-content-02">
													<c:out value="${member.unionTitle }" />
												</span>
											</c:if>
										</div>
										
										<c:if test="${(true eq isBoss && 0 < idx.index && searchVO.pageIndex==0) ||true eq isBoss &&searchVO.pageIndex!=0}">
											<div class="union-member-style">
												<form action="${updateUnionMemberInfo }" method="get">
													<select class="input_class_small" name="unionTitleId"
														onChange="titleSelectSubmit(this, '${member.unionTitleId }', '${member.playerId }', '${member.unionId }')">
														<c:forEach items="${member.unionTitleList }" var="title">
															<option id="${title.id }" value="${title.id }" ${member.unionTitleId eq title.id ? "selected" : ""} ><c:out value="${title.name }" /></option>
														</c:forEach>
													</select>
												</form>
											</div>
										</c:if>
										
									</div>
									<c:if test="${(true eq isBoss && 0 < idx.index && searchVO.pageIndex==0) ||true eq isBoss &&searchVO.pageIndex!=0}">
										<div>
											<div class="fc-title-01" style="float: left;">
												<span><spring:message code="label.cg120109.distributeunioncrystal" /></span>
											</div>
											<div class="union-member-style">
												<input id="crystal_${member.playerId }" name="crystalNum" type="text" maxlength="12"
													onkeyup="this.value=this.value.replace(/\D/g,'')" class="input_class_small" ${member.unionTitleId eq 'U1' ? "disabled" : "" } />
											</div>
										</div>
									</c:if>
								</div>
								
								<div class="union-member-detail">
									<div class="union-member-button" id="detail">
									     <a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120130/index/${member.playerId }" />';event.preventDefault();">
							             	<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/chakanxiangqing-green.png"/>" />
							             </a>
										</div>
										
										<c:if test="${member.isCanApply==true }" >
											<div id="show_apply_${member.playerId }" class="apply-union-friend">
									             <img class="showapply clickTone1" id="${member.playerId }"  src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>"/>
									      	</div>
									      	<div id="hidden_apply_${member.playerId }" class="apply-union-friend02"  >
									           <img class="button_gray"  src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>"/>
									      	</div>
							      		</c:if>
							      					
							      		<c:if test="${member.isCanApply==false }" >
									        <div id="hidden_apply_${member.playerId }" class="apply-union-friend03">
									        <img class="button_gray"  src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>"/>
									      	</div>
							      		</c:if>						
									<c:if test="${(true eq isBoss && 0 < idx.index && searchVO.pageIndex==0) ||true eq isBoss &&searchVO.pageIndex!=0 }">
										<div class="distribute member-dis-style"  ${0 eq idx.index ? "disabled" : "" }
											onClick="distributeUnionCrystal('${member.playerId }' , '${member.playerName }')">
											<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/fafang-green.png"/>" />
										</div>
										<div class="shotOff member-button-style"  ${0 eq idx.index ? "disabled" : "" }
											onClick="shotOffSurePage('${member.id }')">
											<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/tichu-blue.png"/>" />
										</div>
									</c:if>
								</div>
								
							</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		</tags:pagination>
	</c:if>
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1201/cg120109.js'/>"></script>