<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/main.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>">
	
<c:set var="canAddFriendsNum" value="${(playerVO.friendsMax - playerVO.friendsNum)<0 ? 0 : (playerVO.friendsMax - playerVO.friendsNum) }"/>
<c:set var="restAttrPoints" value="${playerVO.restAttrPoints<0 ? 0 : playerVO.restAttrPoints }"/>

<c:set var="actionPowerMax" value="${playerVO.actionPowerMax<0 ? 0 : playerVO.actionPowerMax }"></c:set>
<c:set var="attackPowerMax" value="${playerVO.attackPowerMax<0 ? 0 : playerVO.attackPowerMax }"></c:set>
<c:set var="defencePowerMax" value="${playerVO.defencePowerMax<0 ? 0 : playerVO.defencePowerMax }"></c:set>

<script type="text/javascript">
	str1 = "${actionPowerMax}"
	str2 = "${attackPowerMax}"
	str3 = "${defencePowerMax}"
	var len1 = str1.length
	var len2 = str2.length
	var len3 = str3.length
	var lenMax = len1;
	if(len2 > lenMax) 
		lenMax = len2
	if(len3 > lenMax)
		lenMax = len3
	var j = lenMax-len1
	for(var i=0; i<j; i++) {
		str1 = "&nbsp;" + str1
	}
	j = lenMax-len2
	for(var i=0; i<j; i++) {
		str2 = "&nbsp;" + str2
	}
	j = lenMax-len3
	for(var i=0; i<j; i++) {
		str3 = "&nbsp;" + str3
	}
	
	
	$(function() {
		$('.apply-button')
				.click(
						
						function() {
							//判断当前的canAddFriendsNum数量是否为0
							if(eval($("#canAddFriendsNum").html())<=0)
								{
									kpyxTips("<spring:message code='label.cg0501.playertag.applymessage'></spring:message>");
								}
							var self = $(this);
							var playerId = $(this).attr('playerId');
							var url = '<p:fullurl value="/cg2001/cg200132/friendapply/" />'
									+ playerId;

							$
									.ajax({
										url : url,
										type : 'GET',
										jsonType : 'json',
										success : function(data) {
											var data = JSON.parse(data);
											if (!data.result) {
												if (data.data == 'ownMax') {
													kpyxTips("<spring:message code='label.cg0501.playertag.applymessage'></spring:message>");
												} else {
													kpyxTips("<spring:message code='label.cg0501.playertag.maxmessage'></spring:message>");
												}
											}else{
												$("#button_" + playerId)
														.removeClass('apply-button')
														.addClass('button_gray');
												self.unbind('click');
											//	var canAddFriendsNum = $("#canAddFriendsNum").html()-1;
											//	 $("#canAddFriendsNum").html(canAddFriendsNum);
											}
										},
										error : function(e) {
											console.log(e);
										}
									});
						});

	});
	
	
	function submitForm(index) {
		if(index==0) kpyxConfirm("<spring:message code='label.cg010105.fenpei'></spring:message>"+$("select[name='actionPowerDistribution']").val()+"<spring:message code='label.cg010105.xingdongnengliangdian'></spring:message>",function (){		
			document.forms[0].submit();
			
		});
		if(index==1) kpyxConfirm("<spring:message code='label.cg010105.fenpei'></spring:message>"+$("select[name='attackPowerDistribution']").val()+"<spring:message code='label.cg010105.zhandounengliangnengliangdian'></spring:message>",function (){
			 document.forms[1].submit();
		});
		
		if(index==2) kpyxConfirm("<spring:message code='label.cg010105.fenpei'></spring:message>"+$("select[name='defencePowerDistribution']").val()+"<spring:message code='label.cg010105.hudunliangnengliangdian'></spring:message>",function (){
			 document.forms[2].submit();
		});	
	
	}
	
	
	
