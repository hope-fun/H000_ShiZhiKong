<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">
<input type="hidden" id="cg0501replyinfo" value="<spring:message code='label.cg0501.areplyinfo'/>"/>
<div class="content">

<form action="<p:fullurl value="/cg0501/cg050103/replyMessage/" />" method="post" id="rePelyform">
	<div class="menu-medium title-label-03"><span><spring:message code="label.cg050103.replyMessage.title" /></span></div>
		<input name="sendPlayerId" type="hidden" value="${friendMessageBoxViewData.sendPlayerId}" />
		<input name="receivePlayerId" type="hidden" value="${friendMessageBoxViewData.receivePlayerId}" />
		<input name="urlReturnType" type="hidden" value="${friendMessageBoxViewData.urlReturnType}" />
		
	<div class="panel-01">
		<div class="replymessagePanelHeader menu-small"><span>To:<c:out value="${friendMessageBoxViewData.receivePlayName}" /></span></div>
		
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
					<div class="A015PanelBody">
						<div>
							<textarea class="textareastyle" name="messageBody"
								onKeyDown="keepTextLength(this)" id="replyMessageTextarea"
								onKeyUp="keepTextLength(this)"></textarea>
						</div>
					</div>

				</div>
		</div>
	</div>
	
	<div class="race-all clickTone1" >
		<div onclick="doSubmit();"><img src='<p:localurl value="/resources/images/buttons/fasong-green-x.png"/>'></div>
	</div>

	<div>
		<utils:npcDialog dialogVal="label.cg050103.replyMessage.systemcontent" dialogType="msgKey" imageType="2" />
	</div>
	
	</form>
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0501/cg050103replyMessage.js'/>"></script>