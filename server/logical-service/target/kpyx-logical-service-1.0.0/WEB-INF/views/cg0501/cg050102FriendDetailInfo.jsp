<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="union" tagdir="/WEB-INF/tags/union"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg050102.playerfriend.title"></spring:message></span>
	</div>

	<!-- 包含玩家详情及主卡信息 -->
	<jsp:include page="/WEB-INF/views/cg0501/middle-playerInfo.jsp" flush="true" ></jsp:include>
		
	
	<div class="gbutton-01">
		<div class="clickTone1" style="display:<c:if test="${playerFriendViewData.isCanUp==true }" >block;</c:if><c:if test="${playerFriendViewData.isCanUp==false }" >none;</c:if>">
			<a href="#" onclick="location.href = '<p:fullurl value="/cg0501/cg050102/upfriend/${playerFriendViewData.id}" />';event.preventDefault();">
				<img alt="" class="clickTone1 button-pic-width" src="<p:localurl value="/resources/images/buttons/ding-green-x.png"/>">
			</a>
		</div>
		
		<div style="display:<c:if test="${playerFriendViewData.isCanUp==false }" >block;</c:if><c:if test="${playerFriendViewData.isCanUp==true }" >none;</c:if>">
			<img alt="" class="button_gray button-pic-width" src="<p:localurl value="/resources/images/buttons/ding-green-x.png"/>">
		</div>
		<div class="clickTone1">
			<a href="#" onclick="location.href = '<p:fullurl value="/cg0501/cg050103/loadReplyMessageDetail/${playerFriendViewData.friendId},detail" />';event.preventDefault();">
				<img alt="" class="clickTone1 button-pic-width" src="<p:localurl value="/resources/images/buttons/huiying-blue-x.png"/>">
			</a>
		</div>
		<div></div>
	</div>
    <union:recomCardGroupDiv recomCardGropDivTag="${recomCardGroupDivTagView}"></union:recomCardGroupDiv>
	<!-- 002  B001 frame-2  start -->
	<div>
		<utils:npcDialog dialogVal="${dialogVal }" dialogType="msgVal" imageType="2" />
	</div>
	
	<!-- 002  B001 frame-2  end -->
	
	<div class="clickTone1" style="width:100%; text-align:center; display:<c:if test="${isCanRemove==true }" >block;</c:if><c:if test="${isCanRemove==false }" >none;</c:if>">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg0501/cg050104/SureDeleteFriend/${playerFriendViewData.id }" />';event.preventDefault();">
			<img alt="button" class="clickTone1" src="<p:localurl value="/resources/images/buttons/yichuzhanyou-green-z.png"/>"/>
		</a>
	</div>
</div>