</script>
<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg010105.nenglifenpei"></spring:message></span>
	</div>
	
	<div class="panelA-header"></div>
	<div class="panelA-body panelA22-height">
		<div class="lableText">
			<span class="fc-normal-05-l"><spring:message code="label.cg010105.kefenpeidianshu"></spring:message></span> <span><c:out value="${restAttrPoints }"/></span>
		</div>
		
		<div class="lableText">
			<div>
				<div class="cg010105lableleft">
					<form action="<p:fullurl value="/cg0101/cg010105/index/${fromPVE}"/>" method="post">
						<span class="fc-normal-05-l"><spring:message code="label.cg010105.xingdongnengliang"></spring:message></span> 
						<span id="str1"></span> 
						<script type="text/javascript">
							$("#str1").html(str1)
						</script>
						<select name="actionPowerDistribution">
							<c:forEach var="iActionPower" begin="0" end="${restAttrPoints }" step="1">
								<option><c:out value="${restAttrPoints - iActionPower }"/></option>	
							</c:forEach>
						</select>
					</form>
					<span></span>
				</div>
				<div class="commonPading01 cg010105lableright" id="button-tianjia">
					<c:choose>
						<c:when test="${restAttrPoints>0 }">							
								<img class="clickTone1" onclick="submitForm(0)" src="<p:localurl value="/resources/images/buttons/tianjia-green.png"/>" />							
						</c:when>
						<c:otherwise>
							<a class="button_gray">
								<img src="<p:localurl value="/resources/images/buttons/tianjia-green.png"/>" />
							</a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="fc-normal-04-m"><spring:message code="label.cg010105.xingdongnengliang.desc"/></div>
			</div>
		</div>
		
		<div class="lableText">
			<div>
				<div class="cg010105lableleft">
					<form action="<p:fullurl value="/cg0101/cg010105/index/${fromPVE}"/>" method="post" name="123">
						<span class="fc-normal-05-l"><spring:message code="label.cg010105.zhandounengli"></spring:message></span> 
						<span id="str2"></span>
						<script type="text/javascript">
							$("#str2").html(str2)
						</script>
						<select name="attackPowerDistribution">
							<c:forEach var="iAttackPower" begin="0" end="${restAttrPoints }" step="1">
								<option><c:out value="${restAttrPoints - iAttackPower }"/></option>	
							</c:forEach>
						</select>
					</form>
					<span></span>
				</div>
				<div class="commonPading01 cg010105lableright">
					<c:choose>
						<c:when test="${restAttrPoints>0 }">
						
								<img onclick="submitForm(1)" class="clickTone1" src="<p:localurl value="/resources/images/buttons/tianjia-green.png"/>" />
						</c:when>
						<c:otherwise>
							<a class="button_gray">
								<img src="<p:localurl value="/resources/images/buttons/tianjia-green.png"/>" />
							</a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="fc-normal-04-m"><spring:message code="label.cg010105.zhandounengli.desc"/></div>
			</div>
		</div>
		
		<div class="lableText">
			<div>
				<div class="cg010105lableleft">
					<form action="<p:fullurl value="/cg0101/cg010105/index/${fromPVE}"/>"
						method="post">
						<span class="fc-normal-05-l"><spring:message
								code="label.cg010105.hudunnengli"></spring:message></span> <span
							id="str3"></span>
						<script type="text/javascript">
							$("#str3").html(str3)
						</script>
						<select name="defencePowerDistribution">
							<c:forEach var="iDefencePower" begin="0" end="${restAttrPoints }"
								step="1">
								<option>
									<c:out value="${restAttrPoints - iDefencePower }" />
								</option>
							</c:forEach>
						</select>
					</form>
					<div class="clearfix"></div>
					<span></span>
				</div>
				<div class="commonPading01 cg010105lableright">
					<c:choose>
						<c:when test="${restAttrPoints>0 }">
							<img onclick="submitForm(2)" class="clickTone1"
								src="<p:localurl value="/resources/images/buttons/tianjia-green.png"/>" />

						</c:when>
						<c:otherwise>
							<a class="button_gray"> <img
								src="<p:localurl value="/resources/images/buttons/tianjia-green.png"/>" />
							</a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="fc-normal-04-m">
					<spring:message code="label.cg010105.hudunnengli.desc" />
				</div>
				<div style="padding-top: 20px;" class="fc-normal-03-m">
					<span><spring:message code="label.cg010105.gongjiqidong" /><span
						onclick="location.href='<p:fullurl value="/cg0303/cg030301/index"/>'"
						class="pointGroup"><spring:message
								code="label.cg010105.gongjizhenrong" /></span></span> <span><spring:message
							code="label.cg010105.fangyuqidong" /><span
						onclick="location.href='<p:fullurl value="/cg0303/cg03030101/index"/>'"
						class="pointGroup"><spring:message
								code="label.cg010105.fangyuzhenrong" /></span> </span>
				</div>
			</div>
			<div ></div>
		</div>
		
		<div class="promptText">
			<span class="fc-normal-04-m"><spring:message code="label.cg010105.zhanyou.desc"></spring:message></span>
			<span class="fc-normal-04-m" id="canAddFriendsNum">
				<c:out value="${canAddFriendsNum>0 ? canAddFriendsNum : 0 }"/>
			</span>
			<span class="fc-normal-04-m"><spring:message code="label.cg010105.zhanyou"></spring:message></span>
		</div>
	</div>
	<div class="panelA-footer"></div>
	
	<c:if test="${fromPVE eq 'YES'}">
		<div class="back-pve-button-cg010105"><img class="clickTone1" onclick="location.href='<p:fullurl value="/cg0201/cg020101/index"/>'" src="<p:localurl value="/resources/images/buttons/back-pve.png"/>"/></div>
	</c:if>
	
	<c:if test="${not empty friendList}">
		<c:forEach items="${friendList}" var="player">
			<c:set var="playerMainCard" value="${player.playerMaindCardVO}" />
			<div class="panel-03 panel-header-style">
				<div
					class='<cssutils:cardCamp campType="${playerMainCard.cardCamp}" />'>
					<div class="panel-header">
						<div class="item-name-style">
							<span>${player.name}</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-body">
						<div class="card-assistant">
							<div class="small-card-width">
								<div class="card-assistant-image">
									<img alt=""
										src="<p:cardImg type="small" id="${playerMainCard.cardId}"></p:cardImg>" />
								</div>
							</div>
							<div class="equips-width-cg010105">
								<div class="card-assistant-equipment">
									<div class="card-equipment ">
										<div class="one-equipment icon-location">

											<c:if test="${ not empty playerMainCard.playerEquipmentId1 }">
												<img alt=""
													src="<p:equipImg type="small" id="${playerMainCard.playerEquipment1.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty playerMainCard.playerEquipmentId1 }">
												<img
													src="<p:localurl value="/resources/images/icons/default.png"/>" />
											</c:if>										
											
											
										</div>
										<div class="one-equipment icon-location">
											
											<c:if test="${ not empty playerMainCard.playerEquipmentId2 }">
												<img alt=""
													src="<p:equipImg type="small" id="${playerMainCard.playerEquipment2.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty playerMainCard.playerEquipmentId2 }">
												<img
													src="<p:localurl value="/resources/images/icons/default.png"/>" />
											</c:if>	
											
										</div>
										<div class="one-equipment icon-location">
											<c:if test="${ not empty playerMainCard.playerEquipmentId3 }">
												<img alt=""
													src="<p:equipImg type="small" id="${playerMainCard.playerEquipment3.equipmentId }" />" />
											</c:if>
											<c:if test="${ empty playerMainCard.playerEquipmentId3}">
												<img
													src="<p:localurl value="/resources/images/icons/default.png"/>" />
											</c:if>	
										</div>
									</div>
								</div>
							</div>
							<div class="player-friend-info">
								<div>
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/dengji.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200107.level"></spring:message></span><span
												class="fc-content-02">${player.level}</span>
										</div>
									</div>
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/zhanyou.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200122.player.friend"></spring:message></span><c:if test="${empty player.friendsNum }">0</c:if><c:if test="${not empty player.friendsNum }"><span class="fc-content-02">${player.friendsNum}</span></c:if><span>/</span><span>${player.friendsMax}</span>
										</div>
									</div>
								</div>
								<div class="commonPadding-top02">
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/kapaishu.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200132.card"></spring:message></span><span
												class="fc-content-02">${player.cardsCount}</span><span>/</span><span>${player.cardsMax}</span>
										</div>
									</div>
									<div>
										<div>
											<img
												src='<p:localurl value="/resources/images/icons/lianmengtubiao.png"/>'>
										</div>
										<div class="fc-normal-05-l commonPadding-top06">
											<span><spring:message code="label.cg200132.union"></spring:message></span>
											<span class="fc-content-02"> <c:if
													test="${not empty playerItem.unionName }">
													<c:out value="${fn:substring(playerItem.unionName, 0, 3) }" />
												</c:if> <c:if test="${empty playerItem.unionName }">
													<spring:message code="label.cg0501.playertag.noleague" />
												</c:if>
											</span>
										</div>
									</div>
								</div>
								<div class="battle-apply" style="text-align:center;">
									<img class="apply-button clickTone1" id="button_${player.id}"
										playerId="${player.id}"
										src='<p:localurl value="/resources/images/buttons/zhanyoushenqing-green.png"/>'>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:if>
	
	
	
</div>
