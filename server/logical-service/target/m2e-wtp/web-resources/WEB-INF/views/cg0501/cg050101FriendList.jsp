<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="players" tagdir="/WEB-INF/tags/playerFriends" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">

<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg0501/cg050101/friendList" var="friendListUrl"/>

<c:if test="${not empty requestType or requestType == 'ajax' }">  
	<!--<players:playerFriendList items="${playerFriendList }" searchData="${searchPlayerFriendVO }" searchUrl="${friendListUrl }"></players:playerFriendList>-->
</c:if>

<c:if test="${empty requestType}">
	<div class="content">
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg050101.playerfriend.title"></spring:message></span>
		</div>	
		
		<div class="fc-content-02 center-site">
			<c:if test="${not empty player }" >
				<span><spring:message code="label.cg050101.playerfriend.friend"></spring:message>：${player.friendsNum }/${player.friendsMax }</span>
			</c:if>		
		</div>
		
		<!-- 001  B001 frame-1  start -->
		<div>
			<utils:npcDialog dialogVal="label.cg050101.playerfriend.npc" dialogType="msgKey" imageType="2" />
		</div>
		<!-- 001  B001 frame-1  end -->
			
		<div class="fc-normal-01-l label-button-01 link_hand clickTone1" onclick="window.location.href='<p:fullurl value="/cg0501/cg050106/index"/>'">
			<span style="color: rgb(160, 160, 160);"><spring:message code="label.cg050101.playerfriend.searchbyname"></spring:message></span>
		</div>
	
		<div class="fc-normal-01-l label-button-01 link_hand clickTone1" onclick="window.location.href='<p:fullurl value="/cg0501/cg050105/index"/>'">
			<span style="color: rgb(160, 160, 160);"><spring:message code="label.cg050101.playerfriend.searchbylevel"></spring:message></span>
		</div>
			
		<div class="split-01 margin-top30-style" ></div>	
		
		<players:playerFriendList items="${playerFriendList }" searchData="${searchPlayerFriendVO }" searchUrl="${friendListUrl }"></players:playerFriendList>
	</div>
</c:if>
