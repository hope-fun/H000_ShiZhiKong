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
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value='/resources/css/CG0301/tabpanel.css?v=1'/>">
<div class="content cg03030101">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg030301.title"></spring:message></span>
	</div>
	<div class="tab-panel03">
		<div>
			<img alt=""
				src='<p:localurl value="/resources/images/buttons/zhandouzhenrong-blue-b.png"/>'
				onclick='location.href="<p:fullurl value="/cg0303/cg030301/index"/>"'
				class='clickTone1' />
		</div>
		<div>
			<img alt=""
				src='<p:localurl value="/resources/images/buttons/hudunzhenrong-yellow-b.png"/>'
				onclick='location.href="<p:fullurl value="/cg0303/cg03030101/index"/>"'
				class='clickTone1' />
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<div class="container">
		<c:if test="${not empty playerCardGroups }">
			<div>
				<c:forEach items="${playerCardGroups }" var="playerCardGroup"
					varStatus="idx">
					<div>
						<div class="panelBg">
							<div>
								<div class="div1">
								<c:choose>
									<c:when test="${idx.index == 0}">
										<div class="panel-header02">
											<div class="panel-header02-cardGroupname"><span><c:out value="${playerCardGroup.name}"></c:out></span></div><div class="currentfight-title"><span>*<spring:message code="label.cg030303.currentFight"></spring:message></span></div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="panel-header02">
											<span><c:out value="${playerCardGroup.name}"></c:out></span>
										</div>
									</c:otherwise>
								
								</c:choose>
								</div>
								<div class="borderPanel">
									<div class="panelA-header"></div>
									<div class="panelA-body panelA18-height"></div>
									<div class="panelA-footer"></div>
									<div class="border-content-noleft">
										<div class="cardDeck">
											<div class="cardgroup-pic">
												<c:forEach
													items="${playerCardGroupNumViewDataLst.get(idx.index).playerCardVo }"
													var="playerCardVo" begin="0"
													end="${fn:length(playerCardGroupNumViewDataLst.get(idx.index).playerCardVo)}">
													<div class="div2">
														<div class="card-pic" >
															<div class="card-preview-border">
																<img
																	src='<p:cardImg type="middle" id="${playerCardVo.cardId}" />'
																	width="100%" height="100%" />
															</div>
														</div>
														<div class="equipment-all" >
															<div class="equipmentContainer">
																<div class="propertyImage">
																	<c:if
																		test="${not empty playerCardVo.playerEquipmentId1 }">
																		<img
																			src='<p:equipImg type="small" id="${playerCardVo.playerEquipment1.equipmentId }"></p:equipImg>'>
																	</c:if>
																</div>
																<div class="propertyImage">
																	<c:if
																		test="${not empty playerCardVo.playerEquipmentId2 }">
																		<img
																			src='<p:equipImg type="small" id="${playerCardVo.playerEquipment2.equipmentId }"></p:equipImg>'>
																	</c:if>
																</div>
																<div class="propertyImage">
																	<c:if
																		test="${not empty playerCardVo.playerEquipmentId3 }">
																		<img
																			src='<p:equipImg type="small" id="${playerCardVo.playerEquipment3.equipmentId }"></p:equipImg>'>
																	</c:if>
																</div>
																<div></div>
															</div>
														</div>
													</div>
												</c:forEach>
												<c:if
													test="${fn:length(playerCardGroupNumViewDataLst.get(idx.index).playerCardVo)< 5}">
													<c:forEach
														begin="${fn:length(playerCardGroupNumViewDataLst.get(idx.index).playerCardVo)}"
														end="4" step="1">
														<div class="div3">
															<div class="card-pic" >
																<div class="card-preview-border">
																	<img
																		src="<p:localurl value="/resources/images/scard-smallcard.png"/>"
																		width="100%" height="100%" />
																</div>
															</div>
															<div class="equipment-all" >
																<div class="equipmentContainer">
																	<div class="propertyImage"></div>
																	<div class="propertyImage"></div>
																	<div class="propertyImage"></div>
																	<div></div>
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
																code="label.cg030201.strengthrequire"></spring:message></span>
														<span><c:out
																value="${playerCardGroupNumViewDataLst.get(idx.index).strengthRequireTotal }"></c:out></span>
														<span class="fc-title-01">/</span> <span
															class="fc-title-01"> <%-- <c:choose>
																<c:when test="${playerCardGroup.isRecommend == false }">
																	<c:out value="${playerVo.defencePowerMax}"></c:out>
																</c:when>
																<c:otherwise>
																	<c:out value="${playerVo.defencePower}"></c:out>
																</c:otherwise>
															</c:choose> --%>
															<c:out value="${playerVo.defencePowerMax}"></c:out>
														</span>
													</div>
													<div class="gitem icon icon-total-fighting-energy">
														<span class="fc-normal-02-l"><spring:message
																code="label.cg030201.attack"></spring:message></span> <span><c:out
																value="${playerCardGroupNumViewDataLst.get(idx.index).attackTotal }"></c:out></span>
													</div>
													<div class="gitem icon icon-total-shield-energy">
														<span class="fc-normal-04-l"><spring:message
																code="label.cg030201.defence"></spring:message></span> <span><c:out
																value="${playerCardGroupNumViewDataLst.get(idx.index).defenceTotal }"></c:out></span>
													</div>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>								
							</div>
						</div>

						<c:if
							test="${!playerCardGroupNumViewDataLst.get(idx.index).suitFight }">
							<div class="div4">
								<span class='fc-normal-06-m'><spring:message
										code='label.cg03030101.fanyukazu_msg'></spring:message></span><a
									onclick="location.href='<p:fullurl value="/cg0601/cg060101/index"></p:fullurl>';event.preventDefault();"><span
									class='fs-underline fc-normal-04-m'><spring:message
											code='label.cg030301.buchong'></spring:message></span></a>
							</div>
						</c:if>


						<c:if test="${playerCardGroup.isRecommend == false }">
							<div class="gbutton-01 ">
								<div>
									<img
										src="<p:localurl value="/resources/images/buttons/jiesan-blue-x.png"/>"
										onclick='location.href="<p:fullurl value="/cg0303/cg030310/index/${playerCardGroup.id }"/>"'
										class='clickTone1' />
								</div>
								<div>
									<img
										src="<p:localurl value="/resources/images/buttons/bianji-blue-x.png"/>"
										onclick='location.href="<p:fullurl value="/cg0303/cg030306/index/${playerCardGroup.id }"/>"'
										class='clickTone1' />
								</div>
								<div class="clearfix"></div>
							</div>
						</c:if>
						<c:if
							test="${playerCardGroup.orderNumber != playerCardGroups.get(0).orderNumber }">
							<div class="gbutton-03">
								<img
									src="<p:localurl value="/resources/images/buttons/tishengzhenrongyouxiandu-green-z.png"/>"
									onclick='location.href="<p:fullurl value="/cg0303/cg03030101/raiseordernumber/${playerCardGroup.id }/${playerCardGroups.get(idx.index).orderNumber }/${playerCardGroups.get(0).orderNumber}"/>"'
									class='clickTone1' />
							</div>
						</c:if>
						<div class="split-01"></div>
					</div>
				</c:forEach>
			</div>
		</c:if>
		<c:if test="${fn:length(playerCardGroups) < 6}">
			<div class="editContainer">
				<div class="div5">
					<div class="panel-header02">
						<span><spring:message
								code="label.cg03030101.editdefencegroup"></spring:message> <c:out
								value="${fn:length(playerCardGroups) }"></c:out></span>
					</div>
				</div>

				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA11-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div class="edit-cardgroup">
							<img
								src="<p:localurl value="/resources/images/buttons/bianjizhenrong-green.png"/>"
								onclick='location.href="<p:fullurl value="/cg0303/cg030306/index/${editPlayerCardGroupId}"/>"'
								class='clickTone1' />
						</div>
					</div>
				</div>

			</div>
			<div class="split-01"></div>
		</c:if>

	</div>
</div>
