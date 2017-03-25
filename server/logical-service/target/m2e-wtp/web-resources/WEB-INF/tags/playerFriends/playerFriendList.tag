<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true" description="The paged list of player cards" %>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true" description="The default search player cards list url" %>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.data.service.vo.SearchPlayerFriendVO" required="true" rtexprvalue="true" description="It should be simply object, each property would be taken as search condition." %>
<input type="hidden" id="cg0501applyfriend" value="<spring:message code='label.cg0501.applyfriend'/>"/>
<c:if test="${empty items }" >
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }" >
	<tags:pagination items="${items}" id="playerFriendList" method="GET" renderAjax="false" searchData="${searchData }" paginationUrl="${searchUrl }">
		<div>
			<input type="hidden" id="full_upFriend_url" value="<p:fullurl value="/cg0501/cg050101/doUpFriend/" />" />
			<c:forEach items="${items }" var="playerFriendItem">
			
				<c:set var="friendPlayerCard" value="${playerFriendItem.friendPlayerCard }" />
				<c:set var="friendPlayer" value="${playerFriendItem.friendPlayer }" />
			
				<div class="panel-02">
					<div class="<cssutils:cardCamp campType='${friendPlayer.camp}'/>">
						<div class="panel-header">
							<div class="rivail-info"><span><c:out value="${friendPlayer.name }" /></span></div>
							
							<div class="small-rank-pic">
								<c:if test="${playerFriendItem.ranking > 0 }">
									<img src="<p:localurl value="/resources/images/small-ranking-${playerFriendItem.ranking}.png"/>" />
								</c:if>
							</div> 
							
							<div class="vip-level-pic">
								<c:if test="${ friendPlayer.vipLevel > 0 }">
									<img src="<p:localurl value="/resources/images/viplevel/${friendPlayer.vipLevel}.png"/>" />
								</c:if>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-major fc-normal-03-m">
								<div class="middle-card-width">
									<div class="card-major-image">
										<c:if test="${not empty friendPlayerCard.cardId }" >
											<img alt="" src="<p:cardImg type="middle" id="${friendPlayerCard.cardId }"></p:cardImg>"/>
										</c:if>
										<c:if test="${empty friendPlayerCard.cardId }" >
											<img />
										</c:if>
									</div>
									<div class="card-major-image-equipment middel-equips-width">
										<div >
											<c:if test="${not empty friendPlayerCard.playerEquipmentId1 }" >
												<img src="<p:equipImg type="middle" id="${friendPlayerCard.playerEquipment1.equipmentId }" />" />
											</c:if>
											<c:if test="${empty friendPlayerCard.playerEquipmentId1 }" >
												<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
											</c:if>
										</div>
										<div>
											<c:if test="${not empty friendPlayerCard.playerEquipmentId2 }" >
												<img src="<p:equipImg type="middle" id="${friendPlayerCard.playerEquipment2.equipmentId }" />" />
											</c:if>
											<c:if test="${empty friendPlayerCard.playerEquipmentId2 }" >
												<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
											</c:if>
										</div>
										<div>
											<c:if test="${not empty friendPlayerCard.playerEquipmentId3 }" >
												<img src="<p:equipImg type="middle" id="${friendPlayerCard.playerEquipment3.equipmentId }" />" />
											</c:if>
											<c:if test="${empty friendPlayerCard.playerEquipmentId3 }" >
												<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
											</c:if>
										</div>
										<div></div>
									</div>
								</div>
								<div class="middle-info-width">
									<div class="card-major-desc" >
										<div class="card-major-data" >
											<div class="icon icon-level icon-level-padding">
												<span><spring:message code="label.cg050101.playerfriend.level"></spring:message>:</span>
												<span>
													<c:if test="${not empty friendPlayer.level }"><c:out value="${friendPlayer.level}" /></c:if>
													<c:if test="${empty friendPlayer.level }">0</c:if>
												</span>
											</div>
											<div class="icon icon-total-shield-energy icon-level-padding">
												<span><spring:message code="label.cg050101.playerfriend.defence"></spring:message>:</span>
												<span>
													<c:if test="${not empty friendPlayer.defencePower }"><c:out value="${friendPlayer.defencePower}" /></c:if>
													<c:if test="${empty friendPlayer.defencePower }">0</c:if>
												</span>
											</div>
											<div class="icon icon-comrades icon-level-padding">
												<span><spring:message code="label.cg050101.playerfriend.friend"></spring:message>:</span>
												<span>
													<c:if test="${not empty friendPlayer.friendsNum }"><c:out value="${friendPlayer.friendsNum}" /></c:if>
													<c:if test="${empty friendPlayer.friendsNum }">0</c:if>/
													<c:if test="${not empty friendPlayer.friendsMax }"><c:out value="${friendPlayer.friendsMax}" /></c:if>
													<c:if test="${empty friendPlayer.friendsMax }">0</c:if>
												</span>
											</div>
										
										</div>
										
										<div class = "single-friend-button-level-1">										
									         <div id = "cg050101_button_ding" class="single-friend-button-1" >
									         	<div id="show_ding_${playerFriendItem.id }" style="display:<c:if test="${playerFriendItem.isCanUp==true }" >block;</c:if><c:if test="${playerFriendItem.isCanUp==false }" >none;</c:if>">
						                         	<a><img id="${playerFriendItem.id }" alt="button" class="ding_green"  src="<p:localurl value="/resources/images/buttons/ding-green.png"/>"/></a>
						      					</div>
						      					<div id="hidden_ding_${playerFriendItem.id }" style="display:<c:if test="${playerFriendItem.isCanUp==true }" >none;</c:if><c:if test="${playerFriendItem.isCanUp==false }" >block;</c:if>">
						                         	<img alt="button" class="button_gray"  src="<p:localurl value="/resources/images/buttons/ding-green.png"/>"/>
						      					</div>
						                      </div>
				                             <div id = "cg050101_button_reply" class="single-card-button-2" >
					                             <a href="#" class="clickTone1" onclick="location.href = '<p:fullurl value="/cg0501/cg050103/index/${playerFriendItem.friendId },list" />';event.preventDefault();">
						                           <img alt="button"  src="<p:localurl value="/resources/images/buttons/huiying-blue.png"/>"/>
						                         </a>
				                             </div>
											<div class="clearfix"></div>
										</div>
										
										<div  class = "single-friend-button-level-2">										
									         <div id = "cg050101_button_detail" class="single-friend-button-1" >
										         <a href="#" class="clickTone1" onclick="location.href = '<p:fullurl value="/cg0501/cg050102/index/${playerFriendItem.id }" />';event.preventDefault();">
						                        	 <img alt="button"  src="<p:localurl value="/resources/images/buttons/chakanxiangqing-green.png"/>"/>
						                         </a>
				                           	 </div>
				                             <div id = "cg050101_button_deletefriend" class="single-card-button-2" >
					                             <div style="display:<c:if test="${isCanRemove==true }" >block;</c:if><c:if test="${isCanRemove==false }" >none;</c:if>">
						                         	<a href="#" class="clickTone1" onclick="location.href = '<p:fullurl value="/cg0501/cg050104/SureDeleteFriend/${playerFriendItem.id }" />';event.preventDefault();">
						                          		<img alt="button"  src="<p:localurl value="/resources/images/buttons/yichuzhanyou-blue.png"/>"/>
						                          	</a>
						      					</div>
						      					<div style="display:<c:if test="${isCanRemove==true }" >none;</c:if><c:if test="${isCanRemove==false }" >block;</c:if>">
						                         	<img alt="button" class="button_gray"  src="<p:localurl value="/resources/images/buttons/yichuzhanyou-blue.png"/>"/>
						      					</div>
				                             </div>
											<div class="clearfix"></div>
										</div>										
									</div>
								</div>
								<div></div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</tags:pagination>	
</c:if>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0501/cg050101playerFriend.js'/>"></script>