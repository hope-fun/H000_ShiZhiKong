<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>

<%@attribute name="treasureFragmentVO"
	type="com.artistmobile.kpyx.server.data.service.vo.TreasureFragmentVO"
	required="true" rtexprvalue="true" description="treasureFragmentVO"%>
<%@attribute name="imageSize" type="String" required="true"
	rtexprvalue="true" description="treasureFragmentVO"%>


<c:choose>
	<c:when test="${imageSize eq 'large'}">
		<div class="treasureImage treasureImage-large">
			<img alt=""
				src="<p:imgPath id='${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
		</div>
	</c:when>
	<c:when test="${imageSize eq 'middle'}">
		<div class="treasureImage treasureImage-middle">
			<img alt=""
				src="<p:imgPath id='${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
		</div>
	</c:when>
	<c:otherwise>
		<div class="treasureImage treasureImage-small">
			<img alt=""
				src="<p:imgPath id='${treasureFragmentVO.orderNumber}' folder='treasureFrag' type='${imageSize}' />" />
		</div>
	</c:otherwise>
</c:choose>
<style>
.treasureImage {
	background: url(<p:imgPath id = '${treasureFragmentVO.treasureId}' folder =
		'treasureFrag' type = '${imageSize}'/>) center center no-repeat;

}
</style>
