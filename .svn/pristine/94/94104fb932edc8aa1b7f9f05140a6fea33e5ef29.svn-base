<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="unions" tagdir="/WEB-INF/tags/union" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg1201/cg120105/searchUnionByName" var="nameSearchUrl"/>

<c:if test="${not empty requestType or requestType == 'ajax' }">
	<!--<unions:unionList items="${unionList }" searchData="${searchUnionVO }" searchUrl="${nameSearchUrl }"></unions:unionList> -->
</c:if>

<c:if test="${empty requestType}">	
	<div class="content">
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg1205.union.title"/></span>
		</div>
		<div class="create-union-info">
			
			<div class="create-union-name">
				<form id="name_Form" action='${nameSearchUrl }' method="post">
					<input type="text" class="input_class" style="width:75%;" name="unionName" maxlength="20"
						value="<c:if test="${not empty searchUnionVO.unionName }" >${searchUnionVO.unionName }</c:if><c:if test="${empty searchUnionVO.unionName }" ><spring:message code='label.cg1205.union.name'/></c:if>" />
				</form>	
			</div>
			<div class="clickTone1 search-union-name">
				<img class="button_search clickTone1" src="<p:localurl value="/resources/images/buttons/sousuo.png"/>" onclick="submitForm();" />
			</div>
			<div class="clearfix"></div>
		</div>
		
		<div class="split-01"></div>
			
		<unions:unionList items="${unionList }" searchData="${searchUnionVO }" searchUrl="${nameSearchUrl }"></unions:unionList>
		
		<div class="commonPading01 clickTone1 search-twice-button">
			<img class="button_search clickTone1" src="<p:localurl value="/resources/images/buttons/zaicisousuo-green-z.png"/>" onclick="submitForm();" />
		</div>
	</div>
</c:if>

<script type="text/javascript">
<!--
function submitForm() {
	if("<spring:message code='label.cg1205.union.name' />" == $("input[name=unionName]").attr("value")) {
		$("input[name=unionName]").attr("value","");
	}
	document.forms[0].submit();
}
// add by liao_yuehong
$(document).ready(function() {
	
	//初始化页面时，字体置灰
	if("<spring:message code='label.cg1205.union.name' />" == $("input[name=unionName]").attr("value")) {
		$("input[name=unionName]").css("color", "gray");
	}
	
	$("input[name=unionName]").bind("focus", function() {
		var self = $(this);
		var val = self.attr("value");
		if("<spring:message code='label.cg1205.union.name' />" == val){
			//内容置空
			self.attr("value", "");
			self.css("color", "black");
		}
	});
});
//-->
</script>