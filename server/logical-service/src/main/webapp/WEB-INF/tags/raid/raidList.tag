<%@tag pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.data.service.vo.RaidVO" required="true" rtexprvalue="true"%>
<c:if test="${empty items}">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">
	<tags:pagination items="${items}" id="raidList" method="GET" renderAjax="false" searchData="${searchData}" paginationUrl="${searchUrl}">
		<c:forEach items="${items}" var="raid">
			<div class="raid-section">
				<div class="raid-level fc-normal-03-m">
					${raid.requireLevel}<spring:message code="label.cg180202.raid_section_require_level"></spring:message>
				</div>
				<div class="raid-require-ticket fc-normal-04-m">
					<spring:message code="label.cg180202.raid_section_require_ticket"></spring:message>${raid.requireKeyCount}
				</div>
				<div class="clearfix"></div>
				<div class="raid-image">
					
				</div>
				<div class="raid-description">
					${raid.description}
				</div>
				<div class="raid-drop-equipment">
					<div><spring:message code="label.cg180202.raid_section_drop_equipment"></spring:message></div>
					<c:forEach items="${raid.equipments}" var="equipment">
						<div class="equipment-section"></div>
					</c:forEach>
				</div>
				<div class="raid-btn-action">
					<input type="image" class="btn-action" urlPath="<p:fullurl value='' />" value="${raid.id}" src="<p:localurl value='/resources/images/buttons/zhixing-green.png'/>">
				</div>
			</div>
		</c:forEach>
	</tags:pagination>
</c:if>
