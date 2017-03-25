


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
var readyFlag = false;

function changeCardGroup(form,chapterId,playerTaskSectionId){
	var selectId=form.selectCardGroup.options[form.selectCardGroup.selectedIndex].value;
	form.action = '<p:fullurl value="/cg0201/cg020107/updateCardGroup"/>' +'/'+chapterId + '/' + selectId + '/' + playerTaskSectionId;
	form.submit(); 
}

function fightClick(obj) {
	
		var bossName = "${taskChapter.id}"+"${taskChapter.name}";	
		//add by ma_li  talking game 分析数据
		var bossData = "{\"pveTaskSectionName\":\""+bossName+"\"}";
		JSInterface.startPlayerTaskSection(bossData);
	
		if(!readyFlag)
			return false;
		var that = obj;
		var func = that.onclick;
		that.onclick = "";
		$(that).addClass("button_gray");
		var bossAttack = $("#bossAttack").val();
		var bossLife = $("#bossLife").val();
		var cardGroupTotalAttack = $("#cardGroupTotalAttack").val();
		var playerLife = $("#playerLife").val();
		var chapterId = $("#chapterId").val();
		var attackNum = $("#attackNum").val();
		$("#selectCardGroup").attr("disabled","disabled");					
		$("#editDiv").attr("style","display:none");
		$("#editDivDisabled").attr("style","display:block;");
		$("#editFightGroup").attr("class","button_gray");
		var playerTaskSectionId = $("#playerTaskSectionId").val();
		var url=$("#attackForm").attr('action')+ bossAttack +'/'+bossLife+'/'+cardGroupTotalAttack+'/'+playerLife+'/'+chapterId+'/'+attackNum+'/' + playerTaskSectionId +'/' ;
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(url, randomParms, function(viewdata) {
			if (viewdata != null) {
				if (viewdata.result && viewdata.data != null) {
					var fightProcess = viewdata.data.fightProcess.split(",");
					var len = fightProcess.length;
					var idx = 0;
					(function doAnimator() {
						if((idx + 1) >= len) {
							//音效    ma_li  停止播放 PVE中boss出现音乐 
							JSInterface.clickTone(206);
							
							if(viewdata.data.fightResult=="FAILURE"){						
								window.location.href = '<p:fullurl value="/cg0201/cg020110/index/"/>' + viewdata.data.jumpUrlParameter;
							}else if(viewdata.data.fightResult=="WIN"){
								window.location.href = '<p:fullurl value="/cg0201/cg020108/index/"/>' + viewdata.data.jumpUrlParameter;
							}else if(viewdata.data.fightResult=="UPGRADE"){
								window.location.href = '<p:fullurl value="/cg0201/cg020111/index/"/>' + viewdata.data.jumpUrlParameter;
							}
							return;
						}
						$animation.executeMission('.executeMission',function(){
							var target = $('.executeMission .contentOper');
							$("#bossLeftLife").html(fightProcess[idx].split("|")[0]);
							updateProcessBar(0,[fightProcess[idx].split("|")[1]]);
							setTimeout(function() {
							target.css3Animate({y:70,timingFunction:'ease-in',time:'150ms',callback:function(){
									$("#playerLeftLife").html(fightProcess[idx+1].split("|")[0]);
									updateProcessBar(1,[fightProcess[idx+1].split("|")[1]]);
								target.css3Animate({y:0,timingFunction:'ease-out',time:'150ms',callback:function() {
										idx += 2;
										doAnimator.call();
								}});
							}});
							},800);
						});
					})();
				}
			var bossName = "${taskChapter.id}"+"${taskChapter.name}";	
			//add by ma_li   talking game 分析数据
			var bossData2 = "{\"pveTaskSectionName\":\""+bossName+"\"}";
			JSInterface.finishPlayerTaskSection(bossData2);
			
			} else {
				$(that).removeClass("button_gray");
			}
		}, "json");
}

