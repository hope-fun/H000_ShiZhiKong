<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0705.css?v=1"/>">
<%@attribute name="rewardSilverCoin" type="java.lang.String" required="true" rtexprvalue="true" description="rewardSilverCoin" %>


<div class="congra-info">
		<div class="element-bg">
			<img class="" src="" />
		</div>
	</div>
<div class="font-div-style fc-content-02 center-site">
		<span><spring:message code="label.cg0706.reward.message.congratulation_you"></spring:message></span>
	</div>
<div class="font-div-style fc-content-02 center-site">
		<span><spring:message code="label.cg0706.reward.message.obtain"></spring:message>${rewardSilverCoin}<spring:message code="label.cg0706.reward.message.crystal"></spring:message>!</span>
</div>