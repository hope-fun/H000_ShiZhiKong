<%@tag pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@taglib prefix="task" tagdir="/WEB-INF/tags/task"%>
<%@attribute required="true" rtexprvalue="true" name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"%>
<%@attribute required="true" rtexprvalue="true" name="searchUrl" type="java.lang.String"%>
<%@attribute required="true" rtexprvalue="true" name="searchData" type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerTaskStoryViewData"%>
<c:if test="${empty items}">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">
	<tags:pagination items="${items}" id="storyList" method="GET" renderAjax="false" searchData="${searchData}" paginationUrl="${searchUrl}">
		<c:forEach items="${items}" var="playerTaskStory">
			<div class="story-list">
				<div class="borderPanel">
					<div class="panelC-header"></div>
					<div class="panelC-body panelC02-height"></div>
					<div class="panelC-footer"></div>
					<div class="border-content">
						<div class="story-info">
							<div class="story-chapter">
								<task:taskScene chapterId="${playerTaskStory.chapterId}" storyOrder="${playerTaskStory.orderNumber}"></task:taskScene>
								<div class="clearfix task-story-name">
									<div class="fc-content-01 story-name-div">${playerTaskStory.name}</div>
								</div>
							</div>
							<div class="story-style">
							<div class="story-lineheight">
								<div class="sto-padding"><spring:message code="label.CG020103.story"></spring:message></div>
								<div class="processing-bar-yellow fc-normal-06-m task-progress task-progress-width" processbar="${playerTaskStory.playerTaskStoryProgress}"></div>
							</div>
							<div class="story-lineheight">
								<div class="sto-padding"><spring:message code="label.CG020103.reward"></spring:message></div>
								<div class="processing-bar-pink fc-normal-09-m task-progress task-progress-width" processbar="${playerTaskStory.progress}" ></div>
							</div>
								<div class="task-button">
									<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/qianwang=green.png"/>"
										onclick="doSubmit('<p:fullurl value='/cg0201/cg020103/index/${playerTaskStory.id}'/>')" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</tags:pagination>
</c:if>
