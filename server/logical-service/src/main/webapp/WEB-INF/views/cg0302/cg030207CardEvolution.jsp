<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<c:set var="isEmpty" value="true"></c:set>
<c:if test="${not empty evolutionCard }">
	<c:set var="isEmpty" value="false"></c:set>
</c:if>
<c:set var="stepmax">
	<spring:message code="label.cg030207.cardevolution.stepmax" />
</c:set>
<c:set var="allequipments">
	<spring:message code="label.cg030207.cardevolution.allequipments" />
</c:set>
<c:set var="stepupper">
	<spring:message code="label.cg030207.cardevolution.stepupper" />
</c:set>
<c:set var="hasequipment">
	<spring:message code="label.cg030207.cardevolution.hasequipment" />
</c:set>
<c:set var="nomaincard">
	<spring:message code="label.cg030207.cardevolution.nomaincard" />
</c:set>
<script type="text/javascript">
	var isEmpty = "${isEmpty}"
	function XchangeNodes() {
		var formA = document.forms[0];
		var formB = document.forms[1];
		var formC = document.forms[2];
		if(isEmpty == "false") {
			formB.appendChild(formC.evolutionCardId.cloneNode());
			formA.appendChild(formC.evolutionCardId.cloneNode());
		}else {			
		}
		formA.appendChild(formB.pageIndex.cloneNode());
		formA.appendChild(formB.pageSize.cloneNode());
	};
	$(function() {
		XchangeNodes();
		$(".pagination-button").each(function() {
			this.addEventListener("click",function(){
				document.forms[1].appendChild(document.forms[1].pageIndex.cloneNode());
				document.forms[1].pageIndex[1].name="selectInfo";
				document.forms[1].selectInfo.value = "_"+$("select[name='selectInfo']").val();
			},true);
		});
	});
</script>
<script type="text/javascript">
	function zhuansheng(id, step) {
		var href = $("#" + id).attr("href");
		if(parseInt(step) >= 4) {
			kpyxTips("${stepmax}");
			return false;
		}
		if(href == "#") {
			kpyxTips("${allequipments}");
			return false;
		}
		return true;
	}
	function handle(id, form, evolutionCardStep, materialCardStep, isMain) {
		var href = $("#" + id).attr("href");
		if(isMain == "true") {
			kpyxTips("${nomaincard}");
			return false;
		}
		if(evolutionCardStep < materialCardStep || materialCardStep == 4) {
			kpyxTips("${stepupper}");
			return false;
		}
		if(href == "#") {
			kpyxTips("${hasequipment}");
			return false;
		} else {
			form.submit();
			return true;
		}
	}
	
	function xiechu(id) {
		//XchangeNodes();
		document.forms[1].appendChild(document.forms[1].pageIndex.cloneNode());
		document.forms[1].pageIndex[1].name="selectInfo";
		document.forms[1].selectInfo.value = "_"+$("select[name='selectInfo']").val();
		document.forms[1].appendChild(document.forms[2].unload.cloneNode())
		document.forms[1].unload.value=id
		document.forms[1].submit();
	}
