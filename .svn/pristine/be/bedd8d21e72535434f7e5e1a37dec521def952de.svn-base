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
<script>
	totalCG1101MsgCount = ${totalMsg };
	var count = ${totalMsg - giftMsg};
</script>
<c:if test="${not empty warning}">
<script>
	$(function() {kpyxTips("<spring:message code="label.cg1101.cg110104.warning"></spring:message>")});
</script>
</c:if>
<div class="content">
	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg1101.title"></spring:message></span>
	</div>
	<div class="tab-view">
		<div class="clickTone1"  onclick="window.location.href = '<p:fullurl value="/cg1101/cg110101/index" />'">
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
			<img src="<p:localurl value="/resources/images/buttons/lianmengxunxi-blue-b.png" />" />
		</div>
		<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg1101/cg110104/index" />'">
			<c:if test="${giftMsg > 0 }">
			<div class="number_pop">
				<div>
					<span>${giftMsg}</span>
				</div>
			</div>
			</c:if>
			<img src="<p:localurl value="/resources/images/buttons/liwu-yellow-b.png" />" />
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<div>
		<tags:pagination items="${giftList}" paginationUrl="/kpyx-logical-service/cg1101/cg110104/index" searchData="${searchData}" method="GET">
			<c:if test="${not empty giftList}">
				<div class="align-center clickTone1 msg-count" onclick="JSInterface.setMsgCount(count);window.location.href='<p:fullurl value="/cg1101/cg110104/getAllGifts" />'">
					<img src="<p:localurl value="/resources/images/buttons/quanbulingqu-green-z.png" />">
				</div>
				<c:forEach items="${giftList}" var="item">
					<div class="panel-01">
						<div class="borderPanel">
							<div class="panelB-header"></div>
							<div class="panelB-body panelB01-height"></div>
							<div class="panelB-footer"></div>
							<div class="border-content-noleft">
						<div class="borderStyleB007">
							<div class="B007ImageDiv">
								<div class="propsImagesDiv">
									<div class="propsImageStyle">
										<c:if test="${item.type.name() eq 'CONSUMABLE' }">
										<img src='<p:consumImg type="large" id="${item.staticItemId}" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'EQUIPMENT' }">
											<img src='<p:equipImg type="large" id="${item.staticItemId}" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'CARD' }">
											<img src='<p:cardImg type="small" id="${item.staticItemId}" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'CARD_TICKET' }">
											<img src='<p:localurl value="/resources/images/other/large/K1.png" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'FPOINT' }">
											<img src='<p:localurl value="/resources/images/other/large/FPOINT.png" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'CPOINT' }">
											<img src='<p:localurl value="/resources/images/other/large/CPOINT.png" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'CRYSTAL' }">
											<img src='<p:localurl value="/resources/images/other/large/SCOIN.png" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'DIAMOND' }">
											<img src='<p:localurl value="/resources/images/other/large/GCOIN.png" />' />
										</c:if>
										<c:if test="${item.type.name() eq 'RAID_KEY' }">
											<img src='<p:localurl value="/resources/images/consumable/large/D9.png" />' />
										</c:if>
									</div>
								</div>
								<div class="messageinfoB0070104">
									<div class="B007Height">
										<div>
										<span class="fc-title-02"><spring:message code="label.cg1101.cg110104.giftName"></spring:message>:</span><span class="fc-content-03">${item.name}x${item.itemCount}</span>
										</div>
										<c:if test="${not empty item.giftFrom}">
										<div>
											<span class="fc-title-02">
											<spring:message code="label.cg1101.cg110104.giftFrom"></spring:message>:
											</span>
											<span class="fc-content-03">
												<c:if test="${item.giftFrom.name() eq 'SYSTEM'}">
													<spring:message code="label.cg1101.cg110104.xitongfafang"></spring:message>
												</c:if>
												<c:if test="${item.giftFrom.name() eq 'REMOVEFROMSHELVES'}">
													<spring:message code="label.cg1101.cg110104.shangpinxiajia"></spring:message>
												</c:if>
												<c:if test="${item.giftFrom.name() eq 'ROB'}">
													<spring:message code="label.cg1101.cg110104.zhandouqiangduo"></spring:message>
												</c:if>
												<c:if test="${item.giftFrom.name() eq 'EQUIPMENTEXPLODE'}">
													<spring:message code="label.cg1101.cg110104.zhuangbeifenjie"></spring:message>
												</c:if>
												<c:if test="${item.giftFrom.name() eq 'MILESTONE'}">
													<spring:message code="label.cg1101.cg110104.milestone"></spring:message>
												</c:if>
												<c:if test="${item.giftFrom.name() eq 'RAIDREWARD'}">
													<spring:message code="label.cg1101.cg110104.raidreward"></spring:message>
												</c:if>
												<c:if test="${item.giftFrom.name() eq 'OTHER'}">
													<spring:message code="label.cg1101.cg110104.qita"></spring:message>
												</c:if>
											</span>
										</div>
										</c:if>
										<c:if test="${item.description ne null && item.description.trim() ne ''}">
											<div><span class="fc-title-02"><spring:message code="label.cg1101.cg110104.gongneng"></spring:message>:</span><span class="fc-content-03">${item.description.length() > 15 ? item.description.substring(0,15).concat('...'):item.description}</span></div>
										</c:if>
									</div>
									<div class="clickTone1 get-msg-count" onclick="JSInterface.setMsgCount(${totalMsg-1 });window.location.href='<p:fullurl value="/cg1101/cg110104/getGift" />?id=${item.id}&type=${item.type}&pageSize='+document.forms[0].pageSize.value+'&pageIndex='+document.forms[0].pageIndex.value;">
										<img src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>'>
									</div>
									<div style="clear: both;"></div>
								</div>
								<div style="clear: both;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="align-center clickTone1 msg-count" onclick="JSInterface.setMsgCount(count);window.location.href='<p:fullurl value="/cg1101/cg110104/getAllGifts" />'">
					<img src="<p:localurl value="/resources/images/buttons/quanbulingqu-green-z.png" />">
				</div>
			</c:if>
			<c:if test="${empty giftList }">
				<div style="text-align:center;">
					<span><spring:message code="label.cg1101.cg110102.dangqianwuxiaoxi"></spring:message></span>
				</div>
			</c:if>
		</tags:pagination>
	</div>
</div>