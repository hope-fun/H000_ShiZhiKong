<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure"%>
<c:if test="${empty header['requestType']}">

	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
	<script type="text/javascript" charset="utf-8">
$(document).ready(function(){	
	
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
		
		//add by ma_li  使用恢复行动能力药水   
		if("${canAutoUseConsumable}" && "${consumableVO}" != null){
			console.log("${canAutoUseConsumable}");
			if("${consumableVO.buyCount}">0){
				var data1 ="{\"consumableId\":\""+ "${consumableVO.name}" +"\",\"number\":" + 1 +"}";
				JSInterface.useConsumble(data1);
			}
		}
		
	}, false);
});

	
</script>

<script type="text/javascript">

$(function(){
	var leftWidth=0;
	//判断SIZE
	var size = '${size}';
	if(size==1){
		$('.left-width-style').addClass("left-width-style01");		 
		leftWidth = 37.125;
	}else if(size ==2){
		$('.left-width-style').addClass("left-width-style02");
		leftWidth = 24.75;
	}else if(size ==3){
		$('.left-width-style').addClass("left-width-style03");
		leftWidth = 12.375;
	}else{
		leftWidth = 0;
	}
	
	$(".cg260102").each(function(){
    var time=$(this).attr("time");
    var id=$(this).attr("id");
    var SysSecond;
    var InterValObj;
    $(document).ready(function(){
			SysSecond = time/1000;
			InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
	}); 

	function SetRemainTime() { 
	  	if (eval(SysSecond) > 1) {
		  SysSecond = SysSecond - 1; 
		  var second = Math.floor(SysSecond % 60);             // 计算秒
		  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
		  $("#"+id).html(minite + "<spring:message code='label.cg120112.union.minutes' /> " + second + "<spring:message code='label.cg120112.union.seconds' />");
		} else {//剩余时间小于或等于0的时候，就停止间隔函数 
			window.clearInterval(InterValObj);
		  $("#parent_"+id).hide();
		  var changeLeftWidth = leftWidth + 12.375;
		  if(changeLeftWidth<=37.125){
			  $('.left-width-style').css("margin-left", changeLeftWidth+"%");
			  leftWidth = changeLeftWidth;
		  }else{
			  $('.left-width-style').css("margin-left", "0%");
			  leftWidth = 0;
		  }
		  
		}
	}
   });
 });

