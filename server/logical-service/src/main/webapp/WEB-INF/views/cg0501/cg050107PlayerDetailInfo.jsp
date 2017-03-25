<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">
<input type="hidden" id="cg0501applyfriend" value="<spring:message code='label.cg0501.applyfriend'/>"/>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg050107.playerfriend.title"></spring:message></span>
	</div>
 
	<!-- 包含玩家详情及主卡信息 -->
	<jsp:include page="/WEB-INF/views/cg0501/middle-playerInfo.jsp" flush="true" ></jsp:include>
	
	<input type="hidden" id="home_page_url" value="<p:fullurl value="/cg0101/cg010103/index" />" />
	<input type="hidden" id="applyFriend_url" value="<p:fullurl value="/cg0501/cg050107/applyFriend/" />" />
	<input type="hidden" id="return_url" value="<p:fullurl value="/cg0501/" />" />
	<input type="hidden" id="apply_message" value="<spring:message code="label.cg0501.playertag.applymessage"></spring:message>" />
	<input type="hidden" id="max_message" value="<spring:message code="label.cg0501.playertag.maxmessage"></spring:message>" />
	<input type="hidden" id="playerId" value="${player.id }" />
	<input type="hidden" id="urlReturnType" value="${urlReturnType }" />
	<div id = "cg050101_button_detail" class="center-button center-site padding-top-style clickTone1" >
		<c:if test="${isCanApply == true }" >
			<img id ="buttonsearch" class="button_search clickTone1" onclick="apply_friend()"  src="<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>"/>
		</c:if>
		
		<c:if test="${isCanApply == false }" >
			<img class="button_gray" src="<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>"/>
		</c:if>
	    
    </div>	
</div>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0501/cg050101playerFriend.js'/>"></script>