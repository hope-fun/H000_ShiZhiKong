<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0602/CG060202.css?v=1"/>">


<c:set var="zengjia">
	<spring:message code="label.cg0602.zengjia"></spring:message>
</c:set>
<c:set var="jiangdi">
	<spring:message code="label.cg0602.jiangdi"></spring:message>
</c:set>
<c:set var="salemsg1">
	<spring:message code="label.cg0602.querenchushou"></spring:message>
</c:set>
<c:set var="salemsg2">
	<spring:message code="label.cg0602.jianghuihuode"></spring:message>
</c:set>
<c:set var="crystal">
	<spring:message code="label.cg0602.shuijin"></spring:message>
</c:set>

<c:set var="equipmentList">
	<p:fullurl value="/cg0602/cg060201/index" />
</c:set>
<c:set var="equipmentSaleList">
	<p:fullurl value="/cg0602/cg060202/index" />
</c:set>
<c:set var="equipmentAucitonList">
	<p:fullurl value="/cg0602/cg060203/index" />
</c:set>
<script>
function notopen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
</script>
<script type="text/javascript">
	var equipmentList = "${equipmentList}";
	var equipmentSaleList = "${equipmentSaleList}";
	var equipmentAucitonList = "${equipmentAucitonList}";
	var salemsg1 = "${salemsg1}";
	var salemsg2 = "${salemsg2}";
	var crystal = "${crystal}";
	var isSelectedAll = false;
</script>

<script type="text/javascript"
	src="<p:fullurl value="/resources/js/cg0602/cg060202.js"/>"></script>

