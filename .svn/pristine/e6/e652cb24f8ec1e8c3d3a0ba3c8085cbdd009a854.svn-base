<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="<p:localurl value="/resources/js/cg0801/cg080102.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080102.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">

<script type="text/javascript">
	var packagetype = {
		typeEnum : {
			"general" : "GENERAL",
			"hero" : "HERO",
			"king" : "KING",
			"myth" : "MYTH"
		},
		"activetype" : "${activetype}"
	};
	var buyaction = "<p:fullurl value ="/cg0801/cg080102/buyaction/"/>";
	var checkaction = "<p:fullurl value ="/cg0801/cg080102/checkaction/"/>";
	var extractaction = "<p:fullurl value ="/cg0801/cg080102/extractaction/"/>";
	var tabchange = "<p:fullurl value ="/cg0801/cg080102/tabchange/"/>"
	function jumpToItensify(){
		window.location.href="<p:fullurl value='/cg0302/cg030201/index'/>";
	}
	function jumpToEvo(){
		window.location.href="<p:fullurl value='/cg0302/cg030207/index'/>";
	}
</script>
<div class="content">
	<div>
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg080102.title"></spring:message></span>
		</div>

		<div>
			<img class="adv-width-style"
				src='<p:localurl value="/resources/images/xuanchuan/cg080102cardpackage.png"/>' />
		</div>

		<div class='buy-golden'> 
			<img alt=""
				src="<p:localurl value="/resources/images/buttons/goumaizuanshi-green-z.png"/>"
				class='clickTone1'
				onclick='location.href="<p:fullurl value="/cg0901/cg090101/index"/>";event.preventDefault();'>
		</div>
		<div class='type-title-info'>
			<c:if test="${activetype eq 'GENERAL' }">
				<span class='fc-normal-06-m'><spring:message
						code='label.cg0801.title.GENERAL'></spring:message></span>
			</c:if>
			<c:if test="${activetype eq 'HERO' }">
				<span class='fc-normal-06-m'><spring:message
						code='label.cg0801.title.HERO'></spring:message></span>
			</c:if>
			<c:if test="${activetype eq 'KING' }">
				<span class='fc-normal-06-m'><spring:message
						code='label.cg0801.title.KING'></spring:message></span>
			</c:if>
			<c:if test="${activetype eq 'MYTH' }">
				<span class='fc-normal-06-m'><spring:message
						code='label.cg0801.title.MYTH'></spring:message></span>
			</c:if>
		</div>
		<div class="tab-card-package">
			<div>
				<img id="general"
					src="<p:localurl value="/resources/images/buttons/putongkabao-yellow-b.png"/>" style="padding-left: 12%"/>

				<img id="hero"
					src="<p:localurl value="/resources/images/buttons/yingxiongkabao-blue-b.png"/>" />

				<img id="king"
					src="<p:localurl value="/resources/images/buttons/wangzhekabao-blue-b.png"/>" />

				<!--  <img id="myth"
					src="<p:localurl value="/resources/images/buttons/shenhuakabao-blue-b.png"/>" />
					-->
			</div>
		</div>
		<div class="split-line"></div>

	</div>


	<c:if test="${empty cardPackages }">
		<div class="align-center">Empty</div>
	</c:if>
	<c:if test="${not empty cardPackages }">

		<c:set var="paginationParams" value="${cardPackages}" scope="request" />

		<div>
			<!-- 新手招募包  -->			
			 <c:if test="${isNewCardPackage eq true }"> 
				<div class="card-package-padding" >
					<div class="panel-ybkb-header">
						<span class="header-text-move"> <c:out
								value="${newCardPackages.get(0).name}"></c:out>
						</span>
					</div>
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height cg080102-panela-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft" >
							<div class="show-publicize-img show-publicize-img02">
								<img
									src='<p:localurl value='/resources/images/cardticket/${ newCardPackages.get(0).id}.png'/>'>
							</div>
							<div class="newcard-info">
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span><spring:message
												code="label.cg0801.require.gcoincount"></spring:message></span> <span
											class="fc-content-03"> <c:out
												value="${newCardPackages.get(0).requireGcoinCount}"></c:out>
										</span>
									</div>
								</div>
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span><spring:message
												code="label.cg0801.own.gcoincount"></spring:message></span> <span
											class="fc-content-03"> <c:out
												value="${player.goldCoin}"></c:out>
										</span>
									</div>
								</div>
								<div>
									<div class="fc-normal-05-m system-content-bold">
										<span class='fc-normal-06-m'><spring:message
												code='label.cg0801.newcardpackage'></spring:message></span>
									</div>
								</div>
								<div class='buttons'>
									<div class="othertype">
										<div>
											<!-- 购买  -->
											<img
												src="<p:localurl value="/resources/images/buttons/goumaikaquan-blue.png"/>"
												onclick='location.href="<p:fullurl value="/cg0901/cg090104/index"/>"'
												class='clickTone1'>
										</div>
										<div>
											<!-- 抽取卡包  -->
											<c:if test="${ newCardPackages.get(0).overTopCount eq false}">
												<c:if test="${newCardPackages.get(0).isButtonGray eq true}">
													<img class="tips_popup clickTone1"
														message="<spring:message code="label.cg0801.gcoinnotenough"></spring:message>"
														src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
												</c:if>
												<c:if test="${newCardPackages.get(0).isButtonGray == false}">
													<img
														src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>"
														onclick='location.href="<p:fullurl value="/cg0801/cg080105/extract/${newCardPackages.get(0).cardPackageCount}/${newCardPackages.get(0).id}/false/false"/>"'
														class='clickTone1'>
												</c:if>
											</c:if>
											<c:if test="${newCardPackages.get(0).overTopCount == true }">
												<img class="tips_popup clickTone1"
														message="<spring:message code='label.cg0801.cardcountsup'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
														src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
													
													
											</c:if>
										</div>
										<div>
											<!-- 查看卡包  -->
											<img
												src="<p:localurl value="/resources/images/buttons/chakanyongbing-blue.png"/>"
												onclick='location.href="<p:fullurl value="${checkAction}"/>"'
												class='clickTone1'>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</c:if>

			<c:forEach items="${cardPackages }" var="cardPackageItem">
				<div class="card-package-padding">
					<div class="panel-ybkb-header">
						<span class="header-text-move"> <c:out
								value="${cardPackageItem.name}"></c:out>
						</span>
					</div>
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="show-publicize-img show-publicize-img02">
								<img
									src='<p:localurl value='/resources/images/cardticket/${cardPackageItem.id}.png'/>'>
							</div>

							<div class="message-style">
								<c:choose>
									<c:when
										test="${cardPackageItem.type eq 'GENERAL' && cardPackageItem.isRequireSilverCoin==false}">
										<div class="generaltype-message-recruitpoints require-silver-count">
											<c:if test="${isFree == false }">
												<div>
													<div class="fc-normal-05-m system-content-bold">
														<span><spring:message code="label.cg0801.require"></spring:message></span>
														<span class="fc-content-03"> 
															<span> <c:out value="${cardPackageItem.requireFriendPoints}"></c:out></span>
														</span>
													</div>
												</div>
											</c:if>
											<c:if test="${isFree eq true }">
												<div class="fc-normal-05-m system-content-bold">
													<span class="fc-normal-06-m"><spring:message
															code="label.ch0801.free.choosecard"></spring:message> </span>
												</div>
											</c:if>
											<div>
												<div class="fc-normal-05-m system-content-bold">
													<span><spring:message
															code="label.cg0801.own.friendpoints"></spring:message></span> <span
														class="fc-content-03"> <c:out
															value="${player.friendPoints}"></c:out>
													</span>
												</div>
											</div>
										</div>
									</c:when>
									<c:when
										test="${cardPackageItem.type eq 'GENERAL' && cardPackageItem.isRequireSilverCoin eq true}">
										<div class="generaltype-message-slivercoin require-silver-count">
											<div>
												<div class="fc-normal-05-m system-content-bold">
													<span><spring:message
															code="label.cg0801.require.silvercoin"></spring:message></span>
													<span class="fc-content-03"> <c:out
															value="${cardPackageItem.requireScoinCount}"></c:out>
													</span>
												</div>
											</div>
											<div>
												<div class="fc-normal-05-m system-content-bold">
													<span><spring:message
															code="label.cg0801.own.silvercoin"></spring:message></span> <span
														class="fc-content-03"> <c:out
															value="${player.silverCoin}"></c:out>
													</span>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="othertype-message">
											<div>
												<div class="fc-normal-05-m system-content-bold">
													<span><spring:message
															code="label.cg0801.require.gcoincount"></spring:message></span>
													<span class="fc-content-03"> <c:out value="${cardPackageItem.requireGcoinCount}"></c:out></span> 
													<span><spring:message code='lable.cg0801.zuanshi'></spring:message></span>
													<span><spring:message
															code="label.cg0801.or"></spring:message></span>
													<span class="fc-content-03"> <span><c:out
																value="${cardPackageItem.requireTicketCount}"></c:out></span> <span><spring:message
																code="label.cg0801.unit"></spring:message></span>
													</span>
													<span><spring:message
															code="label.cg0801.require.${cardPackageItem.type }"></spring:message></span>
												</div>
											</div>
											<div>
												<div class="fc-normal-05-m system-content-bold">
													<span><spring:message
															code="label.cg0801.require.own"></spring:message></span>
													<span class="fc-content-03"> <c:out value="${player.goldCoin}"></c:out></span>
													<span><spring:message code='lable.cg0801.zuanshi'></spring:message></span>
													<span>/</span>
													<span class="fc-content-03">
													
														 <c:if test="${not empty playerCardTicket }">
																<span><c:out value="${playerCardTicket.count}"></c:out></span>
														</c:if> 
														<c:if test="${empty playerCardTicket }">
																<span>0</span>
														</c:if> 
														<span><spring:message code="label.cg0801.unit"></spring:message></span>
													</span> 
													<span><spring:message code="label.cg0801.require.${cardPackageItem.type }"></spring:message></span>
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
								<div class="buttons">
									<c:choose>
										<c:when test="${cardPackageItem.type=='GENERAL' }">
											<div class="generaltype card-package-type">
												<div>
													<!-- 抽取卡包  -->
													<c:if test="${ cardPackageItem.overTopCount == false}">
														<c:if test="${cardPackageItem.isButtonGray == true}">
															<c:if test="${cardPackageItem.isRequireSilverCoin==true}">
																<img class="tips_popup clickTone1"
																	message="<spring:message code="label.cg0801.silvernotenough"></spring:message>"
																	src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
															</c:if>
															<c:if
																test="${cardPackageItem.isRequireSilverCoin== false}">
																<img class="tips_popup clickTone1"
																	message="<spring:message code="label.cg0801.friendpointnotenough"></spring:message>"
																	src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
															</c:if>
														</c:if>
														<c:if test="${cardPackageItem.isButtonGray == false}">
															<img
																src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>"
																onclick='location.href="<p:fullurl value="/cg0801/cg080105/extract/${cardPackageItem.cardPackageCount}/${cardPackageItem.id}/${cardPackageItem.isRequireSilverCoin}/${isFree }"/>"'>
														</c:if>
													</c:if>
													<c:if test="${cardPackageItem.overTopCount == true }">
														<c:if test="${cardPackageItem.cardPackageCount == '10' }">
															<img class="tips_popup clickTone1"
																	message="<spring:message code='label.cg0801.cardcountsupten'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
																src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
														</c:if>
														<c:if test="${cardPackageItem.cardPackageCount == '1' }">
															<img class="tips_popup clickTone1" src="<p:localurl value='/resources/images/buttons/zhaomu-green.png'/>"
																message="<spring:message code='label.cg0801.cardcountsup'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"					
											                 />					
														</c:if>

													</c:if>
												</div>

												<div>
													<!-- 查看卡包  -->
													<img
														src="<p:localurl value="/resources/images/buttons/chakanyongbing-blue.png"/>"
														class='clickTone1'
														onclick='location.href="<p:fullurl value="${checkAction}"/>"'>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="othertype">
												<div>
													<!-- 购买  -->
													<img
														src="<p:localurl value="/resources/images/buttons/goumaikaquan-blue.png"/>"
														onclick='location.href="<p:fullurl value="/cg0901/cg090104/index"/>"'
														class="clickTone1">
												</div>
												<div>
													<!-- 抽取卡包  -->
													<c:if test="${ cardPackageItem.overTopCount == false}">
														<c:if test="${cardPackageItem.isButtonGray == true}">
															<c:if test="${cardPackageItem.cardPackageCount == '10' }">
																<img class="tips_popup clickTone1"
																	message="<spring:message code="label.cg0801.ticketnotenough.${cardPackageItem.type }"></spring:message>"
																	src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
															</c:if>
															<c:if test="${cardPackageItem.cardPackageCount == '1' }">
																<img class="tips_popup clickTone1"
																	message="<spring:message code="label.cg0801.ticketnotenough.${cardPackageItem.type }"></spring:message>"
																	src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
															</c:if>
														</c:if>
														<c:if test="${cardPackageItem.isButtonGray == false}">
															<img
																src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>"
																class='clickTone1'
																onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/${cardPackageItem.cardPackageCount}/${cardPackageItem.id}/${cardPackageItem.isRequireSilverCoin}/${isFree }"/>'">
														</c:if>
													</c:if>
													<c:if test="${cardPackageItem.overTopCount == true }">
														<c:if test="${cardPackageItem.cardPackageCount == '10' }">
															<img class="tips_popup clickTone1"
																message="<spring:message code='label.cg0801.cardcountsupten'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
																src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
														</c:if>
														<c:if test="${cardPackageItem.cardPackageCount == '1' }">
															<img class="tips_popup clickTone1"
																message="<spring:message code='label.cg0801.cardcountsup'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
																src="<p:localurl value="/resources/images/buttons/zhaomu-green.png"/>">
														</c:if>

													</c:if>
												</div>
												<div>
													<!-- 查看卡包  -->
													<img
														src="<p:localurl value="/resources/images/buttons/chakanyongbing-blue.png"/>"
														onclick='location.href="<p:fullurl value="${checkAction}"/>"'
														class="clickTone1">
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</c:if>

</div>
