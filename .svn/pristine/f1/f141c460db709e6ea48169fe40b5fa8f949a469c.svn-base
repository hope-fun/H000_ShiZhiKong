<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>

<%@attribute name="detailUrl" type="java.lang.String" required="true" rtexprvalue="true" description="Url of select button" %>
<%@attribute name="item" type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerCardViewData" required="true" rtexprvalue="true" description="The player card object" %>

<div class="panel-02">
	<div class="<cssutils:cardCamp campType="${item.cardCamp}"/>">
		<div class="panel-header">
			<span><c:out value="${item.name}"></c:out></span>
			<div class="card-star">
				<c:forEach begin="1" step="1" end="${item.star}" var="idx">
					<img alt="" src="<p:localurl value="/resources/images/star-d.png"/>"/>
				</c:forEach>
			</div>
		</div>
		<div class="panel-body">
			<div class="card-major">
				<div class="middle-card-width">
					<div class="card-major-image">
						<img src='<p:cardImg type="middle" id="${item.cardId }"></p:cardImg>' />
					</div>
					<div class="card-major-image-equipment middel-equips-width">
						<div>
							<c:if test="${ not empty item.playerEquipment1 }" >
								<img alt="" src="<p:equipImg type="middle" id="${item.playerEquipment1.equipmentId }" />"/>
							</c:if>
							<c:if test="${ empty item.playerEquipmentId1 }">
								<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
							</c:if>
						</div>
						<div>
							<c:if test="${ not empty item.playerEquipment2 }" >
								<img alt="" src="<p:equipImg type="middle" id="${item.playerEquipment2.equipmentId }" />"/>
							</c:if>
							<c:if test="${ empty item.playerEquipmentId2 }">
								<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
							</c:if>
						</div>
						<div>
							<c:if test="${ not empty item.playerEquipment3 }" >
								<img alt="" src="<p:equipImg type="middle" id="${item.playerEquipment3.equipmentId }" />"/>
							</c:if>
							<c:if test="${ empty item.playerEquipmentId3 }">
								<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
							</c:if>
						</div>
						<div></div>
					</div>
				</div>
				<div class="middle-info-width">
					<div class="card-major-desc" >
						<div class="card-major-data" >
							<div class="icon icon-level">
								<span><spring:message code="label.cg030101.maincard.level"></spring:message>:</span>
								<span><c:out value="${item.cardLevel}" /></span>
							</div>
							<div class="icon icon-physicalstrength">
								<span><spring:message code="label.cg030101.maincard.strengthrequire"></spring:message>:</span>
								<span><c:out value="${item.strengthRequireAdded }" /></span>
							</div>
							<div class="icon icon-total-fighting-energy">
								<span><spring:message code="label.cg030101.maincard.attack"></spring:message>:</span>
								<span><c:out value="${item.attackAdded }" /></span>
							</div>
							<div class="icon icon-total-shield-energy">
								<span><spring:message code="label.cg030101.maincard.defence"></spring:message>:</span>
								<span><c:out value="${item.defenceAdded }" /></span>
							</div>
							<div></div>
						</div>
						<div class="card-major-experience">
							<div class="growing-per-width fc-normal-01-l"><span><spring:message code="label.cg030101.maincard.growingpercent"></spring:message>:</span></div>
							<div class="growing-bar-width">
								<div class="processing-bar-blue fc-normal-01-m" processbar="${item.growingPercent }"></div>
							</div>
							<div></div>
						</div>
						<div style="text-align: center;">
							<img class="clickTone1" onclick="location.href='<p:fullurl value="${detailUrl}/${item.id}"/>';" src="<p:localurl value="/resources/images/buttons/xuanze-green.png"/>"/>
						</div>
					</div>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>
