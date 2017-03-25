<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@attribute name="normalOrLarger" type="java.lang.Integer" required="true" rtexprvalue="true"%>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerCardIntensifyViewData" required="true" rtexprvalue="true"%>

<c:set var="msg"><spring:message code="label.cg030201.msg"></spring:message></c:set>
<c:set var="msgmaincard"><spring:message code="label.cg030201.msgmaincard"></spring:message></c:set>
<c:set var="msgequipment"><spring:message code="label.cg030201.msgequipment"></spring:message></c:set>

<script type="text/javascript">
	var msg = "${msg}"
</script>

<script type="text/javascript">
	$(function() {
		// Used for forcing to bind processbar when it is ajax loaded
		$('div[processbar]').processbar();
	});
</script>
<c:if test="${empty items }">
	<input type="hidden" name="playerCardId" value="${mainPlayerCard.id}" />
	<form id="intensify"></form>
</c:if>
<c:if test="${not empty items }">
	<tags:pagination items="${items}" renderAjax="false"
		id="searchCardList" method="GET" searchData="${searchData}"
		paginationUrl="${searchUrl}">
		<c:if test="${normalOrLarger==0 }">
			<form id="intensify">
				<input type="hidden" name="playerCardId"
					value="${mainPlayerCard.id}" /> 
					<!-- <input type="hidden"
					name="intensifyType" value="0" /> -->
				<c:forEach items="${playerCards}" var="card">
					<div>
						<div class="panel-03">
							<div
								class='<cssutils:cardCamp campType="${card.cardCamp}"></cssutils:cardCamp>'>
								<div class="panel-header">
									<div class="card-item-name">
										<span><c:out value="${card.name}"></c:out></span>
									</div>
									<div class="card-item-stars">
										<c:forEach begin="0" end="${card.star-1}" var="idx">
											<img src="<p:localurl value="/resources/images/star-d.png"/>" />
										</c:forEach>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-body">
									<div class="card-assistant">
										<div class="left">
											<div class="card-assistant-image">
												<img src="<p:cardImg type="small" id="${card.cardId}"></p:cardImg>" />
											</div>
										</div>
										<div class="middle">
											<div class="card-assistant-equipment">
												<div class="card-equipment ">
													<div>
														<c:if test="${ not empty card.playerEquipmentId1 }">
															<img
																src="<p:equipImg type="middle" id="${card.playerEquipment1.equipmentId }" />" />
														</c:if>
														<c:if test="${ empty card.playerEquipmentId1 }">
															<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
														</c:if>
													</div>
													<div>
														<c:if test="${ not empty card.playerEquipmentId2 }">
															<img
																src="<p:equipImg type="middle" id="${card.playerEquipment2.equipmentId }" />" />
														</c:if>
														<c:if test="${ empty card.playerEquipmentId2 }">
															<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
														</c:if>
													</div>
													<div>
														<c:if test="${ not empty card.playerEquipmentId3 }">
															<img
																src="<p:equipImg type="middle" id="${card.playerEquipment3.equipmentId }" />" />
														</c:if>
														<c:if test="${ empty card.playerEquipmentId3 }">
															<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
														</c:if>
													</div>
													<div></div>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>
										<div class="right">
											<div class="card-assistant-desc">
												<div class="top-right-panel">
													<div class="level">
														<div class="archives-item icon icon-level icon-location">
															<span>${card.cardLevel}</span>
														</div>
													</div>
													<div class="align-center">
														<div class="processing-bar-blue fc-normal-01-m"
															processbar="${card.growingPercent}"></div>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="middle-right-panel">
													<div>
														<div
															class="archives-item icon icon-physicalstrength icon-location ">
															<span>${card.strengthRequire}</span>
														</div>
													</div>
													<div>
														<div
															class="archives-item icon icon-total-fighting-energy icon-location ">
															<span>${card.attack}</span>
														</div>
													</div>
													<div>
														<div
															class="archives-item icon icon-total-shield-energy icon-location ">
															<span>${card.defence}</span>
														</div>
													</div>
													<div></div>
												</div>
												<div class="card_opearte">
													<div class="intensify_card clickTone1"
														onclick="doSubmit('<p:fullurl value="/cg0302/cg0302011/selectCard"/>',{Reset:1,Node:this},${card.cardLevel - card.levelMax })">
														<img alt=""
															src='<p:localurl value="/resources/images/buttons/qianghuacika-green.png"/>'>
													</div>
													<div class="qua_fodder clickTone1"
														onclick="doSubmit('<p:fullurl value="/cg0302/cg030202/index"/>',{Intensify:1,Node:this})">
														<img alt=""
															src='<p:localurl value="/resources/images/buttons/zuoweisucai-blue.png"/>'>
													</div>
													<input type="hidden" name="playerCardIds"
														value="${card.id}" disabled />
													<div class="select_card"></div>
												</div>
											</div>
										</div>
										<div></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</form>
		</c:if>
		<c:if test="${normalOrLarger == 1}">
			<div>
				<div class="get-all-style">
					<img alt="" class="select_all clickTone1" src='<p:localurl value='/resources/images/buttons/dangyequanxuan-green-x.png'/>'>
				</div>
				<form id="intensify">
					<input type="hidden" name="playerCardId"
						value="${mainPlayerCard.id}" /> 
						<!-- <input type="hidden"
						name="intensifyType" value="1" /> -->
					<c:forEach items="${playerCards }" var="cardItem">
						<div class="panel-03">
							<div
								class='<cssutils:cardCamp campType="${cardItem.cardCamp }"></cssutils:cardCamp>'>
								<div class="panel-header">
									<div class="card-item-name">
										<span><c:out value="${cardItem.name }"></c:out></span>
									</div>
									<div class="card-item-stars">
										<c:forEach begin="0" end="${cardItem.star - 1}" var="idx">
											<img src="<p:localurl value="/resources/images/star-d.png"/>" />
										</c:forEach>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-body">
									<div class="card-assistant">
										<div class="left">
											<div class="card-assistant-image">
												<img src="<p:cardImg type="small" id="${cardItem.cardId }"></p:cardImg>" />
											</div>
										</div>
										<div class="middle">
											<div class="card-assistant-equipment">
												<div class="card-equipment ">
													<div class="one-equipment icon-location">
														<c:if test="${ not empty cardItem.playerEquipmentId1 }">
															<img alt=""
																src="<p:equipImg type="small" id="${cardItem.playerEquipment1.equipmentId }" />" />
														</c:if>
														<c:if test="${ empty cardItem.playerEquipmentId1 }">
															<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
														</c:if>
													</div>
													<div class="one-equipment icon-location">
														<c:if test="${ not empty cardItem.playerEquipmentId2 }">
															<img alt=""
																src="<p:equipImg type="small" id="${cardItem.playerEquipment2.equipmentId }" />" />
														</c:if>
														<c:if test="${ empty cardItem.playerEquipmentId2 }">
															<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
														</c:if>
													</div>
													<div class="one-equipment icon-location">
														<c:if test="${ not empty cardItem.playerEquipmentId3 }">
															<img alt=""
																src="<p:equipImg type="small" id="${cardItem.playerEquipment3.equipmentId }" />" />
														</c:if>
														<c:if test="${ empty cardItem.playerEquipmentId3 }">
															<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
														</c:if>
													</div>
													<div></div>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>
										<div class="right">
											<div class="card-assistant-desc">
												<div class="top-right-panel">
													<div class="level">
														<div class="archives-item icon icon-level icon-location">
															<span><c:out value="${cardItem.cardLevel}" /></span>
														</div>
													</div>
													<div class="align-center">
														<div class="processing-bar-blue fc-normal-01-m" processbar="<c:out value="${cardItem.growingPercent<=100 ? cardItem.growingPercent : 100}" />">
														</div>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="middle-right-panel">
													<div>
														<div class="archives-item icon icon-physicalstrength icon-location">
															<span><c:out value="${cardItem.strengthRequire }" /></span>
														</div>
													</div>
													<div>
														<div class="archives-item icon icon-total-fighting-energy icon-location ">
															<span><c:out value="${cardItem.attack }" /></span>
														</div>
													</div>
													<div>
														<div class="archives-item icon icon-total-shield-energy icon-location ">
															<span><c:out value="${cardItem.defence}" /></span>
														</div>
													</div>
													<div></div>
												</div>
												<div class="card_opearte">
													<div class="intensify_card clickTone1" 
														onclick="doSubmit('<p:fullurl value="/cg0302/cg030201/selectCard"/>',{Reset:1,Node:this},${cardItem.cardLevel - cardItem.levelMax })">
														<img alt=""
															src='<p:localurl value="/resources/images/buttons/qianghuacika-green.png"/>'>
													</div>
													
													<c:set var="containsFlag">${searchData.playerCardIds.contains(cardItem.id)}</c:set>
													<c:if test="${not containsFlag}">
														<div class="qua_fodder" onclick="
																					if(${cardItem.isMain}) {
																						alert('${msgmaincard }')
																						return false
																					}
																					if(${(not empty cardItem.playerEquipmentId1) 
																						|| (not empty cardItem.playerEquipmentId2) 
																						|| (not empty cardItem.playerEquipmentId3) }) {
																						alert('${msgequipment }')
																						return false
																					}
																					doToggle(this)
																					">
															<input type="hidden" name="playerCardIds"
																value="${cardItem.id }" size="45" disabled="disabled" class="a"></input>
															<img alt=""
																src='<p:localurl value="/resources/images/buttons/xuanze-blue.png"/>'>
															<c:if test="${cardItem.isMain 
																		|| (not empty cardItem.playerEquipmentId1) 
																		|| (not empty cardItem.playerEquipmentId2) 
																		|| (not empty cardItem.playerEquipmentId3)}">
																<script>
																	$("input[value='${cardItem.id}']").attr("class","b")
																</script>
															</c:if>
														</div>
													</c:if>
													<c:if test="${containsFlag}">
														<div class="qua_fodder" onclick="doToggle(this)">
															<input type="hidden" name="playerCardIds"
																value="${cardItem.id }" size="45" class="a"></input> <img alt=""
																src='<p:localurl value="/resources/images/buttons/xuanze-blue-checked.png"/>'>
														</div>
													</c:if>
													<div class="select_card"></div>
												</div>
											</div>
										</div>
										<div></div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</form>
				<div class="get-all-style">
					<img alt="" class="select_all clickTone1" src='<p:localurl value='/resources/images/buttons/dangyequanxuan-green-x.png'/>'>
				</div>
			</div>
		</c:if>
	</tags:pagination>
</c:if>