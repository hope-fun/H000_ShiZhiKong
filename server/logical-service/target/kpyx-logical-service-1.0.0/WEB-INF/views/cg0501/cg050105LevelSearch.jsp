<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="players" tagdir="/WEB-INF/tags/playerFriends" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">

<script type="text/javascript">
function submitForm() {
	
	if($("#sel_level").val().trim()=="")
	{
		kpyxTips("<spring:message code="lable.cg050105.level.search"/>");
		return;
	}

	document.forms[0].submit();
}
</script>

<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg0501/cg050105/levelSearch" var="levelSearchUrl"/>

<c:if test="${not empty requestType or requestType == 'ajax' }">
	<!--<players:playerList items="${playerList }" searchData="${searchPlayerVO }" searchUrl="${levelSearchUrl }"></players:playerList> -->
</c:if>
<c:if test="${empty requestType}">
	<div class="content">
		<div class="menu-medium title-label-03">
			<span><spring:message code="label.cg050105.playersearch.title"></spring:message>-<spring:message code="label.cg050105.playersearch.levelsearch"></spring:message></span>
		</div>
		
		<div>
			<utils:npcDialog dialogVal="label.cg0501.playersearch.npc" dialogType="msgKey" imageType="2" />
		</div>
			
		<div style="width:100%">
			<div class="searchlevel">
				<div class="player-tag-level">
					<span class="system-content leve-font"><spring:message code="label.cg0501.playertag.level" />:</span>				
				</div>
				<div style="width:50%;float:left;">
					<!--<div class="select_level_1">
						<div class="select_level_2">
							<form id="level_form" action="<p:fullurl value="/cg0501/cg050106/levelSearch" />" method="get">
								<select id="sel_level" class="select_level_3" name="level">
									<c:if test="${not empty levelList }" >
										<c:forEach items="${levelList }" var="level_l">								
											<option value="${level_l }" 
											<c:if test="${not empty searchPlayerVO.level }">${searchPlayerVO.level eq level_l?"selected":"" }</c:if>
											<c:if test="${empty searchPlayerVO.level }">${player.level eq level_l?"selected":"" }</c:if> >${level_l }</option>
										</c:forEach>
									</c:if>
								</select>
							</form>
						</div>					
					</div>  -->	
					<form id="level_form" action="<p:fullurl value="/cg0501/cg050105/levelSearch" />" method="get">
						<select id="sel_level" class="select_level_3" name="level">
							<c:if test="${not empty levelList }" >
								<c:forEach items="${levelList }" var="level_l">								
									<option value="${level_l }" 
									<c:if test="${not empty searchPlayerVO.level }">${searchPlayerVO.level eq level_l?"selected":"" }</c:if>
									<c:if test="${empty searchPlayerVO.level }">${player.level eq level_l?"selected":"" }</c:if> >${level_l }</option>
								</c:forEach>
							</c:if>
						</select>
					</form>
				</div>
			</div>	
			<div class="search-button clickTone1">
				<img class="button_search clickTone1" src='<p:localurl value="/resources/images/buttons/sousuo-green-x.png"/>' onclick="submitForm();">
			</div>
			<div class="clearfix"></div>
		</div>
	
		<div class="menu-medium title-label-02"><span><spring:message code="label.cg050105.playersearch.searchresult"></spring:message></span></div>
		
		<players:playerList items="${playerList }" searchData="${searchPlayerVO }" searchUrl="${levelSearchUrl }"></players:playerList>
			
		<div class="imagealignCenter">
			<img class="button_search clickTone1" src='<p:localurl value="/resources/images/buttons/chongxinsousuo-green-z.png"/>' onclick="submitForm();">
		</div>	
	</div>
</c:if>




