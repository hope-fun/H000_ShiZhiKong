<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1101.css?v=1"/>">
<c:set var="yijingyichu"><spring:message code="label.cg1101.cg110101.yijingyichu"></spring:message></c:set>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg1101/cg1101.js"/>"></script>
<script type="text/javascript">
<!--
totalCG1101MsgCount = ${totalMsg };
var count = "${totalMsg }" - 1;
var yijingyichu = "${yijingyichu}";
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
			<img src="<p:localurl value="/resources/images/buttons/haoyouxunxi-yellow-b.png" />" />
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
		<div class="">
			
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<div>
		<p:fullurl value="/cg1101/cg110101/loadFriendBox/" var="paginationUrl" />
		<tags:pagination items="${friendMessageBoxViewDataPagedList}" id="friendMessageBoxViewDataPagedList" method="GET" renderAjax="false" paginationUrl='${paginationUrl} '>
			<c:if test="${not empty friendMessageBoxViewDataPagedList }">
				<c:forEach items="${friendMessageBoxViewDataPagedList }" var="friendMessageBox" varStatus="i">
					<c:set var="messBody" value="${friendMessageBox.messageBody}"></c:set>
					<div class="panel-03" id="content${i.index}">
						<div class="<cssutils:cardCamp campType="${friendMessageBox.sendPlayer.camp}"></cssutils:cardCamp>">
							<div class="panel-header">
								<span>${friendMessageBox.sendPlayer.name }</span>
							</div>
							<div class="panel-body">
								<div class="card-assistant">
									<div class="left small-card-width">
										<div class="card-assistant-image">
											<c:if test="${not empty friendMessageBox.friendPlayerCard.cardId }">
												<img src="<p:cardImg type="small" id="${friendMessageBox.friendPlayerCard.cardId}"></p:cardImg>" />
											</c:if>
											<c:if test="${empty friendMessageBox.friendPlayerCard.cardId }">
												<img />
											</c:if>
										</div>
									</div>
									<div class="equips-width">
										<div class="card-assistant-equipment">
											<div>
												<div class="one-equipment icon-location">
													<c:if test="${not empty friendMessageBox.friendPlayerCard.playerEquipmentId1 }">
														<img src="<p:equipImg type="small" id="${friendMessageBox.friendPlayerCard.playerEquipment1.equipmentId }" />" />
													</c:if>
													<c:if test="${empty friendMessageBox.friendPlayerCard.playerEquipmentId1 }">
														<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
													</c:if>
												</div>
												<div class="one-equipment icon-location">
													<c:if test="${not empty friendMessageBox.friendPlayerCard.playerEquipmentId2 }">
														<img src="<p:equipImg type="small" id="${friendMessageBox.friendPlayerCard.playerEquipment2.equipmentId }" />" />
													</c:if>
													<c:if test="${empty friendMessageBox.friendPlayerCard.playerEquipmentId2 }">
														<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
													</c:if>
												</div>
												<div class="one-equipment icon-location">
													<c:if test="${not empty friendMessageBox.friendPlayerCard.playerEquipmentId3 }">
														<img src="<p:equipImg type="small" id="${friendMessageBox.friendPlayerCard.playerEquipment3.equipmentId }" />" />
													</c:if>
													<c:if test="${empty friendMessageBox.friendPlayerCard.playerEquipmentId3 }">
														<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
													</c:if>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="player-info-width">
										<div class="card-assistant-desc">
											<div class="top-right-panel">
												<div class="message-box-style">
													<div class="archives-item icon-location">
														<span class="fc-title-02"><spring:message code="label.cg1101.cg110101.level"></spring:message>:</span> 
														<span class="system-content">${friendMessageBox.sendPlayer.level}</span>
													</div>
												</div>
												<div>
													<div class="archives-item icon-location">
														<span class="fc-title-02"><spring:message code="label.cg1101.cg110101.friend"></spring:message>:</span> 
														<span class="system-content">${friendMessageBox.sendPlayer.friendsNum}</span>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<c:if test="${fn:contains(friendMessageBox.friendMessageBoxType, 'UPBACK')}">
												<div class="top-right-panel">
													<div class="mes-body-style">
														<div class="archives-item icon-location">
															<span class="fc-title-02"><spring:message code="label.cg1101.cg110101.Msg"></spring:message>：</span> 
															<span class="system-content">${fn:length(messBody) > 10 ?fn:substring(messBody, 0,10):messBody}${fn:length(messBody) > 10?"...":""}</span>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<form action="<p:fullurl value="/cg1101/cg110101/upBack"/>">
													<input type="hidden" name="id" value="${friendMessageBox.id}">
													<div class="top-right-panel">
														<div class="message-count clickTone1"  onclick="JSInterface.setMsgCount(count);this.parentNode.parentNode.submit()">
															<img src="<p:localurl value="/resources/images/buttons/dinghuiqu-green.png"/>" />
														</div>
														<div class="clearfix"></div>
													</div>
												</form>
											</c:if>
											<c:if test="${fn:contains(friendMessageBox.friendMessageBoxType, 'FRIENDAPPLY')}">
												<div class="top-right-panel">
													<div class="mes-body-style">
														<div class="archives-item icon-location">
															<span class="system-content  system-content2"><spring:message code="label.cg1101.cg110101.friend.apply"></spring:message>!</span>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<form id="defaultForm${i.index}" method="GET">
													<input type="hidden" name="id" value="${friendMessageBox.id }" />
													<input type="hidden" name="sendPlayerId" value="${friendMessageBox.sendPlayerId }" />
													<div class="top-right-panel">
														<div class="add-friend-button" class="clickTone1" onclick="this.parentNode.parentNode.action='<p:fullurl value="/cg1101/cg110101/acceptRequest"/>';doAjaxSubmit('defaultForm${i.index}','${i.index}','add',this)">
															<img src="<p:localurl value="/resources/images/buttons/tongyi-green.png"/>" />
														</div>
														<div class="clickTone1" onclick="this.parentNode.parentNode.action='<p:fullurl value="/cg1101/cg110101/deniedRequest"/>';doAjaxSubmit('defaultForm${i.index}','${i.index}','del',this)">
															<img src="<p:localurl value="/resources/images/buttons/jujue-blue.png"/>" />
														</div>
														<div class="clearfix"></div>
													</div>
												</form>
											</c:if>
											<c:if test="${fn:contains(friendMessageBox.friendMessageBoxType, 'RESPONSE')}">
												<div class="top-right-panel">
													<div class="mes-body-style">
														<div class="archives-item icon-location">
															<span class="fc-title-02"><spring:message code="label.cg1101.cg110101.Msg"></spring:message>：</span>
															<span class="system-content">${fn:length(messBody) > 10?fn:substring(messBody, 0,10):messBody}${fn:length(messBody) > 10?"...":""}</span>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												
												<form
													action="<p:fullurl value="/cg1101/cg110101/callBack"/>">
													<input type="hidden" name="id" value="${friendMessageBox.id}" />
													<input type="hidden" name="sendPlayerId" value="${friendMessageBox.sendPlayerId}" />
													<div class="top-right-panel">
														<div class="clickTone1 add-friend-button" onclick="JSInterface.setMsgCount(count);
																										$.post('<p:fullurl value="/cg1101/cg110101/setRead" />',
																												$(this.parentNode.parentNode).serialize(),
																												function(resp) {
																													if(resp.data == 'false') {
																														var options = {
																															suppressTitle: true, 
																															cancelOnly:true,
																															message:yijingyichu, 
																															doneCallback: function () {$('#friendMessageBoxViewDataPagedListPaginationform').get(0).submit()}
																														};
																														$(document.body).popup(options);
																													}else {
																														location.href='<p:fullurl value="/cg0501/cg050103/index" />/${friendMessageBox.sendPlayerId},FriendMsg'
																													}
																												},
																												'json');
																										">
															<img src="<p:localurl value="/resources/images/buttons/huiying-green.png"/>" />
														</div>
														<div class="clickTone1" onclick="JSInterface.setMsgCount(count);this.parentNode.parentNode.action='<p:fullurl value="/cg1101/cg110101/detail"/>';this.parentNode.parentNode.submit()">
															<img src="<p:localurl value="/resources/images/buttons/chakanquanbu-blue.png"/>" />
														</div>
														<div class="clearfix"></div>
													</div>
												</form>
											</c:if>
											<c:if test="${fn:contains(friendMessageBox.friendMessageBoxType, 'DELETEFRIEND')}">
												<div class="top-right-panel">
													<div class="mes-body-style">
														<div class="archives-item icon-location">
															<span class="system-content"><spring:message code="label.cg1101.cg110101.friend.break"></spring:message>!</span>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<form action="<p:fullurl value="/cg1101/cg110101/setReaded"/>">
													<input type="hidden" name="id" value="${friendMessageBox.id}" />
													<div class="top-right-panel">
														<div class="clickTone1 message-count" onclick="JSInterface.setMsgCount(count);this.parentNode.parentNode.submit()">
															<img src="<p:localurl value="/resources/images/buttons/queding-green.png"/>" />
														</div>
														<div class="clearfix"></div>
													</div>
												</form>
											</c:if>
											<c:if test="${fn:contains(friendMessageBox.friendMessageBoxType, 'FRIDENCONFIRM')}">
												<div class="top-right-panel">
													<div class="mes-body-style">
														<div class="archives-item icon-location">
															<span class="system-content"><spring:message code="label.cg1101.cg110101.friend.agree"></spring:message>!</span>
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<form action="<p:fullurl value="/cg1101/cg110101/setReaded"/>">
													<input type="hidden" name="id" value="${friendMessageBox.id}" />
													<div class="top-right-panel">
														<div class="clickTone1 message-count" onclick="JSInterface.setMsgCount(count);this.parentNode.parentNode.submit()">
															<img src="<p:localurl value="/resources/images/buttons/queding-green.png"/>" />
														</div>
														<div class="clearfix"></div>
													</div>
												</form>
											</c:if>
										</div>
									</div>
									<div></div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${empty friendMessageBoxViewDataPagedList }">
				<div style="text-align: center;">
					<span><spring:message code="label.cg1101.cg110102.dangqianwuxiaoxi"></spring:message></span>
				</div>
			</c:if>
		</tags:pagination>
	</div>
</div>