</script>

	<script type="text/javascript" charset="utf-8"
		src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>

	<script type="text/javascript" charset="utf-8"
		src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>
	<div class="content">
		<input id="canAutoUseConsumable" type="hidden"
			value="${canAutoUseConsumable}" /> <input id="doAjaxSubmitUrl"
			type="hidden" value="<p:fullurl value='/cg2601/cg260102/action' />" />
		<input id="doJumpUrl" type="hidden"
			value="'<p:fullurl value='/cg260101/cg260100/index' />'" /> <input
			id="actionPower" type="hidden" value="${ playerVO.actionPower}" /> <input
			id="consumeActionPower" type="hidden" value="${ consumeActionPower}" />
		<input id="cg0201attackauto" type="hidden"
			value="<spring:message code='label.cg0201.attackcannotauto' />" />
		<div class=" menu-medium title-label-03">
			<span class="label-title-attack">${name}</span>
		</div>
		<div style="text-align: center;">
			<c:if test="${ not empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/></span><span style="color:white;vertical-align: top;">${playerVO.beadsCount }</span>
	</c:if>
	<c:if test="${empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/><span style="color:white;vertical-align: top;">0</span></span>
	</c:if>
		</div>
		<div class="executeMission">
			<img class="lightOper"
				src="<p:localurl value='/resources/images/animation/light.png' />" />
			<div class="contentOper">
				<img
					src="<p:localurl value='/resources/images/scene/deathsea.PNG' />" />
				<div class="executingMask"></div>
			</div>
			<div class="noticeOper">
				<span><spring:message code="label.CG020104.executing" />&emsp;&emsp;</span>
				<span>+ <span>${rewardExp}</span> EXP
				</span> <span>&emsp;&emsp;- <span>${consumeActionPower}</span> <spring:message
						code="label.CG020104.action" />
				</span>
			</div>
		</div>
		<div class="pro-bars pro-bars-cg260102 clearfix">
			<div>
				<div class="fc-normal-05-l font-pro">
					<spring:message code="label.CG020104.action"></spring:message>
					:
				</div>
				<div>
					<div id="actionProcessBar"
						class="processing-bar-blue fc-normal-01-m"
						processbar="<fmt:formatNumber type='number' value='${playerVO.actionPower/playerVO.actionPowerMax*100}' maxFractionDigits='0'/>"></div>
					<div class="pro-bar-num02 clearfix">
						<span id="actionNum">${playerVO.actionPower}</span> <span>/</span>
						<span>${playerVO.actionPowerMax}</span>
					</div>
				</div>
			</div>
			<div>
				<div class="fc-normal-05-l font-pro">
					<spring:message code="label.CG020104.exp"></spring:message>
					:
				</div>
				<div>
					<div id="expProcessBar" class="processing-bar-green fc-normal-02-m"
						processbar="<fmt:formatNumber type='number' value='${(playerVO.exp)/(playerVO.expNextLevel)*100}' maxFractionDigits='0'/>"></div>
					<div class="pro-bar-num02 clearfix">
						<span id="expNum">${playerVO.exp}</span> <span>/</span> <span>${playerVO.expNextLevel}</span>
					</div>
				</div>
			</div>
		</div>
		<c:if test="${not empty buffVOs }">
			<div style="text-align: center;overflow:hidden;width:100%;">
				<div class="left-width-style"></div>
				<c:forEach items="${buffVOs }" var="buff">					
					<div class="buff-info-style" id="parent_${buff.buffId }">
						<div>
							<img
								src='<p:fullurl value="/resources/images/activity/${buff.buffId }.PNG"/>'>
						</div>
						<div>${buff.description }</div>
						<c:choose>
							<c:when test="${buff.buffId eq 'bf3' }">
								<div style="color: green;">-${buff.additionValue }%</div>
							</c:when>
							<c:otherwise>
								<div style="color: red;">+${buff.additionValue }%</div>
							</c:otherwise>
						</c:choose>
						<div id="${buff.buffId }" time="${buff.leftTime }" class="cg260102" style="height: 20px;"></div>
					</div>
				</c:forEach>
			</div>
		</c:if>
		<div class="clearfix"></div>
		<div class="recover-energy-checkbox02">


			<div class="recover-energy-img">
				<input name="checkzhanhunengyuan" type="checkbox"
					id="checkzhanhunengyuan" class="sell_out" checked="false" /> <label
					id="checkzhanhunengyuanlabel" for="checkzhanhunengyuan"
					class="checkbox-pic-style checked-pic"></label>
			</div>
			<div class="recover-energy-info">
				<span class="fc-normal-06-m system-content-other panleText">
					<spring:message code="label.CG020104.autorecoveraction"></spring:message>
				</span>
			</div>
		</div>

		<div class="buttonPanel">
			<c:choose>
				<c:when test="${playerVO.actionPower >= consumeActionPower}">
					<div class="center-site task-section-style" style="">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>'
							onclick="doAjaxSubmit('<p:fullurl value='/cg2601/cg260102/action' />','<p:fullurl value='/player/getPlayerInfo'/>');">
					</div>
				</c:when>
				<c:otherwise>
					<div class="center-site button_gray task-section-style">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>'
							onclick="doJumpFor020104('<p:fullurl value='/cg2601/cg260100/index' />')">
					</div>
				</c:otherwise>
			</c:choose>
		</div>

		<div class="use-con-style">
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB01-height npc-height" style=""></div>
				<div class="panelB-footer"></div>
				<div class="border-content">
					<div class="card-assistant npc-padding02">
						<div class="npc-pic-width">
							<div>
								<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
							</div>
						</div>
						<div class="description_content npc-message-new task-story-des">
							${taskStoryDesc}</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="OverWritePanel" style="display: none;"></div>
</c:if>
<c:if
	test="${(header['requestType'] == 'ajax' and header['requestFrom'] == 'TaskSection') }">
	<div>

		<div class="OverWritePanel"></div>


		<div id="actionProcessBartarget"
			class="processing-bar-blue fc-normal-01-m"
			processbar="<fmt:formatNumber type='number' value='${playerVO.actionPower/playerVO.actionPowerMax*100}' maxFractionDigits='0'/>"></div>
		<div id="expProcessBartarget"
			class="processing-bar-green fc-normal-02-m"
			processbar="<fmt:formatNumber type='number' value='${(playerVO.exp)/(playerVO.expNextLevel)*100}' maxFractionDigits='0'/>"></div>

		<span id="actionNumtarget">${playerVO.actionPower}</span> <span>/</span>
		<span>${playerVO.actionPowerMax}</span> <span id="expNumtarget">${playerVO.exp}</span>
		<span>/</span> <span>${playerVO.expNextLevel}</span>
		<div class="buttonPanel">
			<c:choose>
				<c:when test="${playerVO.actionPower >= consumeActionPower}">
					<div class="center-site task-section-style" style="">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>'
							onclick="doAjaxSubmit('<p:fullurl value='/cg2601/cg260102/action' />','<p:fullurl value='/player/getPlayerInfo'/>');">
					</div>
				</c:when>
				<c:otherwise>
					<div class="center-site button_gray task-section-style">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/buttons/lijizhixing-z.png"/>'
							onclick="doJumpFor020104('<p:fullurl value='/cg2601/cg260100/index' />')">
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<input id="canAutoUseConsumabletarget" type="hidden"
			value="${canAutoUseConsumable}" /> <input id="doAjaxSubmitUrltarget"
			type="hidden" value="<p:fullurl value='/cg2601/cg260102/action' />" />
		<input id="doJumpUrltarget" type="hidden"
			value="'<p:fullurl value='/cg2601/cg260100/index' />'" /> <input
			id="actionPowertarget" type="hidden" value="${ playerVO.actionPower}" />
		<input id="consumeActionPowertarget" type="hidden"
			value="${consumeActionPower}" />



	</div>
</c:if>


