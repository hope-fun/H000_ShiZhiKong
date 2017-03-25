<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/CG030102.css?v=1" />">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<script src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	$(document).ready(function() {
		if("${fromKeyIntensifyStarCards}" == "false"){
			$animation.cardIntensifyAnimation(".contentIntensify");
		}else{			
			$('.finalRes').css("display", "block");
		}
		
	});
</script>
<c:if test="${fromKeyIntensifyStarCards == false }">
	<div class="animationHolder">
		<div class="contentMask"></div>
		<div class="LightRay">
			<div class="layer_01">
				<img src="<p:localurl value="/resources/images/animation/lightLayer_01.png"/>" />
			</div>
			<div class="layer_02">
				<img src="<p:localurl value="/resources/images/animation/lightLayer_02.png"/>" />
			</div>
			<div class="layer_03">
				<img src="<p:localurl value="/resources/images/animation/lightLayer_03.png"/>" />
			</div>
		</div>
		<div class="contentIntensify">
			<div class="topPart">
				<img class="main" src="<p:cardImg type="middle" id="${mainPlayerCard.cardId}"></p:cardImg>" />
			</div>
			<c:forEach items="${matCardIds}" var="cardId" varStatus="status">
				<c:if test="${status.first}">
					<div class="upPart">
				</c:if>
				<c:if test="${status.index == 5}">
					</div>
					<div class="downPart">
				</c:if>
				<img class="mat" src="<p:cardImg type="ls" id="${cardId}"></p:cardImg>" />
				<c:if test="${status.last}">
					</div>
				</c:if>
			</c:forEach>
	
	
			<div class="hiddenPart">
				<img class="hidden" src="<p:localurl value="/resources/images/animation/backgroundStar.png"/>">
			</div>
		</div>
	</div>
