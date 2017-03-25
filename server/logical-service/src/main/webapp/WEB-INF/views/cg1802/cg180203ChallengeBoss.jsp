<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script>
	function changeCardGroup(form, raidId) {
		var selectId = form.selectCardGroup.options[form.selectCardGroup.selectedIndex].value;
		form.action = '<p:fullurl value="/cg1802/cg180203/updateCardGroup"/>'
				+ '/' + raidId + '/' + selectId;
		form.submit();
	}
	
	 window.onload = function() {  		 
		 document.addEventListener('WebViewJavascriptBridgeReady', function(event) {				
			//add by ma_li 发送数据到客户端，talking game					
				data = "{\"consumableId\":\""+ "${ticketName}"+"\",\"number\":"+ "${costCount}" +"}";
				JSInterface.useConsumble(data);		
		}, false);
	 } 
	
	$(document)
			.ready(
					
					function() { 
						
						//$(function() {
						//href="<p:fullurl value="/cg0201/cg020107/fight/${bossViewData.bossAttack}/${bossViewData.bossLife}/${bossViewData.cardGroupTotalAttack}/${bossViewData.playerLife}/${bossViewData.chapterId}/${bossViewData.attackNum}/"/>">
						$("#fight")
								.click(										
										function() {
											//talking data											
											var bossId="${raid.description}"+"${raid.name}";
											var bossData2 = "{\"startChallengeBossName\":\""+bossId+"\"}";
										 	JSInterface.startChallengeBoss(bossData2);	
										 	
											var func = arguments.callee;
											var that = $(this);
											that.unbind('click');
											that.addClass("button_gray");
											$("#selectCardGroup").attr(
													"disabled", "disabled");
											$("#editDiv").attr("style",
													"display:none");
											$("#editDivDisabled").attr("style",
													"display:block;");
											$("#editFightGroup").attr("class",
													"button_gray");
											var bossAttack = $("#bossAttack")
													.val();
											var bossLife = $("#bossLife").val();
											var cardGroupTotalAttack = $(
													"#cardGroupTotalAttack")
													.val();
											var playerLife = $("#playerLife")
													.val();
											var attackNum = $("#attackNum")
													.val();
											var raidId = $("#raidId").val();
											var url = $("#attackForm").attr(
													'action')
													+ bossAttack
													+ '/'
													+ bossLife
													+ '/'
													+ cardGroupTotalAttack
													+ '/'
													+ playerLife
													+ '/'
													+ raidId
													+ '/'
													+ attackNum
													+ '/';
											$
													.post(
															url,
															null,
															function(viewdata) {
																if (viewdata != null) {
																	var fightProcess = viewdata.data.fightProcess
																			.split(",");
																	var len = fightProcess.length;
																	var idx = 0;
																	(function fightBoss() {
																		if ((idx + 1) >= len) {
																			if (viewdata.result
																					&& viewdata.data != null) {
																				/* //音效  ma_li  停止星际之门背景音乐
																				JSInterface.clickTone(218); */
																				
																				if (viewdata.data.fightResult == "FAILURE") {
																					window.location.href = '<p:fullurl value="/cg1802/cg180205/index/"/>'
																							+ viewdata.data.jumpUrlParameter;
																				} else if (viewdata.data.fightResult == "WIN") {
																					window.location.href = '<p:fullurl value="/cg1802/cg180204/index/"/>'
																							+ viewdata.data.jumpUrlParameter;
																				}																			
																				//talking data	
																				var bossId="${raid.description}"+"${raid.name}";																					
																				var bossData = "{\"finishChallengeBossName\":\""+bossId+"\"}";
																				JSInterface.finishChallengeBoss(bossData);
																				
																				
																			}
																		}
																		$("#attackNum")
																				.val(
																						attackNum++);
																		$animation
																				.executeMission(
																						'.executeMission',
																						function() {
																							var target = $('.executeMission .contentOper');
																							$(
																									"#bossLeftLife")
																									.html(
																											fightProcess[idx]
																													.split("|")[0]);
																							updateProcessBar(
																									0,
																									[ fightProcess[idx]
																											.split("|")[1] ]);
																							setTimeout(
																									function() {
																										target
																												.css3Animate({
																													y : 70,
																													timingFunction : 'ease-in',
																													time : '150ms',
																													callback : function() {
																														$(
																																"#playerLeftLife")
																																.html(
																																		fightProcess[idx + 1]
																																				.split("|")[0]);
																														updateProcessBar(
																																1,
																																[ fightProcess[idx + 1]
																																		.split("|")[1] ]);
																														target
																																.css3Animate({
																																	y : 0,
																																	timingFunction : 'ease-out',
																																	time : '150ms',
																																	callback : function() {
																																		idx += 2;
																																		fightBoss
																																				.call();
																																	}
																																});
																													}
																												});
																									},
																									800);
																						});
																	})();
																} else {
																	that
																			.removeClass("button_gray");
																}
															}, "json");
										});
					});
