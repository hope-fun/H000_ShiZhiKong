<%@tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@attribute required="true" rtexprvalue="true" name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"%>
<%@attribute required="true" rtexprvalue="true" name="searchUrl" type="java.lang.String"%>
<%@attribute required="true" rtexprvalue="true" name="searchData" type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerTaskChapterViewData"%>
<c:if test="${empty items}">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">
	<tags:pagination items="${items}" id="chapterList" method="GET" renderAjax="false" searchData="${searchData}" paginationUrl="${searchUrl}">
		<c:forEach items="${items}" var="playerTaskChapter">
			<div>
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="phase-header">
						<span class="padding-left22"><spring:message code="label.chapter.title"></spring:message>${playerTaskChapter.taskChapter.orderNumber}章：${playerTaskChapter.taskChapter.name}</span>
					</div>
				</div>
				<div style="width: 100%;">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body">
							<div class="chapter-container">
								<div>
									<div class="chapter-img">
										<img src="<p:localurl value="/resources/images/taskchapter/${playerTaskChapter.chapterId}.png"/>" />
									</div>
									<div class="chapter-message">
										<div class="task-pro-style">
											<div style="float:left"><spring:message code="label.chapter.taskpro"></spring:message></div>
											<div class="processing-bar-yellow fc-normal-06-m task-pro-width" processbar="${playerTaskChapter.playerTaskChapterProgress}"></div>
										</div>
										<div class="task-pro-style">
											<div style="float:left"><spring:message code="label.chapter.taskreward"></spring:message></div>
											<div class="processing-bar-pink fc-normal-09-m task-pro-width" processbar="${playerTaskChapter.progress}"></div>
										</div>
									</div>
								</div>
								<div class="clearfix center-site">
									<img src='<p:localurl value="/resources/images/buttons/qianwang=green.png"/>' class="clickTone1" onclick="doSubmit('<p:fullurl value='/cg0201/cg020102/index/${playerTaskChapter.id}'/>')">
								</div>
							</div>
						</div>
						<div class="panelA-footer"></div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</tags:pagination>
</c:if>
