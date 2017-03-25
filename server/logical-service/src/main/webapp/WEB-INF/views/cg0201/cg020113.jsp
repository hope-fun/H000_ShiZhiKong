<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="task" tagdir="/WEB-INF/tags/task"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
//申请好友
function apply_friend() {
	var buttonEvent = $(".apply_green");
	//去除点击事件
	$(buttonEvent).attr('onclick',"");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post($("#applyFriend_url").val() + $("#playerId").val(), randomParms, function(message) {
		if (message != null) {
			if (message.result) {
				
				buttonEvent.addClass("button_gray");
				
			} else if (message.data != null && message.data == "ownMax") 
			{	
				//自己战友人数已达上限
				kpyxTips($("#apply_message").val());
				$(buttonEvent).attr('onclick',"apply_friend()");
				return false;
			} else if(message.data != null && message.data == "otherMax")
			{	
				//对方战友人数已达上限
				kpyxTips($("#max_message").val());
				$(buttonEvent).attr('onclick',"apply_friend()");
				return false;
			}
		}
	}, "json");
	
}



</script>
<div class="content">
	<input type="hidden" id="applyFriend_url" value="<p:fullurl value="/cg0201/cg020113/applyFriend/" />" />
	<input type="hidden" id="playerId" value="${player.id }" />
	<input type="hidden" id="apply_message" value="<spring:message code="label.cg0501.playertag.applymessage"></spring:message>" />
	<input type="hidden" id="max_message" value="<spring:message code="label.cg0501.playertag.maxmessage"></spring:message>" />
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020113.title"></spring:message></span>
	</div>
	

	<div class="panel-02">
			<div class="<cssutils:cardCamp campType='${player.camp}'/>">
				<div class="panel-header">
					<div class="rivail-info"><span><c:out value="${player.name }" /></span></div>
					
					<div class="small-rank-pic">
						<c:if test="${ranking > 0 }">
							<img src="<p:localurl value="/resources/images/small-ranking-${ranking}.png"/>" />
						</c:if>
					</div> 
					
					<div class="vip-level-pic">
						<c:if test="${ player.vipLevel > 0 }">
							<img src="<p:localurl value="/resources/images/viplevel/${player.vipLevel}.png"/>" />
						</c:if>
					</div>
					<div class="clearfix"></div>
				</div>
				
				<div class="panel-body">
					<div class="card-major fc-normal-03-m">
						<div class="middle-card-width">
							<div class="card-major-image">
								<c:if test="${not empty playerCard.cardId }" >
									<img alt="" src="<p:cardImg type="middle" id="${playerCard.cardId }"></p:cardImg>"/>
								</c:if>
								<c:if test="${empty playerCard.cardId }" >
									<img />
								</c:if>
							</div>
							<div class="card-major-image-equipment middel-equips-width">
								<div >
									<c:if test="${not empty playerCard.playerEquipmentId1 }" >
										<img src="<p:equipImg type="middle" id="${playerCard.playerEquipment1.equipmentId }" />" />
									</c:if>
									<c:if test="${empty playerCard.playerEquipmentId1 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
									</c:if>
								</div>
								<div>
									<c:if test="${not empty playerCard.playerEquipmentId2 }" >
										<img src="<p:equipImg type="middle" id="${playerCard.playerEquipment2.equipmentId }" />" />
									</c:if>
									<c:if test="${empty playerCard.playerEquipmentId2 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
									</c:if>
								</div>
								<div>
									<c:if test="${not empty playerCard.playerEquipmentId3 }" >
										<img src="<p:equipImg type="middle" id="${playerCard.playerEquipment3.equipmentId }" />" />
									</c:if>
									<c:if test="${empty playerCard.playerEquipmentId3 }" >
										<img src="<p:localurl value="/resources/images/middle-equipment.png"/>"/>
									</c:if>
								</div>
								<div></div>
							</div>
						</div>
						<div class="middle-info-width">
							<div class="card-major-desc">
								<div class="card-major-data">
									<div class="icon icon-level">
										<span><spring:message code="label.cg0501.middleinfo.level"></spring:message>：</span>
										<span>
											<c:if test="${not empty player.level }"><c:out value="${player.level}" /></c:if>
											<c:if test="${empty player.level }">0</c:if>
										</span>
									</div>
									<div class="icon icon-comrades">
										<span><spring:message code="label.cg0501.middleinfo.friend"></spring:message>：</span>
										<span>
											<c:if test="${not empty player.friendsNum }"><c:out value="${player.friendsNum}" /></c:if>
											<c:if test="${empty player.friendsNum }">0</c:if>/
											<c:if test="${not empty player.friendsMax }"><c:out value="${player.friendsMax}" /></c:if>
											<c:if test="${empty player.friendsMax }">0</c:if>
										</span>
									</div>
									<div class="icon icon-fight-result">
										<span><spring:message code="label.cg0501.middleinfo.combat"></spring:message>：</span>
										<span class="fc-normal-02-m">
											<c:out value="${(not empty player.attackWinTimes ? player.attackWinTimes : 0) + 
													(not empty player.defenceWinTimes ? player.defenceWinTimes : 0) }" />
										</span>
										
										<span><spring:message code="label.cg0501.middleinfo.win"></spring:message></span>
										<span style="color: yellow;">
											<c:out value="${(not empty player.attackLoseTimes ? player.attackLoseTimes : 0) + 
													(not empty player.defenceLoseTimes ? player.defenceLoseTimes : 0) }" />
										</span>
										<span><spring:message code="label.cg0501.middleinfo.fail"></spring:message></span>
									</div>
									<div>
										<span class="font-size-18bt"><spring:message code="label.cg0501.middleinfo.cardnum"></spring:message>：</span>
										<span>
											<c:if test="${not empty player.cardsCount }"><c:out value="${player.cardsCount}" /></c:if>
											<c:if test="${empty player.cardsCount }">0</c:if>/
											<c:if test="${not empty player.cardsMax }"><c:out value="${player.cardsMax}" /></c:if>
											<c:if test="${empty player.cardsMax }">0</c:if>
										</span>
									</div>
									<div class="apply-fight-buttons">
										<div style="width:45%;float:left;">
											<c:if test="${isCanApplay == true }" >
												<img class="apply_green clickTone1" onclick="apply_friend()" src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>"/>											
											</c:if>
											<c:if test="${isCanApplay == false }" >
												<img class="button_gray" src="<p:localurl value="/resources/images/buttons/shenqinghaoyou-blue.png"/>"/>
											</c:if>
										</div>
										<div style="width:45%;float:right;">
											<img class="fight_green clickTone1" onclick="location.href='<p:fullurl value="/cg0401/cg040106/pveToPvp/${player.id}/false/${playerTaskSectionId}"/>';event.preventDefault();"  src="<p:localurl value="/resources/images/buttons/juedou-green.png"/>"/>
										</div>
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

	  
	<div class="back-pve-button-cg020113">
		<img class="clickTone1" onclick="location.href='<p:fullurl value="/cg0201/cg020104/index/${playerTaskSectionId}"/>'" src="<p:localurl value="/resources/images/buttons/back-pve.png"/>"/>
	</div>
</div>