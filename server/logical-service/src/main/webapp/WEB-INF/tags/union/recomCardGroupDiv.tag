
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@attribute name="recomCardGropDivTag" type="com.artistmobile.kpyx.server.logical.busi.viewdata.RecomCardGroupDivTagView" required="true" rtexprvalue="true" description="The CardGroupDivTagView" %>

 <div class="panel-01">
 		<div class="panel-label title-label-02 menu-medium" style="padding: 0;">
			<span><spring:message code="label.cg010103.tadeyongbing"></spring:message></span>
		</div>
		<div class="panel-header"></div>
		<div class="panel-body">
			<div class="card-mercenary-list" >
				<c:forEach items="${recomCardGropDivTag.playerCards }" var="cardItem" begin="0" end="${fn:length(recomCardGropDivTag.playerCards) }" step="1">
					<div>
						<div>
							<a href='#'>
								<img src='<p:cardImg type="ls" id="${cardItem.cardId }"></p:cardImg>' />
							</a>
						</div>
					</div>
				</c:forEach>
				<c:if test="${fn:length(recomCardGropDivTag.playerCards) < 5}">
					<c:forEach begin="${fn:length(recomCardGropDivTag.playerCards) }" end="4" step="1">
						<div>
							<div>
									<img src='<p:localurl value="/resources/images/specialcard.png" />'/>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<div></div>
			</div>


			<div class="gcontainer-two">
				<div class="icon icon-total-fighting-energy fc-normal-02-l">
					<span><spring:message code="label.cg010103.zongzhandouli"></spring:message></span>
					<span class="fc-content-02"><c:out
							value="${recomCardGropDivTag.totalAttackAdded }"></c:out></span>
				</div>
				<div class="icon icon-total-shield-energy fc-normal-04-l">
					<span><spring:message code="label.cg010103.zonghudunli"></spring:message></span>
					<span class="fc-content-02"><c:out
							value="${recomCardGropDivTag.totalDefenceAdded }"></c:out></span>
				</div>
				<div></div>
			</div>
		</div>
		<div class="panel-footer"></div>
	</div>