</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message
				code="label.CG020107.title"></spring:message></span>
	</div>
	<div class=" center-site padding-style12">
		<span class="fc-content-02"><c:out value="${raid.description}"></c:out></span>
		<span class="fc-content-02"><c:out value="${raid.name}"></c:out></span>
	</div>
	<div class="executeMission">
		<img class="lightOper"
			src="<p:localurl value='/resources/images/animation/light.png' />" />
		<div class="contentOper">
			<img
				src='<p:localurl value="/resources/images/boss/${bossViewData.bossId}.png"/>' />
			<div class="executingMask"></div>
		</div>
	</div>
	<div class="tipinfodiv">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB07-height panelB-height-cg1802"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimageboss">
					<div class="card-img-style">
						<img
							src='<p:cardImg type="small" id="${bossViewData.cardId}"></p:cardImg>' />
					</div>
				</div>
				<div class="tipinfomessage">
					<div>
						<span><c:out value="${bossViewData.description}"></c:out></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form id="attackForm"
		action="<p:fullurl value="/cg1802/cg180203/fight/" />">

		<input type="hidden" id="bossAttack"
			value="<c:out value="${bossViewData.bossAttack}"></c:out>" /> <input
			type="hidden" id="bossLife"
			value="<c:out value="${bossViewData.bossLife}"></c:out>" /> <input
			type="hidden" id="playerLife"
			value="<c:out value="${bossViewData.playerLife}"></c:out>" /> <input
			type="hidden" id="cardGroupTotalAttack"
			value="<c:out value="${bossViewData.cardGroupTotalAttack}"></c:out>" />
		<input type="hidden" id="raidId"
			value="<c:out value="${raid.id}"></c:out>" /> <input type="hidden"
			id="attackNum"
			value="<c:out value="${bossViewData.attackNum}"></c:out>" />
		<div class="pro-bars clearfix">
			<div>
				<div class="boss-info-style">BOSS：</div>
				<div class="boss-pro-style">
					<div id="bossprocessbar" class="processing-bar-blue fc-normal-01-m"
						processbar="<c:out value="${bossViewData.bossLeftPercent}"></c:out>"></div>
					<div class="pro-bar-num clearfix">
						<span id="bossLeftLife"><c:out
								value="${bossViewData.bossLeftLife}"></c:out></span> <span>/</span> <span
							id="bossLife"><c:out value="${bossViewData.bossLife}"></c:out></span>
					</div>

				</div>
			</div>
			<div>
				<div class="boss-info-style">
					<spring:message code="label.CG020107.self"></spring:message>：
				</div>
				<div class="boss-pro-style">
					<div class="processing-bar-green fc-normal-01-m"
						processbar="<c:out value="${bossViewData.playerLeftPercent}"></c:out>"></div>
					<div class="pro-bar-num clearfix">
						<span id="playerLeftLife"><c:out
								value="${bossViewData.playerLeftLife}"></c:out></span> <span>/</span> <span
							id="playerLife"><c:out value="${bossViewData.playerLife}"></c:out></span>
					</div>

				</div>
			</div>
		</div>

		<div id="fight" class="attack-button-style">
			<img class="clickTone1"
				src='<p:localurl value="/resources/images/buttons/gongji-green-z.png"/>'>
		</div>
	</form>
	<div class="attack-button-style">
		<spring:message code="label.cg1802.ticketnum"></spring:message>
		:
		<c:out value="${consumableCount}"></c:out>
	</div>
	<div class="cardGroupDiv">
		<div>
			<div class="borderPanel" style="width: 100%;">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA18-height"></div>
				<div class="panelA-footer"></div>
				<div class="border-content-noleft">
					<div class="cardgroup-info">
						<div class="raid-width">
							<form method="get">
								<select id="selectCardGroup" class="selectboxdiv"
									name="selectCardGroup"
									onchange="changeCardGroup(this.form,'<c:out value="${raid.id}"></c:out>')">
									<c:forEach items="${playerCardGroupList}" var="playerCardGroup">
										<option value="<c:out value="${playerCardGroup.id}"></c:out>"
											<c:if test="${fn:contains(playerCardGroup.id, selectedGroupId)}">selected</c:if>>
											<c:out value="${playerCardGroup.name}"></c:out>
										</option>
									</c:forEach>
								</select>
							</form>
						</div>
						<div>
							<div class="player-attack-power">
								<div class="fc-normal-01-l paddingtop5">
									<span><spring:message code="label.CG020107.require"></spring:message>：</span>
									<span class="fc-content-02"><c:out
											value="${bossViewData.cardGroupAttackRequire}"></c:out></span> <span
										class="fc-normal-05-l">/</span> <span class="fc-normal-05-l"><c:out
											value="${bossViewData.playerRealAttackPower}"></c:out></span>
								</div>
								<div class="padding-style5">
									<span class="fc-normal-02-l"><spring:message
											code="label.CG020107.attack"></spring:message>：</span> <span
										class="fc-content-02"><c:out
											value="${bossViewData.cardGroupTotalAttack}"></c:out></span>

								</div>


							</div>
							<div class="cardgroupbuttonDiv" id="editDiv">
								<img class="clickTone1" id="editFightGroup"
									src='<p:localurl value="/resources/images/buttons/bianjizhenrong-green.png"/>'
									onclick="location.href='<p:fullurl value="/cg0303/cg030301/index"/>';event.preventDefault();" />
							</div>
							<div class="cardgroupbuttonDiv" id="editDivDisabled"
								style="display: none">
								<img class="button_gray"
									src='<p:localurl value="/resources/images/buttons/bianjizhenrong-green.png"/>'>
							</div>
						</div>

					</div>


					<div class="cardgroup-pic" style="width:98%;">
						<c:if test="${not empty playerCardsList }">
							<c:forEach items="${playerCardsList}" var="playerCard">
								<div class="card-width">
									<div class="card-pic card-pic-width">
										<div class="card-preview-border">
											<c:if test="${ not empty playerCard.cardId }">
												<img
													src='<p:cardImg type="small" id="${playerCard.cardId}"></p:cardImg>' />
											</c:if>
										</div>
									</div>
									<div class="equipment-all equipment-all-width">
										<div class="equipmentContainer">
											<c:if test="${ not empty playerCard.playerEquipmentId1 }">
												<div class="propertyNoImage">
													<img alt=""
														src="<p:imgPath id='${playerCard.playerEquipmentId1}' folder='equipments' type='small' />" />
												</div>
											</c:if>
											<c:if test="${ empty playerCard.playerEquipmentId1 }">
												<div class="propertyImage"></div>
											</c:if>

											<c:if test="${ not empty playerCard.playerEquipmentId2 }">
												<div class="propertyNoImage">
													<img alt=""
														src="<p:imgPath id='${playerCard.playerEquipmentId2}' folder='equipments' type='small' />" />
												</div>
											</c:if>
											<c:if test="${ empty playerCard.playerEquipmentId2 }">
												<div class="propertyImage"></div>
											</c:if>

											<c:if test="${ not empty playerCard.playerEquipmentId3 }">
												<div class="propertyNoImage">
													<img alt=""
														src="<p:imgPath id='${playerCard.playerEquipmentId3}' folder='equipments' type='small' />" />
												</div>
											</c:if>
											<c:if test="${ empty playerCard.playerEquipmentId3 }">
												<div class="propertyImage"></div>
											</c:if>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<c:forEach var="i" begin="1" end="${number}">
							<div class="card-preview-style">
								<div class="card-pic card-pic-width">
									<div class="card-preview-border">
										<img
											src="<p:localurl value="/resources/images/scard-smallcard.png"/>"
											width="100%" height="100%" />
									</div>
								</div>
								<div class="equipment-all equipment-all-width">
									<div class="equipmentContainer">
										<div class="propertyImage"></div>
										<div class="propertyImage"></div>
										<div class="propertyImage"></div>
									</div>
								</div>
							</div>
						</c:forEach>

						<div></div>


					</div>
				</div>
			</div>
		</div>
	</div>
</div>