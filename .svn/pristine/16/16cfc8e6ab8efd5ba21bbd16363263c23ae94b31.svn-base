<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="consumable" tagdir="/WEB-INF/tags/fight"%>
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
<div class="content cg040104">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg0401.selectedenemy"></spring:message></span>
	</div>
	<!--<div class="text-center font-size"><span class="pvpfontcolor"><spring:message code="label.cg220107.starRankGame.mianfeiPVP"></spring:message></span><span>${playerVo.freeAttackTimes }<spring:message code="label.cg220107.starRankGame.ci"></spring:message></span></div>  -->
	<div style=""></div>
	<div class="tab-panelButton">
		<div>
			<div class="tabbutton">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/yuansu-blue-b.png"/>"
					onclick="location.href='<p:fullurl value="/cg0401/cg040102/index/0"/>';event.preventDefault();" />
			</div>
			<div class="tabbutton">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/xiangjindengji-blue-b.png"/>"
					onclick="location.href='<p:fullurl value="/cg0401/cg040105/index/"/>';event.preventDefault();" />
			</div>
			<div class="tabbutton">
				<img class="clickTone1"
					src="<p:localurl value="/resources/images/buttons/diren-yellow-b.png"/>"
					onclick="location.href='<p:fullurl value="/cg0401/cg040104/index/"/>';event.preventDefault();" />
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="split-line"></div>
		<div class="menu-medium title-label-02">
			<span><spring:message code="label.cg0401.selectrival"></spring:message></span>
		</div>
		<div class="container">
			<c:if test="${not empty similarRival }">
				<c:forEach items="${similarRival}" var="rivalItem">
					<div class="panel-03 div7">
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
							<div class="div2">
								<span><c:out value="${rivalItem.name}"></c:out></span>
							</div>
							<div class="div3">
								<c:if test="${ rivalItem.ranking > 0 }">
									<img
										src="<p:localurl value="/resources/images/small-ranking-${rivalItem.ranking}.png"/>" />
								</c:if>
							</div> 
							<div class="div4">
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
													<img
														src="<p:localurl value="/resources/images/icons/default.png"/>" />
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
													<img
														src="<p:localurl value="/resources/images/icons/default.png"/>" />
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
													<img
														src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</div>
											</c:if>

											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="div3">
									<div class="card-assistant-desc">
										<div class="top-right-panel">
											<div class="div4">
												<div class="archives-item icon icon-level icon-location">
													<span><c:out value="${rivalItem.level}"></c:out></span>
													<c:if test="${playerVo.level-rivalItem.level>10}">
														<span class="fc-withwild">&nbsp;&nbsp;&nbsp;&nbsp;*<spring:message
																code="label.cg0401.levelmore"></spring:message></span>
													</c:if>
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
										<div style="" class="div5">
											<div class="div6">
												<c:if
													test="${rivalItem.canAttack ==false }">
												<img name="detailButton" class="button_gray" 
													src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>" />
											 </c:if>
											 <c:if test="${rivalItem.canAttack!=false}" >	
											     <c:if test="${powernotenough!=true}" >	
														<img class="fightButtonForPeople clickTone1"
															src="<p:localurl value="/resources/images/buttons/juezhan-green.png"/>"
															enemyId=${rivalItem.id } onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${rivalItem.id}/false"/>';event.preventDefault();"/>
											     </c:if>
											 </c:if>
											</div>
											<div>
												<c:if test="${rivalItem.canAttack ==false }">
													<img name="detailButton" class="button_gray" src="<p:localurl value="/resources/images/buttons/xiangxixinxi-green.png"/>" />
												</c:if>
												<c:if test="${rivalItem.canAttack!=false}" >	
													<img name="detailButton" class="clickTone1" 
													src="<p:localurl value="/resources/images/buttons/xiangxixinxi-green.png"/>"
													onclick="location.href='<p:fullurl value="/cg2201/cg220107/playerDetail/${rivalItem.id}?urlFrom=cg230101"/>';event.preventDefault();" />
													<!-- onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${rivalItem.id}/false"/>';event.preventDefault();" /> -->
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

	<div class="textalignCenter textalignCenter02">
			<img name="updateRival" class="clickTone1" 
			src="<p:localurl value="/resources/images/buttons/gengxinduishouliebiao-green-z.png"/>"
			onclick="location.href='<p:fullurl value="/cg0401/cg040104/updateRival/${pageIndex}/"/>';event.preventDefault();" />
	</div>
	<consumable:consumableMoveDiv d2="${d2}" d1="${d1}"></consumable:consumableMoveDiv>
	<div style="display:none">
		<img class="jqPopupcg040102action"
			src="<p:localurl value="/resources/images/buttons/buchongnengliang-blue.png"/>">
		<img class="jqPopupcg040102cancel"
			src="<p:localurl value="/resources/images/buttons/jixugongji-green.png"/>">
		<img class="jqPopupcg040102fangqi"
			src="<p:localurl value="/resources/images/buttons/quxiao-blue.png"/>">
		<img class="jqPopupcg040102fanji"
			src="<p:localurl value="/resources/images/buttons/queding-green.png"/>">
	</div>
	<input id="doJudgeUrl" type="hidden"
		value="<p:fullurl value="/cg0401/cg040104/fight/"/>" /> <input
		id="dofightUrl" type="hidden"
		value="<p:fullurl value="/cg0401/cg040106/fight/"/>" /> <input
		id="doComsumableUrl" type="hidden"
		value="<p:fullurl value="/cg0601/cg060101/index"/>" /> <input
		id="showmessage" type="hidden"
		value="<spring:message code="label.cg0401.confirmfight"></spring:message>" />
	<c:if test="${isFirstFight eq true}" >	
	<script>
			$(document)
					.ready(
							function() {
		
			 var options = {
			   suppressTitle: true, 
			   message:null, 
			   doneCallback: null,
			   cancelCallback: null,
			   initOk:function() {
				   //this指向弹出框DOM根节点
										this.find("#cancel").css(
												"background",
												$('.jqPopupcg040102fangqi')
														.css('background')); //取消按钮
										this.find("#action").css(
												"background",
												$('.jqPopupcg040102fanji').css(
														'background')); //确定按钮
			   }
			  };
								window.kpyxConfirm1 = function(message,
										doneCallback, cancelCallback) {
			 window.scrollTo(0, window.pageYOffset);
			 options.message=message;
			 options.doneCallback=doneCallback;
			 options.cancelCallback=cancelCallback;
			 $(document.body).popup(options);
			}
								kpyxConfirm1("<spring:message code="lable.cg040104.select.enemy"/>",
										function() {
			location.href='<p:fullurl value="/cg2201/cg220108/iconTwo"/>';
										},
										function() {
			options.initOk=function() {
			    //this指向弹出框DOM根节点
												this
														.find("#cancel")
														.css(
																"background",
																$(
																		'.jqPopupcg040102cancel')
																		.css(
																				'background')); //取消按钮
												this
														.find("#action")
														.css(
																"background",
																$(
																		'.jqPopupcg040102action')
																		.css(
																				'background')); //确定按钮
											}
										});
	});
	</script>
	</c:if>
</div>