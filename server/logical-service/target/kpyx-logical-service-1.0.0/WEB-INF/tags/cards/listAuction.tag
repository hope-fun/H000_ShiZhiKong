<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<%@attribute name="items"
	type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"
	required="true" rtexprvalue="true"
	description="The paged list of player cards"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search player cards list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerCardSearchViewData"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>
<script>
	document.addEventListener("keydown",function() {
		if(event.keyCode == 13 || event.keyCode == 108)
			event.preventDefault();
	});
</script>
<c:if test="${empty items }">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">
	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData }"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items}" var="item" varStatus="status">
			<c:if test="${status.index ==0 }">
				<div class="split-01"></div>
			</c:if>
			<form id="form_${item.id}" method="POST"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
				<div>
					<div class="panel-03">
						<div class='<cssutils:cardCamp campType="${item.cardCamp}"/>'>
							<div class="panel-header">
								<div class="item-name-style" >
									<span><c:out value="${item.name}"></c:out></span>
								</div>
								<div class="item-stars-style">
									<div class="card-star">
										<c:forEach begin="1" step="1" end="${item.star}" var="idx">
											<img alt=""
												src="<p:localurl value="/resources/images/star-d.png"/>" />
										</c:forEach>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<div class="card-assistant">
									<div class="small-card-width">
										<div class="card-assistant-image">
											<img alt=""
												src="<p:cardImg type="small" id="${item.cardId}"></p:cardImg>" />
										</div>
									</div>
									<div class="equips-width">
										<div class="card-assistant-equipment">
											<div class="card-equipment ">
												<div class="one-equipment">
													<c:if test="${ not empty item.playerEquipmentId1 }">
														<img class="equImg_${item.id } alt="
															"
															src="<p:equipImg type="small" id="${item.playerEquipment1.equipmentId }" />" />
													</c:if>
													<c:if test="${ empty item.playerEquipmentId1 }">
														<img
															src="<p:localurl value="/resources/images/icons/default.png"/>" />
													</c:if>
												</div>
												<div class="one-equipment">
													<c:if test="${ not empty item.playerEquipmentId2 }">
														<img alt=""
															src="<p:equipImg type="small" id="${item.playerEquipment2.equipmentId }" />" />
													</c:if>
													<c:if test="${ empty item.playerEquipmentId2 }">
														<img
															src="<p:localurl value="/resources/images/icons/default.png"/>" />
													</c:if>
												</div>
												<div class="one-equipment">
													<c:if test="${ not empty item.playerEquipmentId3 }">
														<img alt=""
															src="<p:equipImg type="small" id="${item.playerEquipment3.equipmentId }" />" />
													</c:if>
													<c:if test="${ empty item.playerEquipmentId3 }">
														<img
															src="<p:localurl value="/resources/images/icons/default.png"/>" />
													</c:if>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="player-info-width">
										<div class="card-assistant-desc">
											<div class="top-right-panel">
												<div class="item-exp-style">
													<div class="archives-item icon icon-level icon-location">
														<div class="archives-item icon icon-level icon-location">
															<span><c:out value="${item.cardLevel}" /></span>
														</div>
													</div>
												</div>
												<div class="align-center item-now-exp">
													<div class="processing-bar-blue fc-normal-01-m"
														processbar="<c:out value="${item.growingPercent}" />"></div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="middle-right-panel">
												<div>
													<div
														class="archives-item icon icon-physicalstrength icon-location">
														<span id="strengthRequire_${item.id }"><c:out
																value="${item.strengthRequireAdded }" /></span>
													</div>
												</div>
												<div>
													<div
														class="archives-item icon icon-total-fighting-energy icon-location">
														<span id="attack_${item.id }"><c:out
																value="${item.attackAdded }" /></span>
													</div>
												</div>
												<div>
													<div
														class="archives-item icon icon-total-shield-energy icon-location">
														<span id="defence_${item.id }"><c:out
																value="${item.defenceAdded }" /></span>
													</div>
												</div>
												<div></div>
											</div>

											<div class="bottom-right-panel">
												<c:if
													test="${ not empty item.playerEquipmentId1 || not empty item.playerEquipmentId2 || not empty item.playerEquipmentId3 }">
													<div style="width: 100%">
														<div id="info_disboard_${item.id }" class="ciha-kexiexia">
															<span class="fc-withwild-s"><spring:message
																	code="label.cg030101.cihakaixiexia" /></span>
														</div>
														<div id="btn_disboard_${item.id }" style="float: left;">
															<input type="image" class="btn_disboard"
																value="<c:out value='${item.id }' />"
																src="<p:localurl value='/resources/images/buttons/quanbuxiechu-green.png'/>" />
														</div>
														<div style="clear: both; float: none;"></div>
													</div>

												</c:if>
												<c:if
													test="${ empty item.playerEquipmentId1 and  empty item.playerEquipmentId2 and empty item.playerEquipmentId3 }">
													<div style="width: 100%">
														<span style="float: left;" class="fc-normal-05-l"><spring:message
																code="label.cg0602.jiage" /></span>
														<div class="auct-info-style">
															<input id="input_${item.id}" type="text" value="" class="auct-price-style"/> 
															<input
																id="inputHidden_${item.id}" type="hidden" name="price"
																value="" />
														</div>
														<div class="auct-get-coin">
														
														<span ><spring:message
																code="label.cg0602.shuijin" /></span>
														</div>
														<div class="clearfix"></div>
													</div>
												</c:if>


												<div class="clearfix"></div>
											</div>

										</div>
									</div>
									<div></div>
								</div>
							</div>
						</div>
					</div>
					<c:if
						test="${ empty item.playerEquipmentId1 and  empty item.playerEquipmentId2 and empty item.playerEquipmentId3 }">
						<div class="commodity-info">
							<div class="goods-label-style">
								<span class="fc-normal-05-l"><spring:message
										code="label.cg0602.shangpinbiaoqian" /></span>
							</div>
							<div class="label-input-style">
								<input id="label_${item.id}" type="text" name="note" value=""
									style="width: 100%" />
							</div>
							<div></div>
						</div>

						<input type="hidden" name="uniqueId" value="${item.id}" />

						<div class="auction">
							<img src="<p:localurl value='/resources/images/buttons/paimai-green-x.png'/>" class="clickTone1" onclick="doHandle('${item.id}','<p:fullurl value='/cg1001/cg1001/clickAuction'/>',this)"/>
						</div>
						<input type="hidden" name="itemType" value="CARD" />
						<input type="hidden" name="itemCount" value="1" />
						<div class="split-01"></div>
					</c:if>
				</div>
			</form>
		</c:forEach>
	</tags:pagination>
</c:if>