</script>
<div class="content cg030207CardEvolution">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg030207.cardevolution.title"></spring:message></span>
	</div>
	<c:if test="${empty evolutionCard}">
		<div class="panel-npc">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="npc-message">
				<div>
						<img alt="" src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class='npc-info fc-normal-05-m'>
						<spring:message code="label.cg030207.cardevolution.choosecard"></spring:message>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${not empty evolutionCard}">
		<div>
			<div class="panel-02">
				<div>
					<div class="panel-header">
						<span><c:out
								value="${(empty evolutionCard.name) ? evolutionCard.id : evolutionCard.name }"></c:out></span>
						<div class="stars">
							<c:if test="${evolutionCard.star >= 1 }">
								<c:forEach var="i" begin="1" end="${evolutionCard.star}"
									step="1">
									<img
										src='<p:localurl value="/resources/images/star-d.png"/>'></img>
								</c:forEach>
							</c:if>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-body">
						<div class="card-major">
							<div class="left">
								<div class="card-major-image">
									<a
										href="<p:fullurl value="/cg0301/cg030102/index/${evolutionCard.id }"/>">
										<img
										src='<p:cardImg type="middle" id="${evolutionCard.cardId }"></p:cardImg>' />
									</a>
								</div>
								<div class="card-major-image-equipment " >
									<div>
										<c:if test="${ not empty evolutionCard.playerEquipmentId1 }">
											<img
												src="<p:equipImg type="middle" id="${evolutionCard.playerEquipment1.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty evolutionCard.playerEquipmentId1 }">
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
										</c:if>
									</div>
									<div>
										<c:if test="${ not empty evolutionCard.playerEquipmentId2 }">
											<img
												src="<p:equipImg type="middle" id="${evolutionCard.playerEquipment2.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty evolutionCard.playerEquipmentId2 }">
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
										</c:if>
									</div>
									<div>
										<c:if test="${ not empty evolutionCard.playerEquipmentId3 }">
											<img
												src="<p:equipImg type="middle" id="${evolutionCard.playerEquipment3.equipmentId }" />" />
										</c:if>
										<c:if test="${ empty evolutionCard.playerEquipmentId3 }">
											<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
										</c:if>
									</div>
									<div></div>
								</div>
							</div>
							<div class="right">
								<div class="card-major-desc">
									<div class="card-major-data">
										<div class="icon icon-level">
											<span><spring:message
													code="label.cg030101.maincard.level"></spring:message></span> <span>
												<c:out
													value="
												${(empty (evolutionCard.cardLevel) || evolutionCard.cardLevel<1) ? 1 : evolutionCard.cardLevel}" />
											</span>
										</div>
										<div class="icon icon-physicalstrength">
											<span><spring:message
													code="label.cg030101.maincard.strengthrequire"></spring:message></span>
											<span><c:out
													value="
												${(empty (evolutionCard.strengthRequireAdded) || evolutionCard.strengthRequireAdded<0) ? 0 : evolutionCard.strengthRequireAdded}" /></span>
										</div>
										<div class="icon icon-total-fighting-energy">
											<span><spring:message
													code="label.cg030101.maincard.attack"></spring:message></span> <span><c:out
													value="
												${(empty (evolutionCard.attackAdded) || evolutionCard.attackAdded<0) ? 0 : evolutionCard.attackAdded }" /></span>
										</div>
										<div class="icon icon-total-shield-energy">
											<span><spring:message
													code="label.cg030101.maincard.defence"></spring:message></span> <span><c:out
													value="
												${(empty (evolutionCard.defenceAdded) || evolutionCard.defenceAdded<0) ? 0 : evolutionCard.defenceAdded}" /></span>
										</div>
										<div></div>
									</div>
									<div class="card-major-experience">
										<div class="fc-normal-01-l">
											<span><spring:message
													code="label.cg030101.maincard.growingpercent"></spring:message></span>
										</div>
										<div class="progress">
											<c:if test="${evolutionCard.growingPercent >= 0 }">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="<c:out value="${evolutionCard.growingPercent<=100 ? evolutionCard.growingPercent : 100}" />"></div>
											</c:if>
											<c:if test="${evolutionCard.growingPercent < 0 }">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="0"></div>
											</c:if>
										</div>
										<div></div>
									</div>
									<div class="btn-genggaidika"></div>
								</div>
							</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<div class="split-01 clearfix"></div>
	<c:if test="${not empty evolutionCard}">
		<div class="menu-medium title-label-02">
			<span><spring:message
					code="label.cg030207.cardevolution.subtitle"></spring:message></span>
		</div>
	</c:if>
	<c:if test="${empty evolutionCard}">
		<div class="menu-medium title-label-02">
			<span><spring:message code="label.cg030207.cardevolution.tobeevolutioncard"></spring:message></span>
		</div>
	</c:if>

	<div class="fc-title-01 centerFont">
		<span><spring:message
				code="label.cg030207.cardevolution.allcards"></spring:message></span> <span
			class="fc-content-02 centerFont"><c:out
				value="${playerCardsSize<0 ? 0 : playerCardsSize }" /></span> <span>/</span>
		<span><c:out
				value="${playerVO.cardsMax<playerCardsSize ? (playerCardsSize<0 ? 0 : playerCardsSize) : playerVO.cardsMax }" /></span>
	</div>
	<jsp:include page="/WEB-INF/views/commons/searchFilter/orderSelect.jsp"
		flush="true"></jsp:include>
	<c:if test="${empty playerCards }">
		<div class="align-center no-card">
			<spring:message code="label.cg030207.cardevolution.nocard"></spring:message>
		</div>
	</c:if>
	<c:if test="${not empty playerCards }">
		<c:set var="paginationParams" value="${playerCards}" scope="request" />
		<c:set var="paginationUrl"
			value="/kpyx-logical-service/cg0302/cg030207/index" scope="request" />
		<!--<jsp:include page="/WEB-INF/views/commons/pagination-top.jsp" flush="true"></jsp:include>-->
		<tags:pagination items="${playerCards}"
			paginationUrl="${paginationUrl }" searchData="${searchData }"
			method="GET">
			<div>
				<c:forEach items="${playerCards }" var="cardItem">
					<div class="panel-03">
						<div
							class="<cssutils:cardCamp campType="${cardItem.cardCamp}"></cssutils:cardCamp>">
							<div class="panel-header">
								<div class="card-item-name">
									<span><c:out
											value="${(empty cardItem.name) ? cardItem.id : cardItem.name}"></c:out></span>
								</div>
								<div class="card-item-stars">
									<c:if test="${cardItem.star >= 1}">
										<c:forEach var="i" begin="1" end="${cardItem.star}" step="1">
											<img
												src="<p:localurl value="/resources/images/star-d.png"/>"></img>
										</c:forEach>
									</c:if>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-body">
								<div class="card-assistant">
									<div class="left">
										<div class="card-assistant-image">
											<a
												href="#">
												<img alt="" class="clickTone1"
												src="<p:cardImg type="small" id="${cardItem.cardId }"></p:cardImg>" onclick="location.href='<p:fullurl value="/cg0301/cg030102/index/${cardItem.id }"/>'"/>
											</a>
										</div>
									</div>
									<div class="middle">
										<div class="card-assistant-equipment">
											<div class="one-equipment icon-location">
												<c:if test="${ not empty cardItem.playerEquipment1 }">
													<img alt=""
														src="<p:equipImg type="small" id="${cardItem.playerEquipment1.equipmentId }" />" />
												</c:if>
												<c:if test="${ empty cardItem.playerEquipment1 }">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="one-equipment icon-location">
												<c:if test="${ not empty cardItem.playerEquipment2 }">
													<img alt=""
														src="<p:equipImg type="small" id="${cardItem.playerEquipment2.equipmentId }" />" />
												</c:if>
												<c:if test="${ empty cardItem.playerEquipment2 }">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="one-equipment icon-location">
												<c:if test="${ not empty cardItem.playerEquipment3 }">
													<img alt=""
														src="<p:equipImg type="small" id="${cardItem.playerEquipment3.equipmentId }" />" />
												</c:if>
												<c:if test="${ empty cardItem.playerEquipment3 }">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</c:if>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="right">
										<div class="card-assistant-desc">
											<div class="top-right-panel">
												<div class="level">
													<div class="archives-item icon icon-level icon-location">
														<span><c:out
																value="
														${(empty(cardItem.cardLevel) || cardItem.cardLevel<1) ? 1 : cardItem.cardLevel }" /></span>
													</div>
												</div>
												<div class="align-center">
													<c:if test="${cardItem.growingPercent >= 0 }">
														<div class="processing-bar-blue fc-normal-01-m"
															processbar="<c:out value="${cardItem.growingPercent<=100 ? cardItem.growingPercent : 100}" />"></div>
													</c:if>
													<c:if test="${cardItem.growingPercent < 0 }">
														<div class="processing-bar-blue fc-normal-01-m"
															processbar="0"></div>
													</c:if>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="middle-right-panel">
												<div>
													<div
														class="archives-item icon icon-physicalstrength icon-location ">
														<span><c:out
																value="
														${(empty(cardItem.strengthRequireAdded) || cardItem.strengthRequireAdded<0) ? 0 : cardItem.strengthRequireAdded }" /></span>
													</div>
												</div>
												<div>
													<div
														class="archives-item icon icon-total-fighting-energy icon-location ">
														<span><c:out
																value="
														${(empty(cardItem.attackAdded) || cardItem.attackAdded<0) ? 0 : cardItem.attackAdded }" /></span>
													</div>
												</div>
												<div>
													<div
														class="archives-item icon icon-total-shield-energy icon-location ">
														<span><c:out
																value="${(empty(cardItem.defenceAdded) || cardItem.defenceAdded<0) ? 0 : cardItem.defenceAdded }" /></span>
													</div>
												</div>
												<div></div>
											</div>
											<div class="bottom-right-panel">
												<c:if test="${(not empty evolutionCard) && (evolutionCard.name eq cardItem.name) }">
													<div class="btns">
														<form action='<p:fullurl value="/cg0302/cg030208/index"/>'
															method="post">
															<a href="#" onclick='var id="${cardItem.id }";
																				var isMain="${cardItem.isMain }";
																				if(!handle(id, this.parentNode, ${evolutionCard.step }, ${cardItem.step }, isMain)) return false;
																				'  >
																<input type="hidden" name="evolutionCardId" value="${evolutionCard.id }"> 
																<input type="hidden" name="materialCardId" value="${cardItem.id }"> 
																<img class="clickTone1" src="<p:localurl value='/resources/images/buttons/zuoweisucai-blue.png'/>" />
															</a>
															<input type="hidden" name="unload" value="false"> 
														</form>
													</div>
													<div class="div1">
														<c:if test="${(empty cardItem.playerEquipment1) 
																		and (empty cardItem.playerEquipment2) 
																		and (empty cardItem.playerEquipment3)}">
															<a id="${cardItem.id }" href="<p:fullurl value="/cg0302/cg030207/index?evolutionCardId=${cardItem.id }"/>" 
																onclick='var id="${cardItem.id }";
																		var isMain="${cardItem.isMain }";
																		var step="${cardItem.step }";
																		if(!zhuansheng(id, step, isMain)) return false;
																		'  >
																<img class="clickTone1" alt="" src="<p:localurl value="/resources/images/buttons/zhuanshengcika-green.png"/>">
															</a>
															<c:if test="${cardItem.step >= 4}">
																<script type="text/javascript">
																	var aId = "${cardItem.id }";
																	$("#" + aId).attr("href", "#");
																</script>
	
															</c:if>
														</c:if>
														
														<c:if test="${(not empty cardItem.playerEquipment1) 
																		or ( not empty cardItem.playerEquipment2) 
																		or ( not empty cardItem.playerEquipment3)}">
															<a id="${cardItem.id }" href="#" >
																<img onclick='xiechu("${cardItem.id}")' class="clickTone1" alt="" src="<p:localurl value="/resources/images/buttons/xiechu-green.png"/>">
															</a>
														</c:if>
													</div>
												</c:if>
												<c:if test="${(empty evolutionCard) || ((not empty evolutionCard) && (evolutionCard.name ne cardItem.name)) }">
													<div class="btns">
														<form action="" method="post">
															<a id="${cardItem.id }"
																href="<p:fullurl value="/cg0302/cg030207/index?evolutionCardId=${cardItem.id }"/>"
																onclick='var id="${cardItem.id }";
																		var isMain="${cardItem.isMain }";
																		var step="${cardItem.step }";
																		if(!zhuansheng(id, step, isMain)) return false;
																		'  >
																<img alt="" class="clickTone1"
																src="<p:localurl value="/resources/images/buttons/zhuanshengcika-green.png"/>">
																<c:if test="${not empty evolutionCard }">
																	<input type="hidden" name="evolutionCardId" value="${evolutionCard.id }">
																</c:if>
															</a>
															<input type="hidden" name="unload" value="false"> 
														</form>
														
														<c:if test="${(not empty cardItem.playerEquipment1) || (not empty cardItem.playerEquipment2) || (not empty cardItem.playerEquipment3) || (cardItem.step >= 4)}">
															<script type="text/javascript">
																	var aId = "${cardItem.id }";
																	$("#" + aId).attr("href", "#");
															</script>
														</c:if>
													</div>
													<div class="div1">
														<c:if test="${(not empty cardItem.playerEquipment1) 
																		or ( not empty cardItem.playerEquipment2) 
																		or ( not empty cardItem.playerEquipment3)}">
															<a id="${cardItem.id }" href="#" >
																<img class="clickTone1" onclick='xiechu("${cardItem.id}")' alt="" src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>">
															</a>
														</c:if>
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
				</c:forEach>
			</div>
		</tags:pagination>
	</c:if>
</div>