<div class="content">

	<div class="topHeader">
		<div class="title-label-03">
			<span><spring:message code="label.cg0602.wupin"></spring:message></span>
		</div>
		<div class="tool-buttons">
			<div class="button-medium topHeader_lButton prop-button">
				<a href="#"> <img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/daoju-green-x.png"/>"
					onclick="location.href='<p:fullurl value="/cg0601/cg060101/index"/>'" />
				</a>
			</div>
			<div class="button-medium topHeader_rButton prop-button">
				<a href="#"> <img alt="" class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/zhuangbei-yellow-x.png"/>"
					onclick="location.href='<p:fullurl value="/cg0602/cg060201/index"/>'" />
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	
	 <div class="commonPading01" style="width: 100%;">
		<div class="borderPanel" style="width:100%;">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="fc-normal-05-l npc-message">							
						<spring:message code="label.cg0602.npc"></spring:message>					
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div> 
	
	
	<div id="centerPart">
		<div id="topPart">
			<div style="float: left;" id="equiplist" onclick="loadEquipList()">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/zhuangbeiyilan-blue-b.png"/>" />
			</div>
			<div style="float: left;" id="saleslist" onclick="">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/chushou-yellow--b.png"/>" />
			</div>
			<!--<div style="float: left;" id="auctionlist"
				onclick="loadAuctionlist()">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png"/>" />
			</div>  -->
			<div><img class="button_gray"
					src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png" />" onclick="notopen()" /></div>
		</div>
		<div class="clearfix split-line"></div>
		

		<div class="margin-style20" id="contentPart">

			<c:if test="${empty playerEquipments }">
				<form></form>
				<form id="equipmentform" name="equipmentform">
					<input type="hidden" name="playerCardId" value="${playerCardId }">
				</form>
				<div style="text-align: center;">
					<spring:message code="label.cg0602.noequipmentssale"></spring:message>
					!
				</div>
			</c:if>

			<c:if test="${not empty playerEquipments }">

				<div class="select-all-button">
					<div class="contentPart_selectAll" onclick="selectAll();">
						<img alt="" class="clickTone1"
							src="<p:localurl value="/resources/images/buttons/dangyequanxuan-green-x.png"/>" />
					</div>
					<div class="contentPart_sell"
						onclick='sellEquipments("${totalSize}");'>
						<img class="chushou gray-button clickTone1" alt=""
							src="<p:localurl value="/resources/images/buttons/chushou-blue-x.png"/>">
					</div>
					<div class="clearfix"></div>
				</div>

				<c:set var="paginationParams" value="${playerEquipments}"
					scope="request" />
				<c:set var="paginationUrl"
					value="/kpyx-logical-service/cg0602/cg060202/index" scope="request" />
				<tags:pagination items="${playerEquipments}"
					paginationUrl="${paginationUrl }" searchData="${searchData }"
					method="GET">
					<div>
						<form id="equipmentform" name="equipmentform">
							<input type="hidden" name="playerCardId" value="${playerCardId }">
							<c:forEach var="equipItem" items="${playerEquipments}"
								varStatus="status">
								<div class="borderPanel padding-top-style15">
									<div class="panelB-header"></div>
									<div class="panelB-body panelB02-height"></div>
									<div class="panelB-footer"></div>
									<div class="border-content-noleft">
										<div class="padding-top-style15">

											<div class="prop-name-style">
												<div class="name${equipItem.id } fc-content-01 padding-style04">
													<c:out value="${equipItem.name}" />
													<!--  这里是装备名称-->
												</div>
												<div class="split-item-down"><img class="splite-down-width" src="<p:localurl value="/resources/images/line-split-down.png"/>" /></div>
												<div class="bottomPart_line_image">
													<div>
														<img
															src="<p:equipImg type="large" id="${equipItem.equipmentId }"></p:equipImg>">
													</div>
													<div class="padding-top-style1" style="text-align: left;">
														<img
															src="<p:localurl value="/resources/images/icons/shuijing.png"/>"></img>
														<span class="equip-price-style"><c:out
																value="${equipItem.price}" /></span>
													</div>
												</div>
												<div class="bottomPart_line_info">
													<div class="info_pos desc${equipItem.id}">
														<span class="fc-normal-05-l"><spring:message
																code="label.cg0602.miaoshu"></spring:message>:</span>
														<span class="arise${equipItem.id }"></span>
													</div>
													
													
														<div class="check-box-style"
															class="bottomPart_line_info_checkbox">
															<input class="${equipItem.price}" type="checkbox"
																name="sellOut" value="${equipItem.id}"
																id="input${equipItem.id }" onclick="colorChange()"
																style="display: none;" /> <label
																for="checkbox-pic-style" class="checkbox-pic-style"
																id="checkbox-pic-style${equipItem.id }"
																onclick="colorChange(this)" style="display: inline;"></label>
															<label for="checkbox-checked-pic-style"
																class="checkbox-checked-pic-style"
																id="checkbox-checked-pic-style${equipItem.id }"
																onclick="colorChange(this)" style="display: none;"></label>
															<span><spring:message code="label.cg0602.chushou"></spring:message></span>
														</div>
												

													

													<c:choose>
														<c:when test="${equipItem.additionType eq 'ATTACK' }">
															<c:set var="attack">
																<spring:message code="label.cg0602.zhandouli"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="attack">%<spring:message
																		code="label.cg0602.zhandouli"></spring:message>
																</c:set>
															</c:if>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia}${equipItem.additionValue}${attack}")
															</script>
														</c:when>
														<c:when test="${equipItem.additionType eq 'DEFENCE' }">
															<c:set var="defence">
																<spring:message code="label.cg0602.hudunli"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="defence">%<spring:message
																		code="label.cg0602.hudunli"></spring:message>
																</c:set>
															</c:if>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}${defence}")
															</script>
														</c:when>
														<c:when test="${equipItem.additionType eq 'STRENGTH' }">
															<c:set var="strength">
																<spring:message code="label.cg0602.liliangxuqiu"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="strength">%<spring:message
																		code="label.cg0602.liliangxuqiu"></spring:message>
																</c:set>
															</c:if>
															<c:set var="addValue">${equipItem.additionValue}</c:set>
															<script type="text/javascript">
																var value = parseInt("${addValue}")
																if (value < 0)
																	value = value
																			* -1
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${jiangdi }"
																						+ value
																						+ "${strength}")
															</script>
														</c:when>
														<c:when test="${equipItem.additionType eq 'GAINCOIN' }">
															<c:set var="gaincoin">
																<spring:message code="label.cg0602.shuijinghuoqulv"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}%${gaincoin}")
															</script>
														</c:when>
														<c:when
															test="${equipItem.additionType eq 'GAINEQUIPMENT' }">
															<c:set var="gainequipment">
																<spring:message code="label.cg0602.zhuangbeihuoqulv"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}%${gainequipment}")
															</script>
														</c:when>
														<c:when test="${equipItem.additionType eq 'MOVE' }">
															<c:set var="move">
																<spring:message code="label.cg0602.xingdongli"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="move">%<spring:message
																		code="label.cg0602.xingdongli"></spring:message>
																</c:set>
															</c:if>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}${move}")
															</script>
														</c:when>
														<c:when
															test="${equipItem.additionType eq 'ATTACK_TO_DEFENCE' }">
															<c:set var="attackToDefence">
																<spring:message code="label.cg0602.gongzhuanfang"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="attackToDefence">%<spring:message
																		code="label.cg0602.gongzhuanfang"></spring:message>
																</c:set>
															</c:if>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}${attackToDefence}")
															</script>
														</c:when>
														<c:when
															test="${equipItem.additionType eq 'DEFENCE_TO_ATTACK' }">
															<c:set var="defenceToAttack">
																<spring:message code="label.cg0602.fangzhuangong"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="defenceToAttack">%<spring:message
																		code="label.cg0602.fangzhuangong"></spring:message>
																</c:set>
															</c:if>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}${defenceToAttack}")
															</script>
														</c:when>
														<c:when
															test="${equipItem.additionType eq 'ATTACK_AND_DEFENCE' }">
															<c:set var="attackAndDefence">
																<spring:message code="label.cg0602.zhanfangli"></spring:message>
															</c:set>
															<c:if test="${equipItem.calcMode eq 'PERCENT' }">
																<c:set var="attackAndDefence">%<spring:message
																		code="label.cg0602.zhanfangli"></spring:message>
																</c:set>
															</c:if>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${zengjia }${equipItem.additionValue}${attackAndDefence}")
															</script>
														</c:when>
														<c:when test="${equipItem.additionType eq 'HP' }">
															<c:set var="hp">
																<spring:message
																	code="label.cg0602.zhandoushengmingjiacheng"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".arise${equipItem.id }")
																		.text(
																				"${hp}${equipItem.additionValue}%")
															</script>
														</c:when>
													</c:choose>

													<script type="text/javascript">
														var name = "${equipItem.name}"
														/*if (name.length > 6) {
															name = name.substr(
																	0, 6)
																	+ "..."
														}*/
														$(
																".name${equipItem.id}")
																.text(name)

														function add(obj) {
															var playerCardId = "${mainPlayerCard.id }"
															var pageIndex = document.forms[0].pageIndex.value
															var pageSize = document.forms[0].pageSize.value

															$(obj)
																	.attr(
																			"href",
																			$(
																					obj)
																					.attr(
																							"id")
																					+ "&playerCardId="
																					+ playerCardId
																					+ "&pageIndex="
																					+ pageIndex
																					+ "&pageSize="
																					+ pageSize);
														}
													</script>

													<div class="info_pos require">
														<span class="fc-normal-05-l"><spring:message
																code="label.cg0602.xiangqianxuqiu"></spring:message>:</span> <span
															class="require${equipItem.id }"></span>
													</div>

													<c:set var="meetRequire" value="true"></c:set>
													<c:choose>
														<c:when test="${equipItem.requireType eq 'ATTACK' }">
															<c:set var="attack">
																<spring:message code="label.cg0602.zhandounengliang"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".require${equipItem.id }")
																		.text(
																				"${attack}${equipItem.requireValue}")
															</script>
															<c:choose>
																<c:when
																	test="${playerCardVO.attack < equipItem.requireValue }">
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																	<c:set var="meetRequire" value="f"></c:set>
																</c:when>
																<c:otherwise>
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																</c:otherwise>
															</c:choose>
														</c:when>
														<c:when test="${equipItem.requireType eq 'LEVEL' }">
															<c:set var="level">
																<spring:message code="label.cg0602.kapaidengji"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".require${equipItem.id }")
																		.text(
																				"${level}${equipItem.requireValue}")
															</script>
															<c:choose>
																<c:when
																	test="${playerCardVO.cardLevel < equipItem.requireValue }">
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																	<c:set var="meetRequire" value="f"></c:set>
																</c:when>
																<c:otherwise>
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																</c:otherwise>
															</c:choose>
														</c:when>
														<c:when test="${equipItem.requireType eq 'DEFENCE' }">
															<c:set var="defence">
																<spring:message code="label.cg0602.hudundengliang"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".require${equipItem.id }")
																		.text(
																				"${defence}${equipItem.requireValue}")
															</script>
															<c:choose>
																<c:when
																	test="${playerCardVO.defence < equipItem.requireValue }">
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																	<c:set var="meetRequire" value="f"></c:set>
																</c:when>
																<c:otherwise>
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																</c:otherwise>
															</c:choose>
														</c:when>
														<c:when test="${equipItem.requireType eq 'STRENGTH' }">
															<c:set var="strength">
																<spring:message code="label.cg0602.liliangxuqiu"></spring:message>
															</c:set>
															<script type="text/javascript">
																$(
																		".require${equipItem.id }")
																		.text(
																				"${strength}${equipItem.requireValue}")
															</script>
															<c:choose>
																<c:when
																	test="${playerCardVO.strengthRequire < equipItem.requireValue }">
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																	<c:set var="meetRequire" value="f"></c:set>
																</c:when>
																<c:otherwise>
																	<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
																</c:otherwise>
															</c:choose>
														</c:when>
														<c:otherwise>
														</c:otherwise>
													</c:choose>

													<div class="span-salebefore">
														<span class="fc-normal-06-m"> <c:if
																test="${equipItem.status ne 'VALID' }">
																<spring:message code="label.cg0602.chushouqianxuxiexia"></spring:message>
															</c:if> &nbsp;
														</span>
													</div>




												</div>
												<div class="contentPart_button_01">
														<div class="mount-style">
															<c:if test="${equipItem.status eq 'MOUNT' }">
																<a onclick="add(this)"
																	id="<p:fullurl value="/cg0602/cg060201/index?playerEquipmentId=${ equipItem.id}&isUnload=true&isForward=true&useEquipmentId=true"/>">
																	<img class="clickTone1"
																	src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>" />
																</a>
																<script type="text/javascript">
																	$(
																			"#input"
																					+ "${equipItem.id}")
																			.attr(
																					"disabled",
																					"disabled")
																	$(
																			"#input"
																					+ "${equipItem.id}")
																			.attr(
																					"name",
																					"")
																	$(
																			"#checkbox-pic-style${equipItem.id }")
																			.attr(
																					"onclick",
																					"")
																</script>
															</c:if>
														</div>


											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
					</div>

					</c:forEach>
					</form>
		</div>
		</tags:pagination>

		<div class="select-all-button" >
			<div class="contentPart_selectAll" onclick="selectAll();">
				<img alt="" class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/dangyequanxuan-green-x.png"/>" />
			</div>
			<div class="contentPart_sell"
				onclick='sellEquipments("${totalSize}");'>
				<img class="chushou gray-button clickTone1" alt=""
					src="<p:localurl value="/resources/images/buttons/chushou-blue-x.png"/>">
			</div>
			<div class="clearfix"></div>
		</div>

		</c:if>
	</div>
</div>
</div>
