<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1001/CG1001.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg1001/cg100101.js'/>"></script>
<input type="hidden" id="cg1001operatefail" value="<spring:message code='label.cg0301.operatefail'/>"/>
<input type="hidden" id="cg1001goodnotexit" value="<spring:message code='label.cg1001.goodnotexit'/>"/>
<input type="hidden" id="cg1001buysuccess" value="<spring:message code='label.cg1001.buysuccess'/>"/>
<input type="hidden" id="cg1001cystralnotenough" value="<spring:message code='label.cg1001.cystralnotenough'/>"/>
<input type="hidden" id="cg1001buyfail" value="<spring:message code='label.cg1001.buyfail'/>"/>
<input type="hidden" id="cg1001cardslimit" value="<spring:message code='label.cg1001.cardslimit'/>"/>
<input type="hidden" id="cg1001cannotaucionselfgood" value="<spring:message code='label.cg1001.cannotaucionselfgood'/>"/>	
<div class="content">
	<div class=" title-label-03">
		<span><spring:message code="label.cg1001.wupinxiangqing" /></span>
	</div>
	<div>
		<div>
			<div class="align-center" style="text-align: center;">
				<span class="fc-content-02"><spring:message code="label.cg1001.jiage" /><c:out value="${auctionGoods.price}" /><spring:message code="label.cg1001.shuijin" />
				</span>

				<div class="item-image-display">
					<img alt=""
						src="<p:cardImg type="middle" id="${playerCardViewData.cardId}"></p:cardImg>">
				</div>
				<span class="fc-content-02"><spring:message code="label.cg1001.yongyouzhe" /><c:out value="${auctionGoods.playerName}" /></span>
				<div>
					<span class="fc-normal-05-m"><spring:message code="lable.cg0601.biaoqian" /></span> 
					<span class="fc-normal-03-m">${auctionGoods.note}</span>
				</div>
			</div>
			<div class="split-01"></div>
		</div>

		<div class="panel-03">
			<div
				class='<cssutils:cardCamp campType="${playerCardViewData.cardCamp}"/>'>
				<div class="panel-header">
					<div class="player-name-style">
						<span><c:out value="${playerCardViewData.name }"></c:out></span>
					</div>
					<div class="card-stars-style">
						<div class="card-star">
							<c:forEach begin="1" step="1" end="${playerCardViewData.star}"
								var="idx">
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
								<img alt="" style="width:100%;"
									src="<p:cardImg type="middle" id="${playerCardViewData.cardId}"></p:cardImg>" />
							</div>
						</div>
						<div class="equips-width">
							<div class="card-assistant-equipment">
								<div class="card-equipment ">
									<div class="one-equipment">
										<c:if
											test="${ not empty playerCardViewData.playerEquipmentId1 }">
											<img alt=""
												src="<p:equipImg type="ls" id="${playerCardViewData.playerEquipmentId1}" />" />
										</c:if>
										<c:if test="${ empty playerCardViewData.playerEquipmentId1 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="one-equipment">
										<c:if
											test="${ not empty playerCardViewData.playerEquipmentId2 }">
											<img alt=""
												src="<p:equipImg type="ls" id="${playerCardViewData.playerEquipmentId2}" />" />
										</c:if>
										<c:if test="${ empty playerCardViewData.playerEquipmentId2 }">
											<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
										</c:if>
									</div>
									<div class="one-equipment">
										<c:if
											test="${ not empty playerCardViewData.playerEquipmentId3 }">
											<img alt=""
												src="<p:equipImg type="ls" id="${playerCardViewData.playerEquipmentId3}" />" />
										</c:if>
										<c:if test="${ empty playerCardViewData.playerEquipmentId3 }">
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
									<div class="card-level-style">
										<div class="archives-item icon icon-level icon-location">
											<span><c:out value="${playerCardViewData.cardLevel}" /></span>
										</div>
									</div>
									<div class="grow-per-style align-center">
										<div class="processing-bar-blue fc-normal-01-m"
											processbar="<c:out value="${playerCardViewData.growingPercent}" />"></div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="middle-right-panel">
									<div>
										<div
											class="archives-item icon icon-physicalstrength icon-location">
											<span><c:out
													value="${playerCardViewData.strengthRequireAdded }" /></span>
										</div>
									</div>
									<div>
										<div
											class="archives-item icon icon-total-fighting-energy icon-location">
											<span><c:out
													value="${playerCardViewData.attackAdded }" /></span>
										</div>
									</div>
									<div>
										<div
											class="archives-item icon icon-total-shield-energy icon-location">
											<span><c:out
													value="${playerCardViewData.defenceAdded }" /></span>
										</div>
									</div>
									<div></div>
								</div>
								
								<div class="bottom-right-panel">
									<div class="buy-button-width">
										<div>
											<img onclick="BuyGoods('${auctionGoods.id}')" src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" class='clickTone1'/>
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
		<input type="hidden" id="buyTargetUrl" value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />
		<input type="hidden" id="auctionIndexUrl"value="<p:fullurl value="/cg1001/cg100101/index"/>" />
		<div class="button-fanhui">
			<img  onclick="goback()" src="<p:localurl value='/resources/images/buttons/fanhui-green-z.png'/>" class='clickTone1'/>

		</div>
	</div>
</div>