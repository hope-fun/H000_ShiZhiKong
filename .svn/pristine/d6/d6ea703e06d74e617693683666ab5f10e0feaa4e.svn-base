<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0705.css?v=1"/>">

<%@attribute name="playerCardVO" type="com.artistmobile.kpyx.server.data.service.vo.PlayerCardVO" required="true" rtexprvalue="true" description="playercard" %>

<div class="location-middle-card">
	<div>
		<img class="image-show" alt="" src="<p:cardImg type="middle" id="${playerCardVO.cardId}" />">
	</div>
	<div>
		<a href="#" class="clickTone1" onclick="location.href = '<p:fullurl value="/cg0801/cg080112/index/${playerCardVO.id}" />';event.preventDefault();">
			<img src="<p:localurl value="/resources/images/buttons/yongbingxiangqing-green-x.png" />">
		</a>
	</div>
</div>

<div class="font-div-style fc-content-02 center-site">
	<span><spring:message code="label.cg0706.reward.message.congratulation_you"></spring:message></span>
</div>

<div class="font-div-style fc-content-02 center-site">
	<span><spring:message code="label.cg0706.reward.message.obtain_car"></spring:message>!!</span>
</div>