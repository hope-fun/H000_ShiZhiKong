<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<script type="text/javascript">
	function create(){
		var unionName = $("#name").val();
		if(unionName){
			$("#createImg").unbind("click");
			createUnion();
			$("#createImg").bind("click",create);
		}else{
			kpyxTips("<spring:message code='label.cg1201.message.unionNameEmpyt' />");
		}
	}
	function createUnion(){
		var url="<p:fullurl value='/cg1201/cg120101/createUnion/' />";
		var encodeStr = encodeURI(encodeURI($("#name").val()));
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(url + encodeStr, randomParms, function(
				message) {
			if (message != null) {
				if (message.data != null && message.data != "success") {
					$("createImg").attr("disabled",true);
					kpyxTips("<spring:message code='label.cg1201.message.sorry' />"+ "," + message.data);
					
				} else if (message.data != null && message.data == "success") {
					var form = document.forms[0];
					form.action = '<p:fullurl value="/cg1201/cg120102/index" />';
					form.submit();
				}
			}
		}, "json");
	}
	
</script>
<div class="content">
	<form action="" method="POST">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120101.createunion.title" /></span>
	</div>
	
	<div>
		<utils:npcDialog dialogVal="${npcMessage }" dialogType="msgVal" imageType="2" />
	</div>
	
	<div class="center-sousuo">
		<div>
			<input type="text" name="name" id="name" maxlength="6" class="input_class search-input-style">
		</div>
		<div class="fc-normal-06-m padding-top">
			<spring:message code='label.cg120121.union.nameCountInfo' />
		</div>
	</div>
	<div class="chuangjianButton">
		<img
			src="<p:localurl value="/resources/images/buttons/chuangjian-green.png"/>" class="clickTone1" onclick="create()" id="createImg"/>
	</div>
	</form>
</div>