</c:if>
<div class="content cg030204cardintensifyconfirmover finalRes ">
	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg030204.title"></spring:message></span>
	</div>
	<div style="text-align:center;">
		<span class="fc-normal-08-m">			
			<spring:message code="label.cg030204.labeltips"></spring:message>
		</span>
	</div>
	<div class="panel-npc">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height npc-intensify"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="npc-message">
					<div class="npc-img">
						<img alt="" src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
						<div class='npc-info fc-normal-05-m'>
							<div class="div1">
								<span class="fc-normal-01-l"><spring:message
										code="label.cg030204.message"></spring:message>：</span>
								<span class="fc-normal-03-m"><c:out value="${BeforemainPlayerCard.cardLevel}" />&rarr;
								<c:out value="${mainPlayerCard.cardLevel}" /></span>
								<c:if test="${BeforemainPlayerCard.cardLevel < mainPlayerCard.cardLevel }">
								<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
								</c:if>
							</div>
							<div class="div2">
								<span class="fc-normal-02-l"> <spring:message
										code="label.cg030204.attack"></spring:message>：
								</span>
								<span class="fc-normal-03-m"><c:out value="${BeforemainPlayerCard.attack}" />&rarr;
								<c:out value="${mainPlayerCard.attack}" /></span>
								<c:if test="${BeforemainPlayerCard.attack < mainPlayerCard.attack }">
								<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
								</c:if>
							</div>
							<div class="div3">
								<span class="fc-link"> <spring:message
										code="label.cg030204.defence"></spring:message>：
								</span>
								<span class="fc-normal-03-m"><c:out value="${BeforemainPlayerCard.defence}" />&rarr;
								<c:out value="${mainPlayerCard.defence}" /></span>
								<c:if test="${BeforemainPlayerCard.defence < mainPlayerCard.defence }">
								<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
								</c:if>
							</div>
							<div class="div3">
								<span class="fc-normal-08-m">									
									<spring:message code="label.cg030204.cardrank"></spring:message>
								</span>
								<span class="fc-normal-03-m"><c:out value="${beforeRank}" />&rarr;
								<c:out value="${rank}" />																
								</span>
								<c:if test="${rank < beforeRank }">
									<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>								
								</c:if>
							</div>
							<div class="div3">
								<span class="fc-normal-08-m">
									<spring:message code="label.cg030204.allcardrank"></spring:message>
								</span>
								<span class="fc-normal-03-m"><c:out value="${beforeTotalRank}" />&rarr;
								<c:out value="${totalRank}" />	
								</span>
								<c:if test="${totalRank < beforeTotalRank }">
									<img class="img-arrow" src='<p:localurl value="/resources/images/greenArrow.png"/>'/>
								</c:if>
							</div>
						</div>
						<div></div>
				</div>
			</div>
		</div>
	</div>
	<%-- <cards:detail item="${mainPlayerCard}"></cards:detail> --%>
	
	<!--    -->
	<div class="cardInfo clearfix">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA08-height detail-info-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content">
				<div class="image-pic">
					<img alt=""
						src='<p:cardImg type="big" id="${mainPlayerCard.cardId }"></p:cardImg>'>
				</div>
				<div class="wordsDescription">
					<div class="firstRow">
						<div class="row-left ">

							<div class="gitem icon icon-level move-from-left">
								<span class="fc-normal-01-l"><spring:message
										code="label.cg030102.carddetail.level"></spring:message>:</span> <span>${mainPlayerCard.cardLevel}</span>
							</div>
						</div>

						<div>
							<div class="processing-bar-blue fc-normal-01-m process-bar"
								processbar="${mainPlayerCard.growingPercent}">
								<div class="pro-bar-width">
									<table class="process-bar">
										<tbody>
											<tr>
												<td></td>
												<td class=""></td>
												<td></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="pro-bar-intersify-over clearfix">
								<span ><c:out value="${nowExp}"/></span><span style="padding-left: 7px;">/</span> <span>${totalExp}</span>
							</div>
						</div>
						<div></div>
					</div>
					<div class="down-list-image"></div>
					<div class="secondRow">
						<div>

							<div class="gitem icon icon-total-fighting-energy move-from-left">
								<span class="fc-normal-02-l"><spring:message
										code="label.cg030102.carddetail.attack"></spring:message>:</span> <span>${mainPlayerCard.attack}</span>
							</div>
						</div>

						<div>

							<div class="gitem icon icon-total-shield-energy move-from-left">
								<span class="fc-link-l"><spring:message
										code="label.cg030102.carddetail.defence"></spring:message>:</span> <span>${mainPlayerCard.defence}</span>
							</div>
						</div>
						<div></div>
					</div>

					<div class="up-list-image"></div>

					<div class="defenseNeeded">
						<div class="row-zhxq">
							<div class="gitem icon icon-physicalstrength move-from-left">
								<span class="fc-normal-01-l"><spring:message
										code="label.cg030102.carddetail.strengthrequire"></spring:message>:</span>
								<span>${mainPlayerCard.strengthRequire}</span>
							</div>
						</div>

					</div>
					<div class="down-list-image"></div>
					<div class="textDescription  fc-title-02">
						<span>${mainPlayerCard.getDescription()}</span>
					</div>
					<div class="fixedPrompt">
						<c:if
							test="${mainPlayerCard.isMain or not empty mainPlayerCard.playerEquipment1 or not empty mainPlayerCard.playerEquipment2 or not empty mainPlayerCard.playerEquipment3}">
							<div class="up-list-image"></div>
							<div class="description-1 fc-withwild ">
								<span>*<spring:message
										code="label.cg030102.carddetail.maincardtips"></spring:message></span>
							</div>
						</c:if>

						<c:if test="${empty fromHandbook }">
							<c:if test="${!mainPlayerCard.canSale or !mainPlayerCard.canAuction}">
								<div class="down-list-image"></div>
								<div class="description-2 fc-withwild ">
									<span>*<spring:message
											code="label.cg030102.carddetail.saletips"></spring:message>
									</span>
								</div>
							</c:if>
						</c:if> 
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<!--    -->
	
	<div class="clearfix goBackButtonPanel clickTone1" onclick="location.href = '<p:fullurl value='/cg0302/cg030201/index'/>?playerCardId=${mainPlayerCard.id}';">
		<img src="<p:localurl value='/resources/images/buttons/jixuhecheng-green-z.png'/>" />
		<br/><br/>
	</div>
</div>
