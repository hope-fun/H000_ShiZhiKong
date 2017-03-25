<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true" description="The paged list of player cards" %>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true" description="The default search player cards list url" %>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.data.service.vo.SearchPlayerVO" required="true" rtexprvalue="true" description="It should be simply object, each property would be taken as search condition." %>

<c:if test="${empty items }" >
	<div class="align-center"></div>
</c:if>
<input type="hidden" id="cg0501applyfriend" value="<spring:message code='label.cg0501.applyfriend'/>"/>
<c:if test="${not empty items }" >
	<tags:pagination items="${items}" id="searchPlayerList" method="GET" renderAjax="false" searchData="${searchData }" paginationUrl="${searchUrl }">
		<div>
			<input type="hidden" id="full_applyFriend_url" value="<p:fullurl value="/cg0501/cg050106/doApplyFriend/" />" />
			<input type="hidden" id="apply_message" value="<spring:message code="label.cg0501.playertag.applymessage"></spring:message>" />
			<input type="hidden" id="max_message" value="<spring:message code="label.cg0501.playertag.maxmessage"></spring:message>" />
			<c:forEach items="${items}" var="playerItem">
			
				<c:set var="playerCard" value="${playerItem.playerMaindCardVO }" />
				
					<div class="panel-03">
						<div class='<cssutils:cardCamp campType="${playerItem.camp}" />'>
							<div class="panel-header">
								<div class="rivail-info">
									<span><c:out value="${playerItem.name}" /></span>
								</div>
								
								<div class="small-rank-pic">
									<c:if test="${playerItem.ranking > 0 }">
										<img src="<p:localurl value="/resources/images/small-ranking-${playerItem.ranking}.png"/>" />
									</c:if>
								</div> 
								
								<div class="vip-level-pic">
									<c:if test="${ playerItem.vipLevel > 0 }">
										<img src="<p:localurl value="/resources/images/viplevel/${playerItem.vipLevel}.png"/>" />
									</c:if>
								</div>
								<div class="clearfix"></div>
							</div>
						
							<div class="panel-body">
								<div class="card-assistant">
									<div class="small-card-width">
										<div class="card-assistant-image">
											<img alt="" src="<p:cardImg type="small" id="${playerCard.cardId}"></p:cardImg>" />
										</div>
									</div>
									<div class="equips-width">
										<div class="card-assistant-equipment">
											<div class="card-equipment ">
												<div class="one-equipment icon-location ">
													<c:if test="${ not empty playerCard.playerEquipmentId1 }" >
														<img alt="" src="<p:equipImg type="small" id="${playerCard.playerEquipment1.equipmentId }" />" />
													</c:if>
													<c:if test="${ empty playerCard.playerEquipmentId1 }" >
														<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
													</c:if>
												</div>
												<div class="one-equipment icon-location">
													<c:if test="${ not empty playerCard.playerEquipmentId2 }" >
														<img alt="" src="<p:equipImg type="small" id="${playerCard.playerEquipment2.equipmentId }" />" />
													</c:if>
													<c:if test="${ empty playerCard.playerEquipmentId2 }" >
														<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
													</c:if>
												</div>
												<div class="one-equipment icon-location">
													<c:if test="${ not empty playerCard.playerEquipmentId3 }" >
														<img alt="" src="<p:equipImg type="small" id="${playerCard.playerEquipment3.equipmentId }" />" />
													</c:if>
													<c:if test="${ empty playerCard.playerEquipmentId3 }" >
														<img src="<p:localurl value="/resources/images/icons/default.png"/>" />
													</c:if>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="player-info-width">
										<div class="card-assistant-desc">
											<div class="top-right-panel">
												<div class="player-level-style">
													<div class="archives-item icon icon-level icon-location">
														<span class="fc-title-02"><spring:message code="label.cg0501.playertag.level"></spring:message>:</span>
														<span class="system-content">
															<c:if test="${not empty playerItem.level }"><c:out value="${playerItem.level}" /></c:if>
															<c:if test="${empty playerItem.level }">0</c:if>
														</span>
													</div>
												</div>
												<div>
													<div class="archives-item icon icon-comrades icon-location">
														<span class="fc-title-02"><spring:message code="label.cg0501.playertag.friend"></spring:message>:</span>
														<span class="system-content">
															<c:if test="${not empty playerItem.friendsNum }"><c:out value="${playerItem.friendsNum}" /></c:if>
															<c:if test="${empty playerItem.friendsNum }">0</c:if>/
															<c:if test="${not empty playerItem.friendsMax }"><c:out value="${playerItem.friendsMax}" /></c:if>
															<c:if test="${empty playerItem.friendsMax }">0</c:if>
														</span>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="top-right-panel">
												<div class="player-card-num">
													<div class="archives-item icon icon-mercenary icon-location">
														<span class="fc-title-02"><spring:message code="label.cg0501.playertag.cardnum"></spring:message>:</span>
														<span class="system-content">
															<c:if test="${not empty playerItem.cardsCount }"><c:out value="${playerItem.cardsCount}" /></c:if>
															<c:if test="${empty playerItem.cardsCount }">0</c:if>/
															<c:if test="${not empty playerItem.cardsMax }"><c:out value="${playerItem.cardsMax}" /></c:if>
															<c:if test="${empty playerItem.cardsMax }">0</c:if>
														</span>
													</div>
												</div>
												<div>
													<div class="archives-item icon icon-league-icon icon-location">
														<span class="fc-title-02"><spring:message code="label.cg0501.playertag.league"></spring:message>:</span>
														<span class="system-content">
															<c:if test="${not empty playerItem.unionName }">
																<c:out value="${fn:substring(playerItem.unionName, 0, 2) }" /><c:if test="${fn:length(playerItem.unionName) > 2 }">...</c:if>
															</c:if>
															<c:if test="${empty playerItem.unionName }">
																<spring:message code="label.cg0501.playertag.noleague" />
															</c:if>
														</span>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>								
											<div class="top-right-panel">
												<div class="player-friend-button">
													<c:if test="${playerItem.isCanApply==true }" >
														<div id="show_apply_${playerItem.id }" style="display:block;">
								                         	<img id="${playerItem.id }" class="apply_green clickTone1"  src="<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>"/>
								      					</div>
								      					<div id="hidden_apply_${playerItem.id }" style="display:none;">
								                         	<img class="button_gray"  src="<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>"/>
								      					</div>
							      					</c:if>
							      					
							      					<c:if test="${playerItem.isCanApply==false }" >
								      					<div id="hidden_apply_${playerItem.id }">
								                         	<img class="button_gray"  src="<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>"/>
								      					</div>
							      					</c:if>
							      					
												</div>
												<div>												
													 <a href="#" class="clickTone1" onclick="location.href = '<p:fullurl value="/cg0501/cg050107/index/${playerItem.id }/${searchData.urlReturnType }" />';event.preventDefault();">
							                        	 <img src="<p:localurl value="/resources/images/buttons/chakanxiangqing-blue.png"/>"/>
							                         </a>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
										<div></div> 
									</div>
								</div>
							</div>
						</div>
					</div>
			</c:forEach>
		</div>
	</tags:pagination>	
</c:if>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0501/cg050101playerFriend.js'/>"></script>