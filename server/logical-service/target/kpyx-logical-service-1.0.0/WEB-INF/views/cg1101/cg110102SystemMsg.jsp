<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1101.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg1101/cg1101.js"/>"></script>
<script type="text/javascript">
<!--
totalCG1101MsgCount = ${totalMsg };
var count = "${totalMsg }" - 1;
//-->
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
			<img src="<p:localurl value="/resources/images/buttons/xitongxunxi-yellow-b.png" />" />
		</div>
		<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg1101/cg110103/index/0" />'">
			<c:if test="${unionMsg > 0 }">
			<div class="number_pop">
				<div>
					<span>${unionMsg}</span>
				</div>
			</div>
			</c:if>
			<img src="<p:localurl value="/resources/images/buttons/lianmengxunxi-blue-b.png" />" />
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
	<c:set var="paginationParams" value="${inboxMsgs}" scope="request" />
	<c:set var="paginationUrl" value="/kpyx-logical-service/cg1101/cg110102/index" scope="request" />
	<tags:pagination items="${inboxMsgs}" paginationUrl="${paginationUrl }" searchData="${searchInboxVO }" method="GET">
		<c:if test="${not empty inboxMsgs}">
		<div class="align-center clickTone1 msg-count" onclick="JSInterface.setMsgCount(${totalMsg - sysMsg});window.location.href='<p:fullurl value="/cg1101/cg110102/readAllMsgs" />'">
			<img src="<p:localurl value="/resources/images/buttons/quanbushanchu-green-z.png" />">
		</div>
		<c:forEach items="${inboxMsgs }" var="inboxItem">
			<div class="borderStyleD003">
				<div class="msg">
					<div class="msgInfoD003" id="msg${inboxItem.id }">
						<script type="text/javascript">
							var str = "${inboxItem.messageBody }";
							str = str.substr(0, 11) + "...";
							$("#msg" + "${inboxItem.id }").text(str);
						</script>
					</div>
					<div class="dateStyleD003 fc-normal-05-m textalignRight">${inboxItem.formatTime}</div>
					<div class="btnStyleD003 textalignRight">
						<div class="message-detail">
							<a href="<p:fullurl value="/cg1101/cg11010201/index?msgId=${inboxItem.id }"/>" class="clickTone1" onclick="JSInterface.setMsgCount(count);">
								<img src="<p:localurl value="/resources/images/buttons/xiangqing.png"/>" />
							</a>
						</div>
						<div>
							<a href="<p:fullurl value="/cg1101/cg110102/delete?pageIndex=${searchInboxVO.pageIndex }&msgId=${inboxItem.id }"/>" class="clickTone1" onclick="JSInterface.setMsgCount(count);">
								<img src="<p:localurl value="/resources/images/buttons/shanchu.png"/>" />
							</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</c:forEach>
		</c:if>
		<c:if test="${empty inboxMsgs }">
			<div style="text-align: center;">
				<span><spring:message code="label.cg1101.cg110102.dangqianwuxiaoxi"></spring:message></span>
			</div>
		</c:if>
	</tags:pagination>
</div>