$(document).ready(function(){
	
	readyFlag = true;
	
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		/* //音效  ma_li  停止PVE背景音乐
		JSInterface.clickTone(208); */
		//音效  ma_li  开始BOSS出现音乐
		JSInterface.clickTone(106);
	}, false);
	
});	
	
</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message
				code="label.CG020107.title"></spring:message></span>
	</div>
	<div class=" center-site attack-chapter-padding">
		<span class="fc-content-02"><spring:message
				code="label.CG020107.di"></spring:message> <c:out
				value="${taskChapter.id}"></c:out> <spring:message
				code="label.CG020107.chapter"></spring:message></span> <span
			class="fc-content-02"><c:out value="${taskChapter.name}"></c:out></span>
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
			<div class="panelB-body panelB07-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimageboss">
					<div class="boss-pic-style">
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
		action="<p:fullurl value="/cg0201/cg020107/fight/" />" method="get">
		<input type="hidden" id="bossAttack"
			value="<c:out value="${bossViewData.bossAttack}"></c:out>" /> <input
			type="hidden" id="bossLife"
			value="<c:out value="${bossViewData.bossLife}"></c:out>" /> <input
			type="hidden" id="playerLife"
			value="<c:out value="${bossViewData.playerLife}"></c:out>" /> <input
			type="hidden" id="cardGroupTotalAttack"
			value="<c:out value="${bossViewData.cardGroupTotalAttack}"></c:out>" />
		<input type="hidden" id="chapterId"
			value="<c:out value="${bossViewData.chapterId}"></c:out>" /> <input
			type="hidden" id="attackNum"
			value="<c:out value="${bossViewData.attackNum}"></c:out>" /> <input
			type="hidden" id="playerTaskSectionId"
			value="<c:out value="${playerTaskSectionId}"></c:out>" />
		<div class="pro-bars clearfix">
			<div>
				<div class="boss-name">BOSS：</div>
				<div class="boss-pro-width">
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
				<div class="boss-name">
					<spring:message code="label.CG020107.self"></spring:message>：
				</div>
				<div class="boss-pro-width">
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

		<div id="fight" class="fight-button" onclick="fightClick(this)">
			<!--  <a href="<p:fullurl value="/cg0201/cg020107/fight/${bossViewData.bossAttack}/${bossViewData.bossLife}/${bossViewData.cardGroupTotalAttack}/${bossViewData.playerLife}/${bossViewData.chapterId}/${selectedGroupId}/${bossViewData.attackNum}/"/>">
		<img  src='<p:localurl value="/resources/images/buttons/gongji-green-z.png"/>'>
		</a>-->
			<img class="clickTone1"
				src='<p:localurl value="/resources/images/buttons/gongji-green-z.png"/>'>
		</div>
	</form>
	<div class="cardGroupDiv">
		<div>
			<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA18-height"></div>
				<div class="panelA-footer"></div>
				<div class="border-content-noleft">
					<div class="cardgroup-info">
						<div class="sel-cardgroup">
							<form method="get">
								<select id="selectCardGroup" <c:out value="${disabled}"></c:out>
									class="selectboxdiv" name="selectCardGroup"
									onchange="changeCardGroup(this.form,<c:out value="${taskChapter.orderNumber}"></c:out>,'<c:out value="${playerTaskSectionId}"></c:out>')">
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
							<div class="require-count">
								<div class="fc-normal-01-l paddingtop5">
									<span><spring:message code="label.CG020107.require"></spring:message>：</span>
									<span class="fc-content-02"><c:out
											value="${bossViewData.cardGroupAttackRequire}"></c:out></span> <span
										class="fc-normal-05-l">/</span> <span class="fc-normal-05-l"><c:out
											value="${bossViewData.playerRealAttackPower}"></c:out></span>
								</div>
								<div class="attack-message-padding">
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
									src='<p:localurl value="/resources/images/buttons/bianjizhenrong-green.png"/>' />
							</div>
						</div>

					</div>


					<div class="cardgroup-pic" style="width:98%">
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