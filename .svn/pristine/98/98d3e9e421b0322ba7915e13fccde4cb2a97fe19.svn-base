<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/taglibs/PathUtils.tld" prefix="p"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0602/CG060201.css?v=1"/>">

<c:set var="zengjia">
	<spring:message code="label.cg0602.zengjia"></spring:message>
</c:set>
<c:set var="jiangdi">
	<spring:message code="label.cg0602.jiangdi"></spring:message>
</c:set>
<c:set var="explode">
	<spring:message code="label.cg0602.ninquerenfenjiegaizhuangbei"></spring:message>
</c:set>
<c:set var="zhuangbeiyiman">
	<spring:message code="label.cg0602.zhuangbeiyiman"></spring:message>
</c:set>
<c:set var="fenjiechenggong">
	<spring:message code="label.cg0602.fenjiechenggong"></spring:message>
</c:set>
<c:set var="fenjieshibai">
	<spring:message code="label.cg0602.fenjieshibai"></spring:message>
</c:set>
<c:set var="gets">
	<spring:message code="label.cg0602.get"></spring:message>
</c:set>
<c:set var="lingqu">
	<spring:message code="label.cg0602.lingqu"></spring:message>
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
<c:set var="changeCard">
	<p:fullurl value="/cg0301/cg030101/cardView" />
</c:set>
<script type="text/javascript">
function notopen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
</script>
<script type="text/javascript">
	var explodeMsg = "${explodeMsg}";
	var equipmentList = "${equipmentList}";
	var equipmentSaleList = "${equipmentSaleList}";
	var equipmentAucitonList = "${equipmentAucitonList}";
	var changeCard = "${changeCard}";
	var explode = "${explode}";
	var zhuangbeiyiman = "${zhuangbeiyiman}";
	var fenjiechenggong = "${fenjiechenggong}"
	var fenjieshibai = "${fenjieshibai}"
	var pe1 = "${playerEquipment1VO.id}";
	var pe2 = "${playerEquipment2VO.id}";
	var pe3 = "${playerEquipment3VO.id}"
	var gets = "${gets}"
	var lingqu = "${lingqu}"
</script>

<script type="text/javascript"
	src="<p:fullurl value="/resources/js/cg0602/cg060201.js"/>"></script>

