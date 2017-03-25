<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1206.union.title"/></span>
	</div>
	<div class="panelXuanChuan">
		<img alt="" src="<p:localurl value="/resources/images/xuanchuan/gonghuixuanchuan.png"/>"/>
	</div>
	<div>
		<div class="panel-header-style">
			<div class="phase-header">
				<span class="padding-left22"><spring:message code="label.cg1206.union.info"/></span>
			</div>
		</div>
		<div style="width: 100%;">
			<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA01-height"></div>
				<div class="panelA-footer"></div>
				<div class="border-content-noleft">
					<div class="commonPading02 clickTone1 meng-pic">
						<img src="<p:localurl value="/resources/images/meng.png"/>" />
					</div>
					<div class="commonPading02 clickTone1 union-level">
						<div class="commonPading05" style="width: 100%;">
							<span class="fc-normal-05-l"><spring:message code="label.cg1205.union.level"/>:</span>
							<span>${union.level }</span>
						</div>
						<div class="commonPading05 clickTone1" style="width: 100%;">
							<span class="fc-normal-05-l"><spring:message code="label.cg1205.union.creator"/>:</span> 
							<span>${union.creatorName }</span>
						</div>
						<div class="commonPading05 clickTone1" style="width: 100%;">
							<span class="fc-normal-05-l"><spring:message code="label.cg1206.union.crystal"/>:</span> 
							<span><c:if test="${not empty union.silverCoin }">${union.silverCoin }</c:if><c:if test="${empty union.silverCoin }">0</c:if></span>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	
	<input type="hidden" id="apply_message" value="<spring:message code="label.cg1205.union.existUnionMember" />" />
	<input type="hidden" id="maxMember_message" value="<spring:message code="label.cg1205.union.maxUnionMember" />" />
	<input type="hidden" id="memberLevel_message" value="<spring:message code='label.cg1205.union.unionMemberLevel' />" />
	<input type="hidden" id="check_Url" value='<p:fullurl value="/cg1201/cg120105/checkJoinUnionMember/"/>' />
	<input type="hidden" id="apply_Url" value='<p:fullurl value="/cg1201/cg120107/index/${type }/"/>' />
	
	<input type="hidden" id="unionName" value='${unionName }' />
	<input type="hidden" id="pageIndex" value='${pageIndex }' />
	
	<div class="clickTone1 cg120106-apply-union" style='display:<c:if test="${union.isCanApply==true }">block;</c:if><c:if test="${union.isCanApply==false }">none;</c:if>'>
		<img id="${union.id }" class="button_search apply_green " src="<p:localurl value="/resources/images/buttons/shenqingrumeng-green-z.png"/>" />
	</div>
	<div class="cg120106-apply-union" style='display:<c:if test="${union.isCanApply==false }">block;</c:if><c:if test="${union.isCanApply==true }">none;</c:if>'>
		<img class="button_gray" src="<p:localurl value="/resources/images/buttons/shenqingrumeng-green-z.png"/>" />
	</div>
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1201/cg120105.js'/>"></script>