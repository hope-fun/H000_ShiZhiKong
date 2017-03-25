<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="consumable" tagdir="/WEB-INF/tags/fight"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0401/cg0401.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0401/cg040102.css?v=1"/>" />
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg0401/cg0401.js'/>"></script>
<div class="content cg040102">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg0401.lockedtreasure"></spring:message></span>
	</div>
   <!--<div class="text-center font-size"><span class="pvpfontcolor"><spring:message code="label.cg220107.starRankGame.mianfeiPVP"></spring:message></span><span>${playerVo.freeAttackTimes }<spring:message code="label.cg220107.starRankGame.ci"></spring:message></span></div>  --> 
	<div class="tab-panelButton">
		<div>
			<div class="tabbutton">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/yuansu-yellow-b.png"/>"
					onclick="location.href='<p:fullurl value="/cg0401/cg040102/index/0"/>';event.preventDefault();" />
			</div>
			<div class="tabbutton">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/xiangjindengji-blue-b.png"/>"
					onclick="location.href='<p:fullurl value="/cg0401/cg040105/index/"/>';event.preventDefault();" />
			</div>
			<div class="tabbutton">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/diren-blue-b.png"/>"
					onclick="location.href='<p:fullurl value="/cg0401/cg040104/index/"/>';event.preventDefault();" />
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="split-line"></div>
		<div class="targetpadding">
			<div class="label-dk">
				<div>
					<span><spring:message code="label.cg040102.target"></spring:message></span>
				</div>
			</div>
			<div class="pannelStyle">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA12-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div class="treasurePanel">
							<div class="treasurePanelImage">
								<treasure:treasureImage
									treasureFragmentVO="${treasureFragmentVo}" imageSize="large"></treasure:treasureImage>
							</div>
							<div class="treasureText">
								<div class="div1">
									<div class="system-title panel-element">
										<c:out value="${treasureFragmentVo.name}"></c:out>
									</div>
									<div class="system-content treasureCount">
										<span><spring:message
												code="label.cg040102.completepercent"></spring:message>:</span> <span><c:out
												value="${count}"></c:out> / </span> <span>6</span>
									</div>
									<div class="system-content treasureCount">
										<span><spring:message code="label.cg040102.ownnumber"></spring:message>:</span>
										<span><c:out value="${ownCount}"></c:out></span>
									</div>
								</div>
								<div class="changeButtonStyle">
									<img class="clickTone1"
										src="<p:localurl value="/resources/images/buttons/gaibianmubiaoyuansu-green.png"/>"
										onclick="location.href='<p:fullurl value="/cg0701/cg070101/index/"/>';event.preventDefault();" />
								</div>

							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="menu-medium title-label-02">
			<span><spring:message code="label.cg0401.selectrival"></spring:message></span>
		</div>
		<div class="container container-rival">
			<c:if test="${not empty similarRival }">
				<c:forEach items="${similarRival}" var="rivalItem">
					<div class="panel-03 div1">
						<c:choose>
							<c:when test="${fn:contains(rivalItem.camp, 'HUMAN')}">
								<div class="blue-background">
							</c:when>

							<c:when test="${fn:contains(rivalItem.camp, 'TAITAN')}">
								<div class="yellow-background">
							</c:when>

							<c:otherwise>
								<div class="green-background">
							</c:otherwise>
						</c:choose>
						<div class="panel-header">
							<div class="div1">
								<span><c:out value="${rivalItem.name}"></c:out></span>
							</div>
							<div class="div2">
								<c:if test="${ rivalItem.ranking > 0 }">
									<img
										src="<p:localurl value="/resources/images/small-ranking-${rivalItem.ranking}.png"/>" />
								</c:if>
							</div>


							<div class="div3">
								<c:if test="${ rivalItem.vipLevel >0 }">
									<img
										src="<p:localurl value="/resources/images/viplevel/${rivalItem.vipLevel}.png"/>" />
								</c:if>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-assistant">
								<div class="div1">
									<div class="card-assistant-image">
										<c:if test="${ not empty rivalItem.playerCardVO.cardId }">
											<img
												src='<p:cardImg type="small" id="${rivalItem.playerCardVO.cardId}"></p:cardImg>' />
										</c:if>
									</div>
								</div>
								<div class="div2">
									<div class="card-assistant-equipment">
										<div class="card-equipment ">
											<c:if
												test="${ not empty rivalItem.playerCardVO.playerEquipmentId1 }">
												<div class="one-equipment">
													<img alt=""
														src="<p:imgPath id='${rivalItem.playerCardVO.playerEquipmentId1}' folder='equipments' type='small' />" />
												</div>
											</c:if>
											<c:if
												test="${ empty rivalItem.playerCardVO.playerEquipmentId1 }">
												<div class="one-equipment">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</div>
											</c:if>

											<c:if
												test="${ not empty rivalItem.playerCardVO.playerEquipmentId2 }">
												<div class="one-equipment">
													<img alt=""
														src="<p:imgPath id='${rivalItem.playerCardVO.playerEquipmentId2}' folder='equipments' type='small' />" />
												</div>
											</c:if>
											<c:if
												test="${ empty rivalItem.playerCardVO.playerEquipmentId2 }">
												<div class="one-equipment">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</div>
											</c:if>


											<c:if
												test="${ not empty rivalItem.playerCardVO.playerEquipmentId3 }">
												<div class="one-equipment">
													<img alt=""
														src="<p:imgPath id='${rivalItem.playerCardVO.playerEquipmentId3}' folder='equipments' type='small' />" />
												</div>
											</c:if>
											<c:if
												test="${ empty rivalItem.playerCardVO.playerEquipmentId3 }">
												<div class="one-equipment">
													<img src="<p:localurl value="/resources/images/icons/default.png"/>"/>
												</div>
											</c:if>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="div3">
									<div class="card-assistant-desc">
										<div class="top-right-panel">
											<div class="div1">
												<div class="archives-item icon icon-level icon-location">
													<span><c:out value="${rivalItem.level}"></c:out></span>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="middle-right-panel">
											<div>
												<div
													class="archives-item icon icon-shield-energy icon-location ">
													<span><c:out value="${rivalItem.defencePowerMax}"></c:out></span>
												</div>
											</div>
											<div>
												<div class="archives-item icon icon-comrades icon-location ">
													<span><c:out value="${rivalItem.friendsNum}"></c:out>
														/ <c:out value="${rivalItem.friendsMax}"></c:out></span>
												</div>
											</div>
											<div></div>
										</div>
										<div class="div2">
											<div class="div1">
												<c:if
													test="${ rivalItem.canAttack ==false }">
													<img name="detailButton" class="button_gray"
														src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>" />
												</c:if>
												<c:if test="${rivalItem.canAttack!=false}">
													
														<!-- <img  src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>"  onclick="location.href='<p:fullurl value="/cg0401/cg040106/fight/${treasureFragmentVo.id}/${rivalItem.id}/"/>';event.preventDefault();"/> -->
														<img class="fightButton clickTone1"
															src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>"
															treasureFragmentId=${treasureFragmentVo.id
															} enemyId=${rivalItem.id } onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${treasureFragmentVo.id}/${rivalItem.id}/false/"/>';event.preventDefault();" />
													
												</c:if>
											</div>
											<div>
												<c:if
													test="${ rivalItem.canAttack ==false }">
													<img name="detailButton" class="button_gray"
														src="<p:localurl value="/resources/images/buttons/xiangxixinxi-green.png"/>" />
												</c:if>
												<c:if test="${rivalItem.canAttack!=false}">
													
														<img name="detailButton" class="clickTone1"
															src="<p:localurl value="/resources/images/buttons/xiangxixinxi-green.png"/>"
															onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${treasureFragmentVo.id}/${rivalItem.id}/false/"/>';event.preventDefault();" />
													
												</c:if>
											</div>
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
		</c:if>
	</div>

	<consumable:consumableMoveDiv d2="${d2}" d1="${d1}"></consumable:consumableMoveDiv>	

	<div class="textalignCenter textalignCenter02">
		<img class="clickTone1" name="updateRival"
			src="<p:localurl value="/resources/images/buttons/gengxinduishouliebiao-green-z.png"/>"
			onclick="location.href='<p:fullurl value="/cg0401/cg040102/index/${playerTreasureId}/${treasureFragmentVo.id}/${pageIndex}/"/>';event.preventDefault();">
	</div>
	<input id="doJudgeUrltreasure" type="hidden"
		value="<p:fullurl value="/cg0401/cg040102/fight/"/>" /> <input
		id="dofightUrl" type="hidden"
		value="<p:fullurl value="/cg0401/cg040106/fight/"/>" /> <input
		id="doComsumableUrl" type="hidden"
		value="<p:fullurl value="/cg0601/cg060101/index"/>" /> <input
		id="showmessage" type="hidden"
		value="<spring:message code="label.cg0401.confirmfight"></spring:message>" />
</div>