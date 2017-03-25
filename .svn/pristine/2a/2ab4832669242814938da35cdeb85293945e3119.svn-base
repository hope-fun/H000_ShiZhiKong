<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<script type="text/javascript">
	function search(){
		var form = document.forms["searchForm"];
		form.action='<p:fullurl value="/cg1201/cg120121/search"/>';
		form.submit();
	}

	$(function(){
		var returnValue = $("#returnValue").val();
		if("success"!=returnValue&&""!=returnValue){
			kpyxTips(returnValue);
		}
	})
</script>
<div class="content">
<form action="" method="POST" name="searchForm">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120121.title" /></span>
	</div>
	<div class="search-condition-style">
		<!-- <form action="" method="POST" name="searchByName"> -->
		<div class="search-con-style">
			<input name="unionName" type="text" class="input_class" maxlength="20" 
				value="<c:if test="${not empty searchNameValue }" >${searchNameValue }</c:if>" />
		</div>
		<div class="search-button-style02">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/sousuo.png"/>" onclick="search()"/>
		</div>
		<div class="clearfix"></div>
		<!-- </form> -->
	</div>
	
	<c:forEach items="${unions}" var="union" varStatus="status">
	<c:if test="${status.count ==1 }">
		<div class="commonPading01" style="width: 100%;">
			<div class="recommendUnion menu-medium"><span><spring:message code="label.cg120121.union.recommend" /></span></div>
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB09-height"></div>
				<div class="panelB-footer-right"></div>
				<div class="border-content-noleft">
					<div class="lableText02 commonPadding-top">
						<span>${union.name }</span>
					</div>
					<div class="split-item-down"></div>
					
					
					<div class="union-style">
						<div class="menu-medium union-lev-style">
							<div class="fc-normal-05-l">
								<span><spring:message code="label.cg120121.union.level" />: </span><span class="fc-content-02">${union.level }</span>
							</div>
							<div class="fc-normal-05-l commonPadding-top">
								<span><spring:message code="label.cg120121.union.silverCoin" />: </span><span class="fc-content-02">${union.silverCoin }</span>
							</div>
						
						</div>
						<div class="battle-button-style">
							<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120121/battle/${unionId }/${union.id}" />';event.preventDefault();">
								<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/gongda-green.png"/>'>
							</a>
						</div>
					</div>				
				</div>
			</div>
		</div>
	</c:if>
	</c:forEach>
	
	<div class="split-01"></div>
	<div class="menu-medium center-site">
		<span><spring:message code="label.cg120121.union.orderBy" /></span>
	</div>
	<div class="center-site select-info-style">
	<input name="returnValue" id="returnValue" value="${returnValue}" type="hidden"/>
	<!-- <form action="" name="orderByCondition" method="POST"> -->
		<select class="input_class search-select-style" name="selectInfo" onchange="search()">
			<option value="LEVEL_ASC" ${orderSelectValue eq "LEVEL_ASC"?"selected":""}><spring:message code="label.cg120121.union.levelAsc" /></option>
			<option value="LEVEL_DESC" ${orderSelectValue eq "LEVEL_DESC"?"selected":""}><spring:message code="label.cg120121.union.levelDesc" /></option>
			<option value="SILVERCOIN_ASC" ${orderSelectValue eq "SILVERCOIN_ASC"?"selected":""}><spring:message code="label.cg120121.union.silverCoinAsc" /></option>
			<option value="SILVERCOIN_DESC" ${orderSelectValue eq "SILVERCOIN_DESC"?"selected":""}><spring:message code="label.cg120121.union.silverCoinDesc" /></option>
		</select>
	<!-- </form> -->
	</div>
</form>
	<c:if test="${not empty unions}">
	<c:set var="paginationParams" value="${unions}" scope="request" />
	<c:set var="paginationUrl" value="/kpyx-logical-service/cg1201/cg120121/index" scope="request" />
	<tags:pagination items="${unions}" paginationUrl="${paginationUrl }" searchData="${searchUnionVO }" method="GET"> 	
	<c:forEach items="${unions}" var="union" varStatus="status">
	<c:if test="${status.count !=1 }">
		<div class="commonPading01" style="width: 100%;">
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB09-height"></div>
				<div class="panelB-footer-right"></div>
				<div class="border-content-noleft">
					<div class="lableText02 commonPadding-top">
						<span>${union.name }</span>
					</div>
					<div class="split-item-down"></div>
					
					
					<div class="attack-union-info">
						<div class="menu-medium attack-cost">
							<div class="fc-normal-05-l">
								<span><spring:message code="label.cg120121.union.level" />: </span><span class="fc-content-02">${union.level }</span>
							</div>
							<div class="fc-normal-05-l commonPadding-top">
								<span><spring:message code="label.cg120121.union.silverCoin" />: </span><span class="fc-content-02">${union.silverCoin }</span>
							</div>
						
						</div>
						<div class="attack-union-style">
						    <a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120121/battle/${unionId }/${union.id}" />';event.preventDefault();">
								<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/gongda-green.png"/>'>
							</a>
						</div>
					</div>				
				</div>
			</div>
		</div>
	</c:if>
	</c:forEach>
	</tags:pagination>
	</c:if>
</div>
