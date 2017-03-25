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
	if($("#playerName").val().trim()=="")
		{
			kpyxTips("<spring:message code="lable.cg050106.inputrightpra"/>");
			return;
		}
	
	
	document.forms[0].submit();
}
</script>

<c:set var="requestType" value="${header['requestType']}"></c:set>
<p:fullurl value="/cg0501/cg050106/nameSearch" var="nameSearchUrl"/>

<c:if test="${not empty requestType or requestType == 'ajax' }">
	<!--<players:playerList items="${playerList }" searchData="${searchPlayerVO }" searchUrl="${nameSearchUrl }"></players:playerList> -->
</c:if>

<c:if test="${empty requestType}">
	<div class="content">
		<div class="menu-medium title-label-03">
			<span><spring:message code="label.cg050105.playersearch.title"></spring:message>-<spring:message code="label.cg050106.playersearch.namesearch"></spring:message></span>
		</div>	
		
		<div>
			<utils:npcDialog dialogVal="label.cg0501.playersearch.npc" dialogType="msgKey" imageType="2" />
		</div>
		
		<div class="searchDiv">
			<div class="searchinputtext">
				<form id="name_Form" action="<p:fullurl value="/cg0501/cg050106/nameSearch" />" method="post">
					<input id ="playerName" type="text" name="playerName" maxlength="20" value="<c:if test="${not empty searchPlayerVO.playerName }" >${searchPlayerVO.playerName }</c:if>" 
						class="input_class" />
				</form>			
			</div>	
			<div class="but_search">
				<img class="button_search clickTone1" src='<p:localurl value="/resources/images/buttons/sousuo.png"/>' onclick="submitForm();">
			</div>
			<div class="clearfix"></div>
		</div>
	
		<div class="menu-medium title-label-02"><span><spring:message code="label.cg050105.playersearch.searchresult"></spring:message></span></div>
		
		<players:playerList items="${playerList }" searchData="${searchPlayerVO }" searchUrl="${nameSearchUrl }"></players:playerList>
		
		<div class="imagealignCenter clickTone1">
			<img class="button_search clickTone1"  src='<p:localurl value="/resources/images/buttons/chongxinsousuo-green-z.png"/>'  onclick="submitForm();">
		</div>	
	</div>
</c:if>

