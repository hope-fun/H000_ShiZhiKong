<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1101.css?v=1"/>">

<c:set var="yijingyichu"><spring:message code="label.cg1101.cg110101.yijingyichu"></spring:message></c:set>

<script type="text/javascript">
<!--
var yijingyichu = "${yijingyichu}";
//-->
</script>
<div class="content">
	<div class="menu-medium title-label-02">
		<span class="friend-msg"> 
		<c:if test="${not empty msg}">
			<spring:message code="label.cg1101.cg11010201.friendxunxixiangqing"></spring:message>
		</c:if>
		<c:if test="${empty msg}">
			<spring:message code="label.cg1101.cg11010201.xitongxunxixiangqing"></spring:message>
		</c:if>
		</span>
	</div>
	<div>
		<div class="panelC-header"></div>
		<div class="panelC-body">
			<c:if test="${fn:contains(msg.friendMessageBoxType, 'RESPONSE')}">
				<div class="msg-body-padding">${msg.messageBody }</div>
				<div class="split-down-height">
					<img src="<p:localurl value="/resources/images/line-split-down.png"/>" />
				</div>
				<div class="btnStyleC003 clickTone1 player-send-msg"
					onclick="function judge() {
								if(${empty pFV }) {
									var options = {
										suppressTitle: true, 
										cancelOnly:true,
										message:yijingyichu, 
										doneCallback: function () {window.location.href = 'index'}
									};
									$(document.body).popup(options);
									return false;
								}else {
									window.location.href='<p:fullurl value="/cg0501/cg050103/index" />/${msg.sendPlayerId},FriendMsg'
								}
							}
							judge();
							">
					<img
						src="<p:localurl value="/resources/images/buttons/huiying-green.png"/>" />
				</div>
			</c:if>
			<c:if
				test="${ not fn:contains(friendMessageBox.friendMessageBoxType, 'RESPONSE')}">
				<div class="msg-body-padding">${msgBody}</div>
			</c:if>
		</div>
		<div class="panelC-footer"></div>
	</div>
</div>