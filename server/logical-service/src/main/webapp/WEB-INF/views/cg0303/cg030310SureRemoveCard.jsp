<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">




<script>
	function loadSalesList() {

		$.ui.loadContent('<p:fullurl value="propsManagement/propsSaleList"/>',
				false, false, 'flip');

	}
</script>
<div class="content cg030310">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg030310.title"></spring:message></span>
	</div>


	<div class="warning-label">
		<span><spring:message code="label.cg030310.prompt.title"></spring:message>
			<c:out value="${playerCardGroupVO.name }"></c:out>!</span>
	</div>

	<div class="dismiss-button">
		<img alt=""
			src='<p:localurl value ="/resources/images/buttons/jiesan-green-x.png"/>'
			class='clickTone1'
			onclick="location.href='<p:fullurl value ="/cg0303/cg030310/deleteGroup/${playerCardGroupVO.type}/${playerCardGroupVO.id }" />';event.preventDefault();">
	</div>

	<!--  <div class="split-01"></div>  -->
	<div class="container">
		<div>
			<div class="panelBg">
				<div>
					<div class="div1">
						<div class="panel-header02">
							<span><c:out value="${playerCardGroupVO.name }"></c:out></span>
						</div>
					</div>
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="cardDeck">
						<div class="cardgroup-pic">
							<c:forEach items="${playerCardGroupVO.playerCardGroupCards}"
								var="playerCardGroupCard">
								<div style="" class="div2">
									<div class="card-pic div3">
										<div class="card-preview-border">
											<img
												src='<p:cardImg type="middle" id="${playerCardGroupCard.playerCard.cardId}" />'
												width="100%" height="100%" />
										</div>
									</div>
									<div class="equipment-all div4" >
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
									<div class="div5">
										<div class="card-pic div6" >
											<div class="card-preview-border">
												<img
													src="<p:localurl value="/resources/images/scard-smallcard.png"/>"
													width="100%" height="100%" />
											</div>
										</div>
										<div class="equipment-pic div7">
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
											value="${playerVo.attackPowerMax}"></c:out></span>
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
						</div> 
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
				<div>
					<div class="panel-header">
						<div class="div8">
							<span><c:out
									value="${playerCardGroupCard.playerCard.name }"></c:out></span>
						</div>
						<div class="div8">
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
							<div class="div9">
								<div class="card-major-image">
									<img
										src='<p:cardImg type="middle" id="${playerCardGroupCard.playerCard.cardId }"></p:cardImg>' />
								</div>
								<div class="card-major-image-equipment">
									<div>
										<c:if
											test="${ not empty playerCardGroupCard.playerCard.playerEquipmentId1 }">
											<img alt=""
												src="<p:equipImg type="middle" id="${playerCardGroupCard.playerCard.playerEquipment1.equipmentId  }"></p:equipImg>" />
										</c:if>
									</div>
									<div>
										<c:if
											test="${ not empty playerCardGroupCard.playerCard.playerEquipmentId2}">
											<img alt=""
												src="<p:equipImg type="middle" id="${playerCardGroupCard.playerCard.playerEquipment2.equipmentId }"></p:equipImg>" />
										</c:if>
									</div>
									<div>
										<c:if
											test="${ not empty mplayerCardGroupCard.playerCard.playerEquipmentId3 }">
											<img alt=""
												src="<p:equipImg type="middle" id="${playerCardGroupCard.playerCard.playerEquipment3.equipmentId }"></p:equipImg>" />
										</c:if>
									</div>
									<div></div>
								</div>
							</div>
							<div class="div10">
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
											<span><c:out
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
										<div class="fc-normal-01-l div11">
											<span><spring:message
													code="label.cg030101.maincard.growingpercent"></spring:message></span>
										</div>
										<div class="div12">
											<div class="processing-bar-blue fc-normal-01-m"
												processbar="${playerCardGroupCard.playerCard.growingPercent }"></div>
										</div>
										<div></div>
									</div>
								</div>
							</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>


	<div class="spacer"></div>

	<!--  the add more card button -->

	<div class="dismiss-button">
		<img alt=""
			src='<p:localurl value ="/resources/images/buttons/jiesan-green-x.png"/>'
			class='clickTone1'
			onclick="location.href='<p:fullurl value ="/cg0303/cg030310/deleteGroup/${playerCardGroupVO.type}/${playerCardGroupVO.id }" />';event.preventDefault();">
	</div>

	<!--  page end  -->
</div>

