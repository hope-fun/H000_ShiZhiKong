<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2201/CG2201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg220105.shouzengjilu"></spring:message></span>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="npc-message">
						<spring:message code=""></spring:message>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="cg2201-tabs">
		<div>
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg2201/cg220105/index/${sadrVO.charitablePlayerId }"/>';event.preventDefault();"
				src="<p:localurl value="/resources/images/buttons/lingqulvli-blue-b.png"/>" />
			<img src="<p:localurl value="/resources/images/buttons/lingqupaiming.png"/>" />
			
		</div>
		<div class="split-line"></div>
	</div>
	
	<c:if test="${not empty accumulativeDoneeRecords }">
		<c:set var="paginationParams" value="${accumulativeDoneeRecords}" scope="request" />
		<c:set var="paginationUrl"
			value="/kpyx-logical-service/cg2201/cg220106/index/${sadrVO.charitablePlayerId }" scope="request" />
		<tags:pagination items="${accumulativeDoneeRecords}"
			paginationUrl="${paginationUrl }" searchData="${sadrVO }"
			method="POST">
		
			<div class="info">
				<div>
					<div class="borderPanel" style="width: 100%;">
						<div class="panelBG-cg220106-header"></div>
						<div class="panelBG-cg220106-body panelBG-height" style="height: auto;"></div>
						<div class="panelBG-cg220106-footer"></div>
						<div class="border-content-noleft">
		
							<div>
								<div>
									<div class="short-info"><div class="percent-margin-style90"><spring:message code="label.cg220106.paiming"></spring:message></div></div>
									
									<div class="long-info02"><div class="percent-margin-style95"><spring:message code="label.cg220105.lingquid"></spring:message></div></div>
									
									<div class="short-info02"><div class="percent-margin-style92 padding-left-style12"><spring:message code="label.cg220106.lingqujiazhi"></spring:message></div></div>		
									<div class="long-info-cg220106"><div class="percent-margin-style95"><spring:message code="label.cg220105.suoshugonghui"></spring:message></div></div>														
									<div class="clearfix"></div>
								</div>
								<div>
									<img class="line-style"
										src="<p:localurl value="/resources/images/hengtiao.png"/>" />
								</div>
							</div>
							<!--循环部分  开始-->
							<div id="gamerDiv">
								<c:forEach items="${accumulativeDoneeRecords }" var="item" varStatus="status">
									<div>
										<div>
											<div class="short-info">
												<!--数字 <div class="percent-margin-style90">1</div> -->
											
												<div class="percent-margin-style95">
													<c:if test="${status.index < 3 && (sadrVO.pageIndex eq 0 || sadrVO.pageIndex eq null)}">
														<img class="ranking-icon-style ranking-icon-width"
															src="<p:localurl value="/resources/images/ranking-${status.index+1 }.png"/>" />
													</c:if>
													<c:if test="${status.index >= 3 || sadrVO.pageIndex > 0}">
														<span>${sadrVO.pageIndex * sadrVO.pageSize + status.index+1 }</span>
													</c:if>
												</div>
											</div>
											
											<div class="long-info02"><div class="percent-margin-style95">${item.doneePlayerName }</div></div>
											
											<div class="short-info02"><div class="percent-margin-style92 padding-left-style12">${item.diamondNumber }</div></div>		
											<div class="long-info-cg220106"><div class="percent-margin-style95">${item.unionName }</div></div>														
											<div class="clearfix"></div>
										</div>
										<div>
											<img class="line-style"
												src="<p:localurl value="/resources/images/hengtiao.png"/>" />
										</div>
									</div>
								</c:forEach>
							</div>
							<!--循环部分  结束-->
						</div>
					</div>
				</div>
			</div>
		</tags:pagination>
	</c:if>
</div>

<script type="text/javascript">
$(document).ready(function () {
	var listHeight = $("#gamerDiv").css("height");
	$(".panelBG-height").css("height", listHeight);
});
</script>

