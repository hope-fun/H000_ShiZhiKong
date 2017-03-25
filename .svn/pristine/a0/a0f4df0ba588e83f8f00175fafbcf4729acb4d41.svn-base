<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">

<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/cg0303/cg030306.js"/>"></script>

<script>

function loadSalesList(){
	
	$.ui.loadContent('<p:fullurl value="propsManagement/propsSaleList"/>', false, false,'flip');
	
	
}

function changeCardgroupName(){
	var urlPath=$(".changeName").val();
	location.href=urlPath;
}

</script>
<div class="content cg030306">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg030306.title"></spring:message></span>
	</div>


	<div class="second-button">
		<c:if test="${ not empty playerCardGroupVO.playerId  }">
			<div class="button-large link-button-02"
				onclick="changeCardgroupName()">
				<span><c:out value="${playerCardGroupVO.name }"></c:out></span> <input
					type="hidden" class="changeName"
					value='<p:fullurl value="/cg0303/cg03030201/index/${select_add_playercardId}"/>' />
			</div>
		</c:if>
		<c:if test="${ empty playerCardGroupVO.playerId  }">
			<div class="button-large link-button-02">
				<span><spring:message code="label.cg03030101.panel.tab2"></spring:message></span>
			</div>
		</c:if>
	</div>

	<div class="clearfix"></div>


	<!--  <div class="split-01"></div>  -->
	<div class="container">
		<div>
			<div class="panelBg">
				<div>
					<div class="div1">
						<div class="panel-header02">
							<c:if test="${not  empty playerCardGroupVO.playerId  }">
								<span><c:out value="${playerCardGroupVO.name }"></c:out></span>
							</c:if>
							<c:if test="${ empty playerCardGroupVO.playerId  }">
								<span><spring:message code="label.cg03030101.panel.tab2"></spring:message></span>
							</c:if>
						</div>
					</div>
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA18-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="cardDeck">
								<div class="cardgroup-pic">
									<c:forEach items="${playerCardGroupVO.playerCardGroupCards}"
										var="playerCardGroupCard">
										<div class="div2">
											<div class="card-pic"  >
												<div class="card-preview-border">
													<img
														src='<p:cardImg type="middle" id="${playerCardGroupCard.playerCard.cardId}" />'
														width="100%" height="100%" />
												</div>
											</div>
											<div class="equipment-all" >
												<div class="equipmentContainer">
													<div class="propertyImage">
														<c:if
															test="${not empty playerCardGroupCard.playerCard.playerEquipmentId1 }">
															<img
																src='<p:equipImg type="small" id="${playerCardGroupCard.playerCard.playerEquipment1.equipmentId }"></p:equipImg>'>
														</c:if>
													</div>
													<div class="propertyImage">
														<c:if
															test="${not empty playerCardGroupCard.playerCard.playerEquipmentId2 }">
															<img
																src='<p:equipImg type="small" id="${playerCardGroupCard.playerCard.playerEquipment2.equipmentId }"></p:equipImg>'>
														</c:if>
													</div>
													<div class="propertyImage">
														<c:if
															test="${not empty playerCardGroupCard.playerCard.playerEquipmentId3 }">
															<img
																src='<p:equipImg type="small" id="${playerCardGroupCard.playerCard.playerEquipment3.equipmentId }"></p:equipImg>'>
														</c:if>
													</div>
													<div></div>
												</div>
											</div>
										</div>
									</c:forEach>
									<c:if
										test="${fn:length(playerCardGroupVO.playerCardGroupCards)< 5 }">
										<c:forEach
											begin="${fn:length(playerCardGroupVO.playerCardGroupCards)}"
											end="4" step="1">
											<div  class="div3">
												<div class="card-pic" >
													<div class="card-preview-border">
														<img
															src="<p:localurl value="/resources/images/scard-smallcard.png"/>"
															width="100%" height="100%" />
													</div>
												</div>
												<div class="equipment-pic">
													<div class="equipmentContainer">
														<div class="propertyImage"></div>
														<div class="propertyImage"></div>
														<div class="propertyImage"></div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<div></div>
								</div>
								<div class="cardgroup-info">
									<div>
										<div class="gitem icon icon-physicalstrength">
											<span class="fc-normal-01-l"><spring:message
													code="label.cg030101.maincard.strengthrequire"></spring:message></span>
											<span><c:out
													value="${playerCardGroupNumViewData.strengthRequireTotal }"></c:out></span>
											<span class="fc-title-01">/</span> <span class="fc-title-01"><c:out
													value="${playerVo.defencePowerMax}"></c:out></span>
										</div>
										<div class="gitem icon icon-total-fighting-energy">
											<span class="fc-normal-02-l"><spring:message
													code="label.cg030101.maincard.attack"></spring:message></span> <span><c:out
													value="${playerCardGroupNumViewData.attackTotal }"></c:out></span>
										</div>
										<div class="gitem icon icon-total-shield-energy">
											<span class="fc-normal-04-l"><spring:message
													code="label.cg030101.maincard.defence"></spring:message></span> <span><c:out
													value="${playerCardGroupNumViewData.defenceTotal }"></c:out></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<input type="hidden" class="cardGroup_strengthRequire"
										value="${playerCardGroupNumViewData.strengthRequireTotal }"
										maxValue="${playerVo.attackPowerMax}" />
								</div>
							</div>
						</div>
					</div>
				</div>



				<div class="split-01"></div>
			</div>
		</div>
		<div class="spacer"></div>
		<!--<div class="split-line"></div> -->

		<!--  first card information    start -->
		<c:forEach items="${playerCardGroupVO.playerCardGroupCards}"
			var="playerCardGroupCard">
			<div>
				<div class="panel-02">
					<div
						class='<cssutils:cardCamp campType="${playerCardGroupCard.playerCard.cardCamp}"></cssutils:cardCamp>'>
						<div class="panel-header">
							<div class="div4">
								<span><c:out
										value="${playerCardGroupCard.playerCard.name}"></c:out></span>
							</div>
							<div class="div5">
								<div class="card-star">
									<c:forEach begin="1" step="1"
										end="${playerCardGroupCard.playerCard.star}" var="idx">
										<img alt=""
											src="<p:localurl value="/resources/images/star-d.png"/>" />
									</c:forEach>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-major">
								<div class="div6">
									<div class="card-major-image">
										<img
											src='<p:cardImg type="middle" id="${playerCardGroupCard.playerCard.cardId }"></p:cardImg>' />
									</div>
									<div class="card-major-image-equipment">
										<div >
											<c:if
												test="${ not empty playerCardGroupCard.playerCard.playerEquipmentId1 }">
												<img alt=""
													src="<p:equipImg type="middle" id="${playerCardGroupCard.playerCard.playerEquipment1.equipmentId }"></p:equipImg>" />
											</c:if>
											<c:if test="${ empty playerCardGroupCard.playerCard.playerEquipmentId1 }">
												<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
											</c:if>
										</div>
										<div >
											<c:if
												test="${ not empty playerCardGroupCard.playerCard.playerEquipmentId2}">
												<img alt=""
													src="<p:equipImg type="middle" id="${playerCardGroupCard.playerCard.playerEquipment2.equipmentId }"></p:equipImg>" />
											</c:if>
											<c:if test="${ empty playerCardGroupCard.playerCard.playerEquipmentId2 }">
												<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
											</c:if>
										</div>
										<div>
											<c:if
												test="${ not empty playerCardGroupCard.playerCard.playerEquipmentId3 }">
												<img alt=""
													src="<p:equipImg type="middle" id="${playerCardGroupCard.playerCard.playerEquipment3.equipmentId }"></p:equipImg>" />
											</c:if>
											<c:if test="${ empty playerCardGroupCard.playerCard.playerEquipmentId3 }">
												<img src="<p:localurl value="/resources/images/middle-equipment.png"/>" />
											</c:if>
										</div>
										<div></div>
									</div>
								</div>
								<div class="div7">
									<div class="card-major-desc">
										<div class="card-major-data">
											<div class="icon icon-level">
												<span><spring:message
														code="label.cg030101.maincard.level"></spring:message></span> <span><c:out
														value="${playerCardGroupCard.playerCard.cardLevel }" /></span>
											</div>
											<div class="icon icon-physicalstrength">
												<span><spring:message
														code="label.cg030101.maincard.strengthrequire"></spring:message></span>
												<span
													class="strengthRequire_${ playerCardGroupCard.playerCard.id}"><c:out
														value="${playerCardGroupCard.playerCard.strengthRequireAdded }" /></span>
											</div>
											<div class="icon icon-total-fighting-energy">
												<span><spring:message
														code="label.cg030101.maincard.attack"></spring:message></span> <span><c:out
														value="${playerCardGroupCard.playerCard.attackAdded }" /></span>
											</div>
											<div class="icon icon-total-shield-energy">
												<span><spring:message
														code="label.cg030101.maincard.defence"></spring:message></span> <span><c:out
														value="${playerCardGroupCard.playerCard.defenceAdded }" /></span>
											</div>
											<div></div>
										</div>
										<div class="card-major-experience">
											<div class="fc-normal-01-l div8">
												<span><spring:message
														code="label.cg030101.maincard.growingpercent"></spring:message></span>
											</div>
											<div class="div9">
												<div class="processing-bar-blue fc-normal-01-m"
													processbar="${playerCardGroupCard.playerCard.growingPercent }"></div>
											</div>
											<div></div>
										</div>
										<div style="text-align: center;">
											<div class="button-style-02">
												<div class="single-card-button">
													<img class='clickTone1'
														src="<p:localurl value="/resources/images/buttons/bianji-green.png"/>"
														onclick='location.href="<p:fullurl value="/cg0303/cg030303/index/${playerCardGroupVO.id}/${ playerCardGroupCard.playerCardId}/${playerCardGroupCard.id }"/>"' />
													<!-- 
												 	<input  class="edit_groupCard" type="image" value = "${playerCardGroupCard.id }" urlValue ="/cg0303/cg030303/index" src="<p:localurl value="/resources/images/buttons/bianji-green.png"/>"/>
					                            	<input id="edit_${playerCardGroupCard.id }" type="hidden" value="${playerCardGroupVO.id}"/>
					                             -->
												</div>
												<div class="single-card-button">
													<img class="btn_card_delete clickTone1"
														cardId="${cardItem.id}"
														src="<p:localurl value="/resources/images/buttons/yichu-blue.png"/>"
														onclick='location.href="<p:fullurl value="/cg0303/cg030306/deteleCard/${playerCardGroupVO.id}/${playerCardGroupCard.id }"/>"' />
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
			</div>
			<div class="split-01"></div>
		</c:forEach>
		<!--  first card information  end-->



		<!--  the add more card button -->
		<c:choose>
			<c:when test="${canAddCard == true }">
				<div class="spacer"></div>
				<div class="select_add_btn">
					<img
						src="<p:localurl value="/resources/images/buttons/xuanzeyaotianjiadekapai-green-z.png"/>"
						class='clickTone1'
						onclick='location.href="<p:fullurl value="/cg0303/cg030305/index/${select_add_playercardId}"/>"' />
				</div>
			</c:when>
			<c:otherwise>
				<!--  the add more card button -->
				<div id="cg030302-warn-label" class="warning-label fc-normal-06-l">
					<span><spring:message code='label.cg030302.wufafenpai'></spring:message></span>
				</div>
			</c:otherwise>
		</c:choose>
		<div class="split-01"></div>



	</div>
	<!--  page end  -->
</div>
