<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<script type="text/javascript">
	function writeDes(){
		var form = document.forms[0];
		form.action = '<p:fullurl value="/cg1201/cg120103/editDes"/>';
		form.submit();
	}

</script>
<div class="content">
<form action="" method="POST">
	<input type="hidden" name="id" value="${union.id }"></input>
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120103.edit.title" /></span>
	</div>
	
	<div>
		<utils:npcDialog dialogVal="label.cg120103.edit.npc" dialogType="msgKey" imageType="2" />
	</div>

	<div>
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header">
					<span class="padding-left22"><spring:message code="label.cg120103.edit.nowinfo" /></span>
				</div>
			</div>
			<div class="union-message-style">
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB01-height"></div>
					<div class="panelB-footer"></div>
					<div class="border-content union-des-style">
						${union.description }
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading02 edit-prompt-style">
					<span><spring:message code="label.cg120103.edit.prompt" /></span>
				</div>
				<div class="inputLabel input-label input-label-cg120103">
					<textarea id="description" name="description" maxlength="100" class="text-area-style"></textarea>
				</div>
			</div>
		</div>
	</div>
	<div class="commonPading02 clickTone1 change-button-width">
		<img class="clickTone1" 
			src="<p:localurl value="/resources/images/buttons/biangeng-green-x.png"/>" onclick="writeDes()"/>
	</div>
	<div class="conference-buttons commonPading02 clickTone1">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120112/index"/>';event.preventDefault();">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/fanhuilianmengshouye-blue-d.png"/>'>	
		</a>
	</div>
</form>
</div>