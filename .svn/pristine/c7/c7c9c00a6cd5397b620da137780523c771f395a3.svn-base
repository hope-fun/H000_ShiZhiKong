<%@tag pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>
<%@attribute name="items" type="java.util.List" required="true" rtexprvalue="true"%>
<c:if test="${empty items}">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">
	<c:forEach items="${items}" var="playerSection">
		<div>
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="phase-header">
						<span class="padding-left22">${playerSection.name}</span>
					</div>
				</div>
				<div style="width: 100%;">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body">
							<div class="section-container">
								<div class="story-message-style" >
								<div style="float:left"><spring:message code="label.CG020103.story"></spring:message></div>
								<div class="processing-bar-yellow fc-normal-06-m section-pro-width"
									processbar="<fmt:formatNumber type='number' value='${(playerSection.roundsCountFinished)/(playerSection.roundsCount)*100}' maxFractionDigits='0'/>"></div>
								</div>
								<div class="location-num-style">
									<div class="location-num">
										<div>
											<div>
												<img alt="" src="<p:localurl value="/resources/images/icons/xingdongnengliang.png" />">
											</div>
											<div><span>&nbsp;-${playerSection.consumeActionPower}</span></div>
										</div>
										<div>
											<div>
												<img alt="" src="<p:localurl value="/resources/images/icons/exp.png" />">
											</div>
											<div><span>&nbsp;&#43;${playerSection.rewardExp}</span></div>
										</div>
										<div>
											<div>
												<img alt="" src="<p:localurl value="/resources/images/icons/shuijing.png" />">
											</div>
											<div><span>&nbsp;&#43;（${playerSection.rewardScoinMin}&nbsp;~&nbsp;${playerSection.rewardScoinMax}）</span></div>
										</div>
									</div>
									<div class="location-pic">
										<div>
											<c:choose>
												<c:when test="${playerSection.rewardCard1}">
													<img src='<p:cardImg type="tinysmall" id="${playerSection.rewardCard1Id}"></p:cardImg>'>
												</c:when>
												<c:otherwise>
													<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
												</c:otherwise>
											</c:choose>
										</div>
										<div>
											<c:choose>
												<c:when test="${playerSection.rewardCard2}">
													<img src='<p:cardImg type="tinysmall" id="${playerSection.rewardCard2Id}"></p:cardImg>'>
												</c:when>
												<c:otherwise>
													<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
												</c:otherwise>
											</c:choose>
										</div>
										<div>
											<c:choose>
												<c:when test="${playerSection.rewardCard3}">
													<img src='<p:cardImg type="tinysmall" id="${playerSection.rewardCard3Id}"></p:cardImg>'>
												</c:when>
												<c:otherwise>
													<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
												</c:otherwise>
											</c:choose>
										</div>
										<c:if test="${not empty playerSection.treasureId}">
											<c:choose>
												<c:when test="${playerSection.rewardTreasureFragment}">
													<treasure:treasureImage treasureFragmentVO="${playerSection.fragment}" imageSize="middle"></treasure:treasureImage>
												</c:when>
												<c:otherwise>
													<div>
													<img class="reward-default-image" src='<p:localurl value="/resources/images/middle-equipment.png" />' />
													</div>
												</c:otherwise>
											</c:choose>
										</c:if>
									</div>
								</div>
								<div class="clearfix center-site">
									<img src='<p:localurl value="/resources/images/buttons/jixu-green.png"/>' class="clickTone1" onclick="doJump('<p:fullurl value='/cg0201/cg020104/index/${playerSection.id}'/>', this)">
								</div>
							</div>
						</div>
						<div class="panelA-footer"></div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</c:if>
