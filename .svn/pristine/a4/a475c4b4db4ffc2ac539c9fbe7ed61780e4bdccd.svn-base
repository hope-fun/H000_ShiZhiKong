<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0602/CG060201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG060101.css?v=1"/>">
<script>
	function loadSalesList() {
		$.ui.loadContent('<p:fullurl value="propsManagement/propsSaleList"/>',
				false, false, 'flip');
	}
	function notopen() {
		kpyxTips("<spring:message code='label.notopen'/>");
	}
</script>


<div class="content">

	<div class="menu-medium title-label-03">
		<span><spring:message code="lable.cg0601.wupin" /></span>
	</div>
	<div class="twobuttondiv">
		<a href="<p:fullurl value="/cg0601/cg060101/index"/>"
			class="top-button leftbuttonStyle"> <img class="clickTone1"
			src="<p:localurl value="/resources/images/buttons/daoju-yellow-x.png"/>" />
		</a> <a href="<p:fullurl value="/cg0602/cg060201/index"/>"
			class="top-button rightbuttonStyle"> <img class="clickTone1"
			src="<p:localurl value="/resources/images/buttons/zhuangbei-blue-x.png"/>" />
		</a>
		<div style="clear: both;"></div>
	</div>
	<div class="tab-panel02">
		<div class="tab-shop">
			<div class="tab-active clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0601/cg060101/index" />'">
				<img
					src="<p:localurl value="/resources/images/buttons/daojuyilan-yellow-b.png" />" />
			</div>
			<div class="clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0601/cg060102/index" />'">
				<img
					src="<p:localurl value="/resources/images/buttons/chushou-blue-b.png" />" />
			</div>
			<!--<div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg0601/cg060103/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png" />" />
			</div>  -->
			<div>
				<img
					src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png" />"
					class="button_gray" onclick="notopen()" />
			</div>
			<div></div>
		</div>
		<div class="split-line"></div>

		<div>
			<c:choose>
				<c:when test="${not empty playerConsumable }">
					<cards:0601_showPlayerConsList
						searchData="${searchPlayerConsumablesVO }"
						searchUrl="/kpyx-logical-service/cg0601/cg060101/index"
						items="${playerConsumable}"></cards:0601_showPlayerConsList>
				</c:when>
				<c:when test="${empty playerConsumable }">
					<span><spring:message
							code="lable.cg0601.ninhaimeiyourenhedaoju" />!</span>
				</c:when>
			</c:choose>
		</div>
	</div>
</div>


<div class="use-gift-reward" id="use-gift-reward-cg060101">
	<c:if test="${not empty rewardNewPlayerGiftList}">
		<div class="reward-gift-title"><span><spring:message code='label.cg0601.reward.newplayer.title'/></span></div>
		<div class="reward-gift-info">
			<c:forEach items="${rewardNewPlayerGiftList}" var="item">
				<div style="float:left;" >
					<div class="reward-content" style="overflow:hidden;">
						<div class="reward-gift-pic">
							<c:if test="${item.rewardType eq 'CONSUMABLE' }">
								<img class="reward-gift-img" src='<p:consumImg type="small" id="${item.rewardId}" />' />
							</c:if>						
							<c:if test="${item.rewardType eq 'GIFT_PACKAGE' }">
								<img class="reward-gift-img" src='<p:localurl value="/resources/images/giftpackage/small/${item.rewardId}.png" />' />
							</c:if>
							<c:if test="${item.rewardType eq 'TICKET' }">
								<img class="reward-gift-img" src='<p:consumImg type="small" id="${item.rewardId}-1" />' />
							</c:if>
							<c:if test="${item.rewardType eq 'CARD' }">
								<img class="reward-gift-img" src='<p:cardImg type="tinysmall" id="${item.rewardId}"></p:cardImg>'/>								
							</c:if>
							<c:if test="${item.rewardType eq 'CRYSTAL' }">
								<img class="reward-gift-img"
									src='<p:localurl value="/resources/images/other/small/SCOIN.png" />' />
							</c:if>
							<c:if test="${item.rewardType eq 'DIAMOND' }">
								<img class="reward-gift-img"
									src='<p:localurl value="/resources/images/other/small/GCOIN.png" />' />
							</c:if>
						</div>
						<div style="float:left;"><span>X</span><span>${item.rewardCount}</span></div>						
					</div>
					<div class="reward-gift-name">${item.rewardName}</div>
				
				</div>
			</c:forEach>
		</div>
	</c:if>
	<c:if test="${not empty rewardSmallYSB}">
		<div class="reward-gift-title"><span><spring:message code='label.cg0601.reward.ysbx.title'/></span></div>
		<div class="small-ysbx">
			<c:forEach items="${rewardSmallYSB}" var="itemSmallYSB">
				<div style="overflow:hidden;"><div class="small-pic" style="float:left;"><img style="width:85%;" src='<p:consumImg type="large" id="${itemSmallYSB.rewardId}" />' /></div><div class="small-ysb-count"><span>X</span><span>${itemSmallYSB.rewardCount}</span></div></div>
				<div class="reward-gift-name-small">${itemSmallYSB.rewardName}</div>
			</c:forEach>
		</div>
		
	</c:if>
	<c:if test="${not empty rewardEquipTreasure}">
		<div class="reward-gift-title"><span><spring:message code='label.cg0601.reward.euqiptreasure.title'/></span></div>
		<div class="small-ysbx">
			<c:forEach items="${rewardEquipTreasure}" var="itemEquipTreasure">
				<div style="overflow:hidden;"><div class="small-pic" style="float:left;"><img style="width:85%" src='<p:equipImg type="large" id="${itemEquipTreasure.rewardId}" />' /></div><div class="small-ysb-count"><span>X</span><span>${itemEquipTreasure.rewardCount}</span></div></div>
				<div class="reward-gift-name-small">${itemEquipTreasure.rewardName}</div>
			</c:forEach>
		</div>
		
	</c:if>
	<c:if test="${not empty rewardYSB}">
		<div class="reward-gift-title"><span><spring:message code='label.cg0601.reward.ysbx.title'/></span></div>
		<div class="reward-gift-info reward-gift-info02">
			<c:forEach items="${rewardYSB}" var="itemYSB">
				<div style="float:left;">
					<div class="reward-content" style="overflow:hidden;">
						<div class="reward-gift-pic reward-gift-pic02"><img class="reward-gift-img" src='<p:consumImg type="small" id="${itemYSB.rewardId}" />' /></div>
						<div style="float:left;"><span>X</span><span>${itemYSB.rewardCount}</span></div>	
					</div>
					<div class="reward-gift-name reward-gift-name02">${itemYSB.rewardName}</div>
				</div>
			</c:forEach>
		</div>
	</c:if>	
</div>

<c:if test="${not empty useResultMsg}">
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
											if ("${backUrl}" !== null && "${backUrl}" !== "") {
												var options = {
														suppressTitle : true,
														cancelOnly : true,
														message : "${useResultMsg}",
														doneCallback : function() {
															window.location.href = "${backUrl}"
														}
												              };
												$(document.body).popup(options);
											} else {								
														if ($(".reward-gift-title").length > 0)
														{
															//新手礼包使用弹出提示框	//药水宝箱(大中小)使用弹出提示框		
															kpyxTips(document.getElementById("use-gift-reward-cg060101").innerHTML);
						
														} else {
															kpyxTips("${useResultMsg}"+ "${rewardDescription}");
														}
													}
									});
	</script>
</c:if>


