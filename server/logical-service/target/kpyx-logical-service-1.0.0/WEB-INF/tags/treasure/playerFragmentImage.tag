<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="treasureFragmentVO" type="com.artistmobile.kpyx.server.data.service.vo.PlayerTreasureFragmentVO" required="true" rtexprvalue="true" description="treasureFragmentVO" %>
<%@attribute name="imageSize" type="String" required="true" rtexprvalue="true" description="treasureFragmentVO" %>
<%@attribute name="showFragmentCount" type="Boolean" required="false" rtexprvalue="true" description="showFragmentCount" %>

<c:choose>
	<c:when test="${imageSize eq 'large'}">

		<div class="treasureImage treasureImage-large"
			style="background: url(<p:imgPath id='${treasureFragmentVO.treasureId}' folder='treasureFrag' type='${imageSize}' />) center center no-repeat; 
			position:relative;">
			<c:if
				test="${not empty treasureFragmentVO.magicCircleCount && 0 < treasureFragmentVO.magicCircleCount }">
				<img class="clickTone1 trea-frg-num-large" alt=""
					src="<p:imgPath id='magic-${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
			</c:if>
			<c:if
				test="${empty treasureFragmentVO.magicCircleCount || 0 == treasureFragmentVO.magicCircleCount }">
				<img class="clickTone1" alt=""
					src="<p:imgPath id='${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
			</c:if>
			
			<c:if
				test="${not empty showFragmentCount && showFragmentCount == true }">
				<div class="float_div">${treasureFragmentVO.count}</div>
			</c:if>
		</div>
	</c:when>
	
	<c:when test="${imageSize eq 'middle'}">
		<div class="treasureImage treasureImage-middle"
			style="background: url(<p:imgPath id='${treasureFragmentVO.treasureId}' folder='treasureFrag' type='${imageSize}' />) center center no-repeat; 
			position:relative;">
			<c:if
				test="${not empty treasureFragmentVO.magicCircleCount && 0 < treasureFragmentVO.magicCircleCount }">
				<img class="clickTone1 trea-frg-num-large" alt=""
					src="<p:imgPath id='magic-${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
			</c:if>
			<c:if
				test="${empty treasureFragmentVO.magicCircleCount || 0 == treasureFragmentVO.magicCircleCount }">
				<img class="clickTone1" alt=""
					src="<p:imgPath id='${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
			</c:if>
			
			<c:if
				test="${not empty showFragmentCount && showFragmentCount == true }">
				<div class="float_div">${treasureFragmentVO.count}</div>
			</c:if>
		</div>
	</c:when>
	<c:otherwise>
		<div class="treasureImage treasureImage-small"
			style="background: url(<p:imgPath id='${treasureFragmentVO.treasureId}' folder='treasureFrag' type='${imageSize}' />) center center no-repeat; 
			position:relative;">
			<c:if
				test="${not empty treasureFragmentVO.magicCircleCount && 0 < treasureFragmentVO.magicCircleCount }">
				<img class="clickTone1 trea-frg-num-large" alt=""
					src="<p:imgPath id='magic-${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
			</c:if>
			<c:if
				test="${empty treasureFragmentVO.magicCircleCount || 0 == treasureFragmentVO.magicCircleCount }">
				<img class="clickTone1" alt=""
					src="<p:imgPath id='${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
			</c:if>
			
			<c:if
				test="${not empty showFragmentCount && showFragmentCount == true }">
				<div class="float_div">${treasureFragmentVO.count}</div>
			</c:if>
		</div>
	</c:otherwise>
</c:choose>
