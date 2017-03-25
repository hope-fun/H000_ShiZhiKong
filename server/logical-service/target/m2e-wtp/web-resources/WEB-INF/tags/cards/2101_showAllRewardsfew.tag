<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@attribute name="item" type="com.artistmobile.kpyx.server.data.service.vo.ActivityRewardVO" required="true" rtexprvalue="true" description="The player card object" %>
<%@attribute name="distance" type="java.lang.Long" required="true" rtexprvalue="true"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2101/CG2101.css?v=1"/>">
<div style="float: left;width:${distance}%">
	<c:if test="${item.rewardType eq 'CARD' }">
		<img class="imgReward"
			src='<p:localurl value="/resources/images/activityreward/card_star${item.rewardId}.PNG"/>'>
	</c:if>
	<c:if test="${item.rewardType eq 'EQUIPMENT' }">				
			<img class="imgReward"
				src='<p:localurl value="/resources/images/activityreward/${item.rewardId}.png"/>'>	
	</c:if>
	<c:if test="${item.rewardType eq 'FRAGMENT' }">
		<img class="imgReward"
			src='<p:localurl value="/resources/images/activityreward/fragment_star${item.rewardId}.png"/>'>
	</c:if>
	<c:if test="${item.rewardType eq 'CONSUMABLE' }">
		<img class="imgReward"
			src='<p:consumImg type="large" id="${item.rewardId}" />' />
	</c:if>
	<c:if test="${item.rewardType eq 'CARD_TICKET' }">
		<img class="imgReward"
			src='<p:otherImg type="large" id="${item.rewardId}" />' />
	</c:if>
	<c:if test="${item.rewardType eq 'FPOINT' }">

		<img class="imgReward"
			src='<p:localurl value="/resources/images/other/large/FPOINT.png" />' />
	</c:if>
	<c:if test="${item.rewardType eq 'CPOINT' }">
		<img class="imgReward"
			src='<p:localurl value="/resources/images/other/large/CPOINT.png" />' />
	</c:if>
	<c:if test="${item.rewardType eq 'CRYSTAL' }">
		<img class="imgReward"
			src='<p:localurl value="/resources/images/other/large/SCOIN.png" />' />
	</c:if>
	<c:if test="${item.rewardType eq 'DIAMOND' }">
		<img class="imgReward"
			src='<p:localurl value="/resources/images/other/large/GCOIN.png" />' />
	</c:if>
	<div class="distancenum">${item.rewardName}</div>
	<div class="distancenum">
		<span>X</span><span>${item.rewardCount}</span>
	</div>
</div>