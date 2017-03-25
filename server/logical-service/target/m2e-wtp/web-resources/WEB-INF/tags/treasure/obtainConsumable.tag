<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0705.css?v=1"/>">

<%@attribute name="consumableId" type="java.lang.String" required="true" rtexprvalue="true" description="consumableId" %>
<%@attribute name="consumableName" type="java.lang.String" required="true" rtexprvalue="true" description="name" %>
<%@attribute name="count" type="java.lang.String" required="false" rtexprvalue="true" description="count" %>

<%@attribute name="enumRewardType" type="com.artistmobile.kpyx.server.framework.model.data.EnumRewardType" required="true" rtexprvalue="true" description="enumRewardType" %>
	<div class="obtain-consumable-padding">
		<div class="element-bg">
		<c:if test="${fn:contains(enumRewardType, 'CONSUMABLE')}">
			<img class="" src="<p:consumImg type="large" id="${consumableId }" />" />
		</c:if>	
		<c:if test="${fn:contains(enumRewardType, 'EQUIPMENT')}">
			<img class="" src="<p:equipImg type="large" id="${consumableId }" />" />
		</c:if>	
		</div>
	</div>
	<div class="font-div-style fc-content-02 center-site">
		<span><spring:message code="label.cg0706.reward.message.congratulation_you"></spring:message></span>
	</div>
	<div class="font-div-style fc-content-02 center-site">
		<c:if test="${fn:contains(enumRewardType, 'EQUIPMENT')}">
			<span><spring:message code="label.cg0706.reward.message.obtain"></spring:message>${consumableName}<spring:message code="label.cg0706.reward.message.equipment"></spring:message>!</span>
		</c:if>	
		
		<c:if test="${fn:contains(enumRewardType, 'CONSUMABLE')}">
			<span><spring:message code="label.cg0706.reward.message.obtain"></spring:message>${consumableName}<spring:message code="label.cg0706.reward.message.consumable"></spring:message>*${count}!</span>
		</c:if>	
		
	</div>