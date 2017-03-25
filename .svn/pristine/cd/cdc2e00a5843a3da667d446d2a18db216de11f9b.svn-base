<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1101.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg1101/cg1101.js"/>"></script>
<script type="text/javascript">

totalCG1101MsgCount = ${totalMsg };
var count = "${totalMsg }" - 1;

</script>

<div class="content">
	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg1101.title"></spring:message></span>
	</div>
	<div class="tab-view">
		<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg1101/cg110101/index" />'">
			 <c:if test="${friendMsg > 0 }">
			<div class="number_pop">
				<div>
					<span id='friendMsgPop'>${friendMsg}</span>
				</div>
			</div>
			</c:if>
			<img src="<p:localurl value="/resources/images/buttons/haoyouxinxi-blue-b.png" />" />
		</div>
		<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg1101/cg110102/index" />'">
			<c:if test="${sysMsg > 0 }">
			<div class="number_pop">
				<div>
					<span>${sysMsg}</span>
				</div>
			</div>
			</c:if>
			<img src="<p:localurl value="/resources/images/buttons/xitongxunxi-blue-b.png" />" />
		</div>
		<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg1101/cg110103/index/0" />'">
			<c:if test="${unionMsg > 0 }">
			<div class="number_pop">
				<div>
					<span>${unionMsg}</span>
				</div>
			</div>
			</c:if>
			<img src="<p:localurl value="/resources/images/buttons/lianmengxunxi-yellow-b.png" />" />
		</div>
		<!--  
		<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg1101/cg110104/index" />'">
			<c:if test="${giftMsg > 0 }">
			<div class="number_pop">
				<div>
					<span>${giftMsg}</span>
				</div>
			</div>
			</c:if>
			<img src="<p:localurl value="/resources/images/buttons/liwu-blue-b.png" />" />
		</div>
		-->
		<div class="">
			
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<c:set var="paginationParams" value="${inboxViewDatas}" scope="request" />
	<c:set var="paginationUrl" value="/kpyx-logical-service/cg1101/cg110103/index/${searchInboxVo.pageIndex+1}" scope="request" />
	<tags:pagination items="${inboxViewDatas}" paginationUrl="${paginationUrl }" searchData="${searchInboxVo }" method="GET">
		<c:if test="${not empty inboxViewDatas }">
			<div class="align-center clickTone1 msg-count" onclick="JSInterface.setMsgCount(${totalMsg - unionMsg});window.location.href='<p:fullurl value="/cg1101/cg110103/readAllMsgs" />'">
				<img src="<p:localurl value="/resources/images/buttons/quanbushanchu-green-z.png" />">
			</div>
			<c:forEach items="${inboxViewDatas}" var="inbox">
				<c:if test="${inbox.messageType.name() ne 'UNIONAPPLY'}">
				<div class="panel-01">
					<div class="borderPanel">
						<div class="panelB-header"></div>
						<div class="panelB-body panelB01-height"></div>
						<div class="panelB-footer"></div>
						<div class="border-content-noleft">
							<div class="borderStyleB007">
								<div class="messageinfoB007">
									<div class="B007Height">
										<span class="fc-title-02"><spring:message code="lable.cg110103.unioninfo"></spring:message></span> 
										<span class="system-content">${inbox.messageBody }</span>
									</div>
									<div class="textalignRight">
										<div class="clickTone1" style="position:relative;" onclick="JSInterface.setMsgCount(count);
											var target = $(this).find('.feedOutBox');
											target.css3Animate({
											y:-20,opacity:0.9,time:'750ms',timingFunction:'ease',callback:function() {
												target.css3Animate({y:0,opacity:0,time:'750ms',timingFunction:'ease',callback:function() {
													window.location.href= '<p:fullurl value="/cg1101/cg110103/read/${inbox.id }/${searchInboxVo.pageIndex }/${randomExp}"/>';
												}});
											}});">
												<img src='<p:localurl value="/resources/images/buttons/queding-green.png"/>'>
												<div class="feedOutBox feedoutbox-style">
													
												</div> 
											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:if>
				<c:if test="${inbox.messageType.name() eq 'UNIONAPPLY'}">
				<div class="panel-01">
					<div class="borderPanel">
						<div class="panelB-header"></div>
						<div class="panelB-body panelB01-height"></div>
						<div class="panelB-footer"></div>
						<div class="border-content-noleft">
					<div class="borderStyleB007">
						<div class="messageinfoB007">
							<div class="B007Height">
								<span class="fc-title-02"><spring:message code="lable.cg110103.unioninfo"></spring:message></span> 
								<span class="system-content">${inbox.messageBody }</span>
							</div>
							<div class="textalignRight">
								<a href="javascript:JSInterface.setMsgCount(count);$.post('<p:fullurl value="/cg1101/cg110103/setRead" />/${inbox.id}',null,null,'json');location.href = '<p:fullurl value="/cg1201/cg120108/index" />/${unionId}';">
										<img src='<p:localurl value="/resources/images/buttons/chakanxiangqing-green.png"/>'>
								</a>
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				</c:if>
			</c:forEach>
		</c:if>
		<c:if test="${empty inboxViewDatas }">
			<div style="text-align: center;">
				<span><spring:message code="lable.cg110103.emptyinfo"></spring:message></span>
			</div>
		</c:if>
	</tags:pagination>
</div>