<div class="content">

	<div class="topHeader">
		<div class="title-label-03">
			<span><spring:message code="label.cg0602.wupin"></spring:message></span>
		</div>
		<div class="tools-button">
			<div class="button-medium topHeader_lButton">
				<a href="#"> <img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/daoju-green-x.png"/>"
					onclick="location.href='<p:fullurl value="/cg0601/cg060101/index"/>'" />
				</a>
			</div>
			<div class="button-medium topHeader_rButton">
				<a href="#"> <img alt="" class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/zhuangbei-yellow-x.png"/>"
					onclick="location.href='<p:fullurl value="/cg0602/cg060201/index"/>'" />
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div id="centerPart">
		<div id="topPart">
			<div style="float: left" id="equiplist" onclick="">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/zhuangbeiyilan-yellow-b.png"/>" />
			</div>
			<div style="float: left" id="saleslist" onclick="loadSalesList()">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/chushou-blue-b.png"/>" />
			</div>
			<!--<div style="float: left" id="auctionlist" onclick="loadAuctionlist()">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png"/>" />
			</div>  -->
			<div><img class="button_gray"
					src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png"/>" onclick="notopen()"/></div>
		</div>
		<div class="clearfix split-line"></div>
		<div id="contentPart1">
			<div class='<cssutils:cardCamp campType="${playerCardVO.cardCamp}"/>'>

				<div class="contentPart1_titlel">
					<span><c:out value="${playerCardVO.name}"></c:out></span>
				</div>
				<div class="contentPart1_titler">
					<c:forEach begin="1" end="${playerCardVO.star}" step="1">
						<img src="<p:localurl value="/resources/images/star-d.png"/>"
						 class="card-stars"	/>
					</c:forEach>
				</div>
				<div class="clearfix"></div>
				<div>
					<div class="contentPart1_image_02">
						<c:if test="${not empty playerCardVO}">
							<img
								src="<p:cardImg type="small" id="${playerCardVO.cardId }"></p:cardImg>" />
						</c:if>
					</div>
					<div class="contentPart1_info">
						<div>
							<div class="contentPart1_info_icon_01">
								<c:if test="${not empty playerEquipment1VO}">
									<img
										src="<p:equipImg type="small" id="${playerEquipment1VO.equipmentId }"/>" />
								</c:if>
								<c:if test="${empty playerEquipment1VO}">
									<img
										src="<p:localurl value="/resources/images/icons/default.png"/>" />
								</c:if>
							</div>
							<div class="contentPart1_info_icon_01">
								<img
									src="<p:localurl value="/resources/images/icons/dengji.png"/>" />
							</div>
							<div class="contentPart1_info_icon_03">
								<span><c:out value="${playerCardVO.cardLevel}" /></span>
							</div>
							<div class="processing-bar-blue fc-normal-01-m grow-per-style"
								processbar="<c:out value="${playerCardVO.growingPercent}"/>"></div>

							<div class="clearfix"></div>
						</div>
						<div>
							<div class="contentPart1_info_icon_01">
								<c:if test="${not empty playerEquipment2VO}">
									<img
										src="<p:equipImg type="small" id="${playerEquipment2VO.equipmentId }"/>" />
								</c:if>
								<c:if test="${empty playerEquipment2VO}">
									<img
										src="<p:localurl value="/resources/images/icons/default.png"/>" />
								</c:if>
							</div>
							<div class="contentPart1_info_icon_01">
								<img
									src="<p:localurl value="/resources/images/icons/zhanhuxuqiu.png"/>" />
							</div>
							<div class="contentPart1_info_icon_02">
								<span><c:out value="${playerCardVO.strengthRequireAdded}" /></span>
							</div>
							<div class="contentPart1_info_icon_01">
								<img
									src="<p:localurl value="/resources/images/icons/zhandouli.png"/>" />
							</div>
							<div class="contentPart1_info_icon_02">
								<span><c:out value="${playerCardVO.attackAdded}" /></span>
							</div>
							<div class="contentPart1_info_icon_01">
								<img
									src="<p:localurl value="/resources/images/icons/hudunli.png"/>" />
							</div>
							<div class="contentPart1_info_icon_02">
								<span><c:out value="${playerCardVO.defenceAdded}" /></span>
							</div>
							<div class="clearfix"></div>
						</div>
						<div>
							<div class="contentPart1_info_icon_01">
								<c:if test="${not empty playerEquipment3VO}">
									<img
										src="<p:equipImg type="small" id="${playerEquipment3VO.equipmentId }"/>" />
								</c:if>
								<c:if test="${empty playerEquipment3VO}">
									<img
										src="<p:localurl value="/resources/images/icons/default.png"/>" />
								</c:if>
							</div>

							<div class="contentPart1_info_button_01 clickTone1"
								onclick="changePlayerCard('/cg0602/cg060201/goBack');"></div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>


		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA03-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div id="contentPart2" >
					<div>
						<div>
							<div>
								<div class="contentPart2_image_01">
									<div>
										<c:if test="${not empty playerEquipment1VO}">
											<img
												src="<p:equipImg type="large" id="${playerEquipment1VO.equipmentId }"/>" />
										</c:if>
										<c:if test="${empty playerEquipment1VO}">
											<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
										</c:if>
									</div>
									<div>
										<c:choose>
											<c:when test="${not empty playerEquipment1VO}">
												<a onclick="add(this)"
													id="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&playerEquipmentId=${ playerEquipment1VO.id}&isUnload=true"/>">
													<img class="clickTone1"
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>" />
												</a>
											</c:when>
											<c:otherwise>
												<img
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>"
													class="yichu-hui" />
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="contentPart2_image_01">
									<div>
										<c:if test="${not empty playerEquipment2VO}">
											<img
												src="<p:equipImg type="large" id="${playerEquipment2VO.equipmentId }"/>" />
										</c:if>
										<c:if test="${empty playerEquipment2VO}">
											<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
										</c:if>
									</div>
									<div>
										<c:choose>
											<c:when test="${not empty playerEquipment2VO}">
												<a onclick="add(this)"
													id="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&playerEquipmentId=${ playerEquipment2VO.id}&isUnload=true"/>">
													<img class="clickTone1"
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>" />
												</a>
											</c:when>
											<c:otherwise>
												<img
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>"
													class="yichu-hui" />
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="contentPart2_image_01">
									<div>
										<c:if test="${not empty playerEquipment3VO}">
											<img
												src="<p:equipImg type="large" id="${playerEquipment3VO.equipmentId }"/>" />
										</c:if>
										<c:if test="${empty playerEquipment3VO}">
											<img src="<p:localurl value="/resources/images/large-equipment.png"/>" />
										</c:if>
									</div>
									<div>
										<c:choose>
											<c:when test="${not empty playerEquipment3VO}">
												<a onclick="add(this)"
													id="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&playerEquipmentId=${ playerEquipment3VO.id}&isUnload=true"/>">
													<img class="clickTone1"
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>" />
												</a>
											</c:when>
											<c:otherwise>
												<img
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>"
													class="yichu-hui" />
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div>
								<div class="calc-mode">
									<c:if test="${not empty playerEquipment1VO}">
										<spring:message
											code="label.cg030102.carddetail.${playerEquipment1VO.additionType}add${playerEquipment1VO.calcMode}"
											arguments="${playerEquipment1VO.additionValue}" />
									</c:if>
									<c:if test="${empty playerEquipment1VO}">
										<span>&nbsp;</span>
										<span>&nbsp;</span>
									</c:if>
								</div>
								<div class="calc-mode02">
									<c:if test="${not empty playerEquipment2VO}">
										<spring:message
											code="label.cg030102.carddetail.${playerEquipment2VO.additionType}add${playerEquipment2VO.calcMode}"
											arguments="${playerEquipment2VO.additionValue}" />
									</c:if>
									<c:if test="${empty playerEquipment2VO}">
										<span style="display:block;">&nbsp;</span>
										<span>&nbsp;</span>
									</c:if>
								</div>
								<div class="calc-mode">
									<c:if test="${not empty playerEquipment3VO}">
										<spring:message
											code="label.cg030102.carddetail.${playerEquipment3VO.additionType}add${playerEquipment3VO.calcMode}"
											arguments="${playerEquipment3VO.additionValue}" />
									</c:if>
									<c:if test="${empty playerEquipment3VO}">
										<span>&nbsp;</span>
										<span>&nbsp;</span>
									</c:if>
								</div>
							</div>
							<div>
								<img
									src="<p:localurl value="/resources/images/line-split-down.png"/>" class="line-split-down"/>
							</div>
							<div class="clearfix"></div>
							<div>
								<div class="contentPart2_info_01">
									<div>
										<div class="require-fight-res">
											<div class="contentPart2_info_icon_01">
												<img class="img-zhanhuxuqiu"
													src="<p:localurl value="/resources/images/icons/zhanhuxuqiu.png"/>" />
											</div>
											<span class="fc-normal-01-l"><spring:message
													code="label.cg0602.zhanhuxuqiu"></spring:message>:</span> <span>&nbsp;&nbsp;&nbsp;<c:out
													value="${playerCardVO.strengthRequire}" /></span>
											<div class="clearfix"></div>
										</div>
										<div class="arrow-style">
											<img alt=""
												src="<p:localurl value="/resources/images/Arrow01.png"/>">
										</div>
										<div class="fight-res-added">
											<span><c:out
													value="${playerCardVO.strengthRequireAdded}" /></span>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="padding-top-style7">
										<div class="attack-res">
											<div class="contentPart2_info_icon_01">
												<img class="margin-top-style02"
													src="<p:localurl value="/resources/images/icons/zhandouli.png"/>" />
											</div>
											<span class="fc-normal-02-l"><spring:message
													code="label.cg0602.zhandouli"></spring:message>:</span> <span>&nbsp;&nbsp;&nbsp;<c:out
													value="${playerCardVO.attack}" /></span>
											<div class="clearfix"></div>
										</div>
										<div class="arrow-style">
											<img alt=""
												src="<p:localurl value="/resources/images/Arrow03.png"/>">
										</div>
										<div class="fight-res-added">
											<span><c:out value="${playerCardVO.attackAdded}" /></span>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="padding-top-style7">
										<div class="attack-res">
											<div class="contentPart2_info_icon_01">
												<img
													src="<p:localurl value="/resources/images/icons/hudunli.png"/>"
													class="margin-top-style02" />
											</div>
											<span class="fc-normal-04-l"><spring:message
													code="label.cg0602.hudunli"></spring:message>:</span> <span>&nbsp;&nbsp;&nbsp;<c:out
													value="${playerCardVO.defence}" /></span>
											<div class="clearfix"></div>
										</div>
										<div class="arrow-style">
											<img alt=""
												src="<p:localurl value="/resources/images/Arrow02.png"/>">
										</div>
										<div class="fight-res-added">
											<span><c:out value="${playerCardVO.defenceAdded}" /></span>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<!-- <div class="contentPart2_info_02">
							<div>卡牌劫取+10%</div>
							<div>钻石劫取+20%</div>
						</div> -->
								<div class="clearfix"></div>
							</div>
						</div>
						<div>
							<div class="span-taozhuangjiacheng added-style">
								<span class="fc-content-01"><spring:message
										code="label.cg0602.taozhuangjiacheng"></spring:message></span>
							</div>
							<img src="<p:localurl value="/resources/images/line-split-down.png"/>" class="line-split-down"/>
							<div class="span-suit">
								<c:if test="${mountSuit }">
									<span class="fc-normal-06-l">${suitDescription }</span>
								</c:if>
								<c:if test="${not mountSuit }">
									<span class="fc-normal-06-l">&nbsp;</span>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>



		</div>
	</div>

	

	<div class="split-01"></div>

	<c:if test="${empty  playerEquipments}">
		<form></form>
		<form name="equipments">
			<input type="hidden" name="playerCardId" value="${ playerCardVO.id}" />
		</form>
	</c:if>

	<c:if test="${ not empty playerEquipments }">

		<c:set var="paginationParams" value="${playerEquipments}"
			scope="request" />
		<c:set var="paginationUrl"
			value="/kpyx-logical-service/cg0602/cg060201/index" scope="request" />
		<tags:pagination items="${playerEquipments}"
			paginationUrl="${paginationUrl }" searchData="${searchData }"
			method="GET">

			<div>
				<form name="equipments">
					<input type="hidden" name="playerCardId"
						value="${ playerCardVO.id}" />
					<c:forEach var="equipItem" items="${playerEquipments}"
						varStatus="status">
						<div class="borderPanel padding-top-style15">
							<div class="panelB-header"></div>
							<div class="panelB-body panelB02-height cg060201-panelb-height p-height-${equipItem.id }"></div>
							<div class="panelB-footer"></div>
							<div class="border-content-noleft">
								<div class="equ-info-style">
									<div class="name${equipItem.id } fc-content-01">
										<script type="text/javascript">
											var name = "${equipItem.name}"
											/*if (name.length > 6) {
												name = name.substr(0, 6)
														+ "..."
											}*/
											$(".name${equipItem.id}")
													.text(name)
										</script>
									</div>

									<div class="consumer-list-image03"></div>
								</div>
								<div class="bottomPart_line_image">
									<img
										src="<p:equipImg type="large" id="${equipItem.equipmentId }"></p:equipImg>">
								</div>

								<div class="bottomPart_line_info">

									<div class="span-canauction">
										<c:if test="${not equipItem.canAuction }">
											<span class="fc-normal-06-l">*<spring:message
													code="label.cg0602.jinpai"></spring:message></span>
										</c:if>
									</div>

									<div class="info_pos desc${equipItem.id}">
										<span class="fc-normal-05-l"><spring:message
												code="label.cg0602.zhuangbeimiaoshu"></spring:message>:</span> <span
											class="arise${equipItem.id }"></span>
									</div>
									<c:set var="meetRequire" value="true"></c:set>
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
												$(".arise${equipItem.id }")
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
												$(".arise${equipItem.id }")
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
													value = value * -1
												$(".arise${equipItem.id }")
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
												$(".arise${equipItem.id }")
														.text(
																"${zengjia }${equipItem.additionValue}%${gaincoin}")
											</script>
										</c:when>
										<c:when test="${equipItem.additionType eq 'GAINEQUIPMENT' }">
											<c:set var="gainequipment">
												<spring:message code="label.cg0602.zhuangbeihuoqulv"></spring:message>
											</c:set>
											<script type="text/javascript">
												$(".arise${equipItem.id }")
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
												$(".arise${equipItem.id }")
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
												$(".arise${equipItem.id }")
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
												$(".arise${equipItem.id }")
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
												$(".arise${equipItem.id }")
														.text(
																"${zengjia }${equipItem.additionValue}${attackAndDefence}")
											</script>
										</c:when>
										<c:when test="${equipItem.additionType eq 'HP' }">
											<c:set var="hp">
												<spring:message code="label.cg0602.zhandoushengmingjiacheng"></spring:message>
											</c:set>
											<script type="text/javascript">
												$(".arise${equipItem.id }")
														.text(
																"${hp}${equipItem.additionValue}%")
											</script>
										</c:when>
									</c:choose>

									<div class="info_pos require">
										<span class="fc-normal-05-l"><spring:message
												code="label.cg0602.xiangqianxuqiu"></spring:message>:</span> <span
											class="require${equipItem.id }"></span>
									</div>

									<c:choose>
										<c:when test="${equipItem.requireType eq 'ATTACK' }">
											<c:set var="attack">
												<spring:message code="label.cg0602.zhandounengliang"></spring:message>
											</c:set>
											<script type="text/javascript">
												$(".require${equipItem.id }")
														.text(
																"${attack}${equipItem.requireValue}")
											</script>
											<c:choose>
												<c:when
													test="${playerCardVO.attack < equipItem.requireValue }">
													<div class="info_pos info-warn fc-normal-06-l">
														*
														<spring:message code="label.cg0602.zhandoulibugou"></spring:message>
													</div>
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
												$(".require${equipItem.id }")
														.text(
																"${level}${equipItem.requireValue}")
											</script>
											<c:choose>
												<c:when
													test="${playerCardVO.cardLevel < equipItem.requireValue }">
													<div class="info_pos info-warn fc-normal-06-l">
														*
														<spring:message code="label.cg0602.dengjibugou"></spring:message>
													</div>
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
												$(".require${equipItem.id }")
														.text(
																"${defence}${equipItem.requireValue}")
											</script>
											<c:choose>
												<c:when
													test="${playerCardVO.defence < equipItem.requireValue }">
													<div class="info_pos info-warn fc-normal-06-l">
														*
														<spring:message code="label.cg0602.hudunlibugou"></spring:message>
													</div>
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
												$(".require${equipItem.id }")
														.text(
																"${strength}${equipItem.requireValue}")
											</script>
											<c:choose>
												<c:when
													test="${playerCardVO.strengthRequire < equipItem.requireValue }">
													<div class="info_pos info-warn fc-normal-06-l">
														*
														<spring:message code="label.cg0602.liliangxuqiubugou"></spring:message>
													</div>
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

									<c:choose>
										<c:when test="${not empty equipItem.mountCardName }">
											<div class="info_pos info-warn fc-normal-06-l">
												*
												<spring:message code="label.cg0602.xiangqianyukapai"></spring:message>
												: ${equipItem.mountCardName }
											</div>
										</c:when>
										<c:otherwise>
											<div class="info_pos info-warn fc-normal-06-l">&nbsp;</div>
										</c:otherwise>
									</c:choose>

								</div>
								<div class="clearfix"></div>
								
								<c:if test="${not empty equipItem.suitId }">
									<script>
										$(".p-height-${equipItem.id }").addClass('suit-des-height');
									</script>
									<div>
										<div class="suit-info1"><spring:message code="label.cg0602.suitinfo1"></spring:message>${equipItem.suitName1 }，${equipItem.suitName2 }<spring:message code="label.cg0602.suitinfo2"></spring:message></div>
										<div class="suit-info2"><spring:message code="label.cg0602.suitinfo3"></spring:message>${equipItem.suitDescription }</div>
									</div>
								</c:if>
								
								<div class="bottomPart_line_info_button">
									<div class="fen_jie_class" onclick="">
										<a onclick="fenjie(this.id);"
											id="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&equipmentId=${ equipItem.equipmentId}&playerEquipmentId=${ equipItem.id}&isExplode=true"/>">
											<img class="clickTone1"
											src="<p:localurl value="/resources/images/buttons/fenjie-blue.png"/>"></img>
										</a>
									</div>
									<c:set var="url">
										<p:fullurl
											value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&playerEquipmentId=${ equipItem.id}&isMount=true" />
									</c:set>
									<c:choose>
										<c:when
											test="${(equipItem.status ne 'VALID') || (meetRequire eq 'f')}">
											<div class="xiang_qian_class">
												<img
													src="<p:localurl value="/resources/images/buttons/xiangqian-green.png"/>"
													class="gray-button"></img>
											</div>
										</c:when>
										<c:otherwise>
											<div class="xiang_qian_class">
												<a id="${url}" onclick="xiangqian(this)"> <img
													class="clickTone1"
													src="<p:localurl value="/resources/images/buttons/xiangqian-green.png"/>"></img>
												</a>
											</div>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when
											test="${(equipItem.status ne 'VALID') && ((playerEquipment1VO.id eq equipItem.id)||(playerEquipment2VO.id eq equipItem.id)||(playerEquipment3VO.id eq equipItem.id)) }">
											<div class="xie_chu_class">
												<a onclick="add(this)"
													id="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&playerEquipmentId=${ equipItem.id}&isUnload=true"/>">
													<img class="clickTone1"
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>"></img>
												</a>
											</div>
										</c:when>
										<c:when
											test="${(equipItem.status ne 'VALID') && ((playerEquipment1VO.id ne equipItem.id)&&(playerEquipment2VO.id ne equipItem.id)&&(playerEquipment3VO.id ne equipItem.id)) }">
											<div class="xie_chu_class">
												<a onclick="add(this)"
													id="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCardVO.id}&playerEquipmentId=${ equipItem.id}&isUnload=true&useEquipmentId=true"/>">
													<img class="clickTone1"
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>"></img>
												</a>
											</div>
										</c:when>
										<c:otherwise>
											<div class="xie_chu_class">
												<img
													src="<p:localurl value="/resources/images/buttons/xiechu-blue.png"/>"
													class="gray-button clickTone1"></img>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</c:forEach>
				</form>
			</div>
		</tags:pagination>
	</c:if>
</div>