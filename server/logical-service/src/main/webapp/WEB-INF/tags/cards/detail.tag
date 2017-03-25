<%@ tag pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="item" type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerCardViewData" required="true" rtexprvalue="true" description="The player card object" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/CG030102.css?v=1" />">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0302.css?v=1"/>">
<div class="cardInfo">
	<div class="borderPanel">
		<div class="panelA-header"></div>
		<div class="panelA-body panelA08-height detail-info-height"></div>
		<div class="panelA-footer"></div>
		<div class="border-content">
			<div class="image-pic">
				<img alt="" src='<p:cardImg type="big" id="${item.cardId }"></p:cardImg>'>
			</div>
				<div class="wordsDescription">
					<div class="firstRow"> 
						<div class="row-left ">
			
							<div class="gitem icon icon-level move-from-left">
									<span class="fc-normal-01-l"><spring:message code="label.cg030102.carddetail.level"></spring:message>:</span>
									<span>${item.cardLevel}</span>
							</div>
						</div>
					
						<div>
						<c:if test="${item.growingPercent > 0 }">
							<div class="processing-bar-blue fc-normal-01-m process-bar"
								processbar="${item.growingPercent}">
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
							<div class="pro-bar-afterIntersify clearfix">
								<span><c:out value="${nowExp}" /></span><span
									style="padding-left: 10px;">/</span> <span>${totalExp}</span>
							</div>
						</c:if>
                       <c:if test="${item.growingPercent <= 0 }">
							<div class="processing-bar-blue fc-normal-01-m process-bar"
								processbar="0">
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
							<div class="pro-bar-afterIntersify  clearfix">
								<span><c:out value="0" /></span><span
									style="padding-left: 10px;">/</span> <span>${totalExp}</span>
							</div>
						</c:if>
					</div>
						<div></div>
					</div>
					<div class="down-list-image"></div>
					<div class= "secondRow">
						<div>
			
							<div class="gitem icon icon-total-fighting-energy move-from-left">
									<span class="fc-normal-02-l"><spring:message code="label.cg030102.carddetail.attack"></spring:message>:</span>
									<span>${item.attack}</span>
							</div>
						</div>
					
						<div> 
			
							<div class="gitem icon icon-total-shield-energy move-from-left">
									<span class="fc-link-l"><spring:message code="label.cg030102.carddetail.defence"></spring:message>:</span>
									<span>${item.defence}</span>
							</div>
						</div>
						<div></div>
					</div>
					
					<div class="up-list-image"></div>
					
					<div class="defenseNeeded">
						<div class="row-zhxq"> 
							<div class="gitem icon icon-physicalstrength move-from-left">
								<span class="fc-normal-01-l"><spring:message code="label.cg030102.carddetail.strengthrequire"></spring:message>:</span>
								<span>${item.strengthRequire}</span>
							</div>
						</div>
						
					</div>
					<div class="down-list-image"></div>
					<div class="textDescription  fc-title-02">
						<span>${item.getDescription()}</span>
					</div>
					<div class="fixedPrompt">
						<c:if test="${item.isMain or not empty item.playerEquipment1 or not empty item.playerEquipment2 or not empty item.playerEquipment3}" >
							<div class="up-list-image"></div>
							<div class="description-1 fc-withwild ">
								<span >*<spring:message code="label.cg030102.carddetail.maincardtips"></spring:message></span>
							</div>
						</c:if>
						
						<c:if test="${empty fromHandbook }">
							<c:if test="${!item.canSale or !item.canAuction}" >
							<div class="down-list-image"></div>
								<div class="description-2 fc-withwild ">
									<span >*<spring:message code="label.cg030102.carddetail.saletips"></spring:message></span>
								</div>
							</c:if>
						</c:if>
				</div>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>


</div>
