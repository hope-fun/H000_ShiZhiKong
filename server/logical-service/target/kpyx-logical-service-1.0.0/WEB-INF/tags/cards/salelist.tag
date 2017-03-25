<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true" description="The paged list of player cards" %>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true" description="The default search player cards list url" %>
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
<div class="gbutton-01 button-padding sale-button-width">
	<div><input class="btn_selAll" type="image" src="<p:localurl value='/resources/images/buttons/dangyequanxuan-green-x.png'/>" /></div>
	<div><input class="btn_sale" type="image" src="<p:localurl value='/resources/images/buttons/chushou-blue-x.png'/>" /></div>
	<div class="clearfix"></div>
</div>
<tags:pagination items="${items }" id="searchCardList" method="GET" renderAjax="false" searchData="${searchData }" paginationUrl="${searchUrl }">
	<div>
		<c:forEach items="${items }" var="cardItem">
		<div class="panel-02">
			<div class='<cssutils:cardCamp campType="${cardItem.cardCamp}"/>'>
				<div class="panel-header">
					<div style="float:left;"><span><c:out value="${cardItem.name }" /></span></div>
					<div class="sale-list-stars">
						<c:forEach begin="1" end="${cardItem.star}" var="idx">
							<img alt="star" src="<p:localurl value='/resources/images/star-d.png' />"/>
						</c:forEach>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="panel-body">
					<div class="card-major">
						<div class="middle-card-width">
							<div class="card-major-image">
								<img alt="cardId" src='<p:cardImg type="middle" id="${cardItem.cardId }" />' />
							</div>
							<div class="card-major-image-equipment middel-equips-width">
								<div>
									<c:if test="${ not empty cardItem.playerEquipmentId1 }" >
										<img class="equImg_${cardItem.id }" alt="equId1" src='<p:equipImg type="middle" id="${cardItem.playerEquipment1.equipmentId }" />' />
									</c:if>
									<c:if test="${ empty cardItem.playerEquipmentId1 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
									</c:if>
								</div>
								
								<div>
									<c:if test="${ not empty cardItem.playerEquipmentId2 }" >
										<img class="equImg_${cardItem.id }" alt="equId2" src='<p:equipImg type="middle" id="${cardItem.playerEquipment2.equipmentId }" />' />
									</c:if>
									<c:if test="${ empty cardItem.playerEquipmentId2 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
									</c:if>
								</div>
								<div>
									<c:if test="${ not empty cardItem.playerEquipmentId3 }" >
										<img class="equImg_${cardItem.id }" alt="equId3" src='<p:equipImg type="middle" id="${cardItem.playerEquipment3.equipmentId }" />' />
									</c:if>
									<c:if test="${ empty cardItem.playerEquipmentId3 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
									</c:if>
								</div>
								<div></div>
							</div>
						</div>
						<div class="middle-info-width">
							<div class="card-major-desc" >
								<div class="card-major-data" >
									<div class="icon icon-level">
										<span><spring:message code="label.cg03010101.carddetail.level" /></span>
										<span><c:out value="${cardItem.cardLevel }" /></span>
										<div class="sale-equip-style">
											<c:if test="${ not empty cardItem.playerEquipmentId1 || not empty cardItem.playerEquipmentId2 || not empty cardItem.playerEquipmentId3 }" >
												<input class="sell_out" price="${cardItem.price }" id="sell_out_${cardItem.id }" name="isSale" type="checkbox" value="<c:out value='${cardItem.id }' />" disabled="disabled" />
												<label for="sell_out" value='${cardItem.id }' class="css-label checkbox-pic-style"></label>
											</c:if>
											
											<c:if test="${ empty cardItem.playerEquipmentId1 && empty cardItem.playerEquipmentId2 && empty cardItem.playerEquipmentId3 }" >
												<input class="sell_out" id="sell_out_${cardItem.id }" price="${cardItem.price }" name="isSale" type="checkbox" value="<c:out value='${cardItem.id }' />" >
												<label for="sell_out" value='${cardItem.id }' class="css-label checkbox-pic-style"></label>
											</c:if>
											
											<span class="fc-normal-01-l"><spring:message code="label.cg03010101.carddetail.cbox_sale" /></span>
										</div>
									</div>
									<div class="icon icon-physicalstrength">
										<span><spring:message code="label.cg03010101.carddetail.strengthrequire" /></span>
										<span id="strengthRequire_${cardItem.id }"><c:out value="${cardItem.strengthRequireAdded }" /></span>
									</div>
									<div class="icon icon-total-fighting-energy">
										<span><spring:message code="label.cg03010101.carddetail.attack" /></span>
										<span id="attack_${cardItem.id }"><c:out value="${cardItem.attackAdded }" /></span>
									</div>
									<div class="icon icon-total-shield-energy">
										<span><spring:message code="label.cg03010101.carddetail.defence" /></span>
										<span id="defence_${cardItem.id }"><c:out value="${cardItem.defenceAdded }" /></span>
									</div>
									<div></div>
								</div>
								<div class="card-major-experience">
									<div class="fc-normal-01-l growing-per-width"><span><spring:message code="label.cg03010101.carddetail.growingpercent" /></span></div>
									<div class="growing-bar-width">
										<div class="processing-bar-blue fc-normal-01-m" processbar="${cardItem.growingPercent }"></div>
									</div>
									<div></div>
								</div>
								<div style="text-align: center;">
									<div class="prompt-info">
										<c:if test="${ not empty cardItem.playerEquipmentId1 || not empty cardItem.playerEquipmentId2 || not empty cardItem.playerEquipmentId3 }" >
											<span id="info_disboard_${cardItem.id }" class="fc-withwild-s"><spring:message code="label.cg03010101.carddetail.info_disboard" /></span>
										</c:if>
									</div>
									<div class="button-style-02">
										<div class="price">
											<span><spring:message code="label.cg03010101.carddetail.price" /></span>
											<span><c:out value="${cardItem.price }" /><spring:message code="label.cg03010101.carddetail.price_unit" /></span>
										</div>
										<div class="xianqian-button">
											<c:if test="${ not empty cardItem.playerEquipmentId1 || not empty cardItem.playerEquipmentId2 || not empty cardItem.playerEquipmentId3 }" >
												<input id="btn_disboard_${cardItem.id }" class="btn_disboard" type="image" value="<c:out value='${cardItem.id }' />" src="<p:localurl value='/resources/images/buttons/quanbuxiechu-green.png'/>" />
											</c:if>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	
		<div class="gbutton-01 button-padding sale-button-width">
			<div><input class="btn_selAll" type="image" src="<p:localurl value='/resources/images/buttons/dangyequanxuan-green-x.png'/>" /></div>
			<div><input class="btn_sale" type="image" src="<p:localurl value='/resources/images/buttons/chushou-blue-x.png'/>" /></div>
			<div class="clearfix"></div>
		</div>
	</div>
</tags:pagination>
</c:if>