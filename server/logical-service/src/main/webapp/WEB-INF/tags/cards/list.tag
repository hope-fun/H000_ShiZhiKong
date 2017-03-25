<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true" description="The paged list of player cards" %>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true" description="The default search player cards list url" %>
<%@attribute name="detailUrl" type="java.lang.String" required="true" rtexprvalue="true" description="Url of select button" %>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerCardSearchViewData" required="true" rtexprvalue="true" description="It should be simply object, each property would be taken as search condition." %>

<script type="text/javascript">
	$(function() {
	    // Used for forcing to bind processbar when it is ajax loaded
	    $('div[processbar]').processbar();
	});
</script>
<c:if test="${empty items }" >
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }" >
	<tags:pagination items="${items}" id="searchCardList" method="GET" renderAjax="false" searchData="${searchData}" paginationUrl="${searchUrl}">
		<div>
			<c:forEach items="${items}" var="cardItem">
				<div class="panel-03">
					<div class='<cssutils:cardCamp campType="${cardItem.cardCamp}"/>'>
						<div class="panel-header">
							<div class="item-name-style">
								<span><c:out value="${cardItem.name}"></c:out></span>
							</div>
							<div class="item-stars-style">
								<div class="card-star">
									<c:forEach begin="1" step="1" end="${cardItem.star}" var="idx">
										<img alt="" src="<p:localurl value="/resources/images/star-d.png"/>"/>
									</c:forEach>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-assistant">
								<div class="small-card-width">
									<div class="card-assistant-image">
										<img alt="" src="<p:cardImg type="small" id="${cardItem.cardId}"></p:cardImg>" />
									</div>
								</div>
								<div class="equips-width">
									<div class="card-assistant-equipment">
										<div class="card-equipment ">
											<div class="one-equipment ">
												<c:if test="${ not empty cardItem.playerEquipment1 }" >
													<img alt="" src="<p:equipImg type="small" id="${cardItem.playerEquipment1.equipmentId}" />"/>
												</c:if>
												<c:if test="${ empty cardItem.playerEquipment1 }" >
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="one-equipment">
												<c:if test="${ not empty cardItem.playerEquipment2 }" >
													<img alt="" src="<p:equipImg type="small" id="${cardItem.playerEquipment2.equipmentId}" />"/>
												</c:if>
												<c:if test="${ empty cardItem.playerEquipment2 }" >
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="one-equipment">
												<c:if test="${ not empty cardItem.playerEquipment3 }" >
													<img alt="" src="<p:equipImg type="small" id="${cardItem.playerEquipment3.equipmentId}" />"/>
												</c:if>
												<c:if test="${ empty cardItem.playerEquipment3 }" >
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
											<div class="item-exp-style">
												<div class="archives-item icon icon-level icon-location">
													<span><c:out value="${cardItem.cardLevel}" /></span>
												</div>
											</div>
											<div class="align-center item-now-exp">
												<div class="processing-bar-blue fc-normal-01-m" processbar="<c:out value="${cardItem.growingPercent}" />"></div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="middle-right-panel">
											<div>
												<div class="archives-item icon icon-physicalstrength icon-location">
													<span><c:out value="${cardItem.strengthRequireAdded }" /></span>
												</div>
											</div>
											<div>
												<div class="archives-item icon icon-total-fighting-energy icon-location">
													<span><c:out value="${cardItem.attackAdded }" /></span>
												</div>
											</div>
											<div>
												<div class="archives-item icon icon-total-shield-energy icon-location">
													<span><c:out value="${cardItem.defenceAdded }" /></span>
												</div>
											</div>
											<div></div>
										</div>
										<div class="bottom-right-panel">
											<div class="choose-button-width">
												<div>
													<img class="clickTone1" onclick="location.href='<p:fullurl value="${detailUrl}/${cardItem.id}"/>';" 
														src="<p:localurl value="/resources/images/buttons/xuanze-green.png"/>"/>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div></div>
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