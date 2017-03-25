
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0401/cg040106.css?v=1"/>" />
<%@attribute name="d1" type="com.artistmobile.kpyx.server.data.service.vo.PlayerConsumableVO" required="true" rtexprvalue="true" description="The PlayerConsumableVO" %>
<%@attribute name="d2" type="com.artistmobile.kpyx.server.data.service.vo.PlayerConsumableVO" required="true" rtexprvalue="true" description="The PlayerConsumableVO" %>
 <div class="w-mask-dialog" id="w-mask-dialog" style="display:none;">
	</div>
	<div class="dialogue_container_parent" style="margin:0 auto; position: absolute;">
		<div id="" class="dialogue_container" style="display:none;">
		<div class="consumer-list">
						<div class="consumer-list-title">
							<span class="fc-content-01"><spring:message code="label.CG020000.title"></spring:message></span>
						</div>
						<div class="consumer-list-image"></div>
						<div>
							<div class="bottomPart_line_imageConsu">
							<c:choose>
								<c:when test="${d1.count gt 0}">
										<img  src="<p:localurl value="/resources/images/consumable/large/D1.png"/>" />
								</c:when>
								<c:otherwise>
										<img src="<p:localurl value="/resources/images/consumable/large/D2.png"/>" />
								</c:otherwise>
							</c:choose>	
							</div>
							<div class="bottomPart_line_infoConsu" >
								<div class="consumer-list-name">
									<span class="fc-normal-05-m">
										<c:choose>
											<c:when test="${d1.count gt 0}">${d1.name}</c:when>
											<c:otherwise>${d2.name}</c:otherwise>
										</c:choose>
									</span>
								</div>
								<div class="consumer-list-function">
									<span class="fc-normal-05-m"><spring:message code="lable.cg0901.chiyoushuliang"></spring:message>:<c:choose>
										<c:when test="${d1.count gt 0}">${d1.count}</c:when>
										<c:otherwise>${d2.count}</c:otherwise>
									</c:choose>
									</span>
								</div>
								<div class="consumer-list-function">
									<span class="fc-normal-05-m"><spring:message code="label.cg1101.cg110104.gongneng"></spring:message>:
									<c:choose>
										<c:when test="${d1.count gt 0}">${d1.description}</c:when>
										<c:otherwise>${d2.description}</c:otherwise>
									</c:choose></span>
								</div>
								<div>
									<div style="width: 50%; float: left;">
										<span class="fc-normal-05-m"><img id ="quxiao" class="buy_btn clickTone1" src="<p:localurl value="/resources/images/buttons/quxiao-blue.png"/>" /></span>
									</div>
									<div style="width: 50%; float: left;">
										<span class="fc-normal-05-m">
										
										<c:choose>
											<c:when test="${d1.count == 0 && d2.count == 0}">
												<img id ="goumai-green" class="buy_btn clickTone1" src="<p:localurl value="/resources/images/buttons/goumai-green.png" />"/></c:when>
											<c:otherwise>
												<img id ="shiyong-green" class="buy_btn clickTone1" src="<p:localurl value="/resources/images/buttons/shiyong-green.png" />"/>
											</c:otherwise>
										</c:choose>
										</span>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
		</div>				
		</div>
		<input id="fightactionEnough" type="hidden" value="<p:fullurl value="/cg0401/cg040102/fightactionEnough"/>" />
		<input id="goumai" type="hidden" value="<p:fullurl value="/cg0901/cg090103/index"/>" />
		<input id="shiyong" type="hidden" value="<p:fullurl value="/cg0401/cg040102/useConsumableMove/"/>" />
		<input id="useConsumableTagUrl" type="hidden" value="<p:fullurl value="/cg0401/cg040102/useConsumableTag/"/>" />
		<input id="d1count" type="hidden" value="${d1.count}" />
	</div>