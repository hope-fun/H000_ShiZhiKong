<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1601.css?v=1"/>">
<script type="text/javascript">
  function exchange(colorLevel,requiredPoints,honorPoints){
	  if(requiredPoints>honorPoints){
		  kpyxTips("<spring:message code='label.cg090106.fpnotenough'/>");
	  }else{
		  window.location.href="/kpyx-logical-service/cg0901/cg090106/exchange/"+colorLevel+"/"+requiredPoints+"/"+honorPoints;
	  }
  }
  
  $(document).ready(function(){
	//音效  ma_li  123   2013_11_7
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
			JSInterface.clickTone(123);
		}, false);
  });
</script>
<script type="text/javascript">
  function timeexchange(equipmentId,requiredPoints,honorPoints,remainNum){
	  if(requiredPoints>honorPoints){
		  kpyxTips("<spring:message code='label.cg090106.fpnotenough'/>");
	  }else if(remainNum==0){
		  kpyxTips("<spring:message code='label.cg090106.noequip'/>");
	  }
	  else{
		  window.location.href="/kpyx-logical-service/cg0901/cg090106/timeexchange/"+equipmentId+"/"+requiredPoints+"/"+honorPoints;
	  }
  }
  
  function fPointsExchange(cardId,requiredPoints,friendPoints){
	  if(requiredPoints>friendPoints){
		  kpyxTips("<spring:message code='label.cg090106.zhaomudianshubuzu'/>");
	  }
	  else{
		  window.location.href="/kpyx-logical-service/cg0901/cg090106/fPointsExchange/"+cardId+"/"+requiredPoints+"/"+friendPoints;
	  }
  } 
  
  
  function cardExchange(cardId,requiredPoints,ownPoints,ishonorExchange,type,remainNum){
	  if(requiredPoints>ownPoints){
		  
		  if(ishonorExchange=="true"){
			  kpyxTips("<spring:message code='label.cg090106.fpnotenough'/>");
		  }
		  else 
		  kpyxTips("<spring:message code='label.cg090106.zhaomudianshubuzu'/>");
	  }
	  
	  else if(remainNum==0){
		  kpyxTips("<spring:message code='label.cg090106.nocard'/>");
		  }
	  else{
		  window.location.href="/kpyx-logical-service/cg0901/cg090106/exchangeCard/"+cardId+"/"+requiredPoints+"/"+ishonorExchange+"/"+type;
	  }
  } 
  
</script>
<c:if test="${not empty message }">
	<script type="text/javascript">
		$(document).ready(function() {	
			kpyxTips(document.getElementById("cg090106ExchangeEquip").innerHTML);
		});
	</script>
</c:if>
<script type="text/javascript">
var SysSecond;
var InterValObj;
$(document).ready(function(){
	//alert(${endleftTime});
			SysSecond = ${endleftTime}/1000;
			InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
	}); 

	function SetRemainTime() { 
	  	if (eval(SysSecond) > 1) {
		  SysSecond = SysSecond - 1; 
		  var second = Math.floor(SysSecond % 60);             // 计算秒
		  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
		  var hour = Math.floor((SysSecond / 3600));      //计算小时 
		  $("#endleftTime").html(
				  "(<spring:message code='label.cg090106.shengyu'></spring:message>" + 
				   + hour + "<spring:message code='label.cg120112.union.hour' /> " + minite + "<spring:message code='label.cg120112.union.minutes' /> " + second + "<spring:message code='label.cg120112.union.seconds' />)");
		} else {//剩余时间小于或等于0的时候，就停止间隔函数 
			window.clearInterval(InterValObj);
			window.location.href="/kpyx-logical-service/cg0901/cg090106/reset";
		}
	}
</script>

<div class="exchangeEquip" id="cg090106ExchangeEquip">


<c:if test="${not empty rewardEquip}">
		
		<div class="reward-gift-title">
			<c:if test="${messageType eq 'TIMEEXCHANGE'}">
				<span><spring:message code='label.cg090106.timeexchange' /></span>
			</c:if>
			<c:if test="${messageType eq 'WHITE'}">
				<span><spring:message code='label.cg090106.exchange.white' /></span>
			</c:if>
			<c:if test="${messageType eq 'BLUE'}">
				<span><spring:message code='label.cg090106.exchange.blue' /></span>
			</c:if>
			<c:if test="${messageType eq 'PURPLE'}">
				<span><spring:message code='label.cg090106.exchange.purple' /></span>
			</c:if>
			<c:if test="${messageType eq 'ORANGE'}">
				<span><spring:message code='label.cg090106.exchange.orange' /></span>
			</c:if>
			<c:if test="${messageType eq 'TD2'}">
				<span><spring:message code='label.cg090106.exchange.td2' /></span>
			</c:if>
			<c:if test="${messageType eq 'TD2M'}">
				<span><spring:message code='label.cg090106.exchange.td2m' /></span>
			</c:if>
			<c:if test="${messageType eq 'TD2S'}">
				<span><spring:message code='label.cg090106.exchange.td2s' /></span>
			</c:if>
			<c:if test="${messageType eq 'notEnough'}">
				<span><spring:message code='label.cg090106.fpnotenough' /></span>
			</c:if>
			<c:if test="${messageType eq 'notEnoughF'}">
				<span><spring:message code='label.cg090106.zhaomudianshubuzu' /></span>
			</c:if>
			<c:if test="${messageType eq 'fullCards'}">
				<span><spring:message code='label.cg090106.kapaiman' /></span>
			</c:if>
			
			<c:if test="${fn:startsWith(messageType, 'card_star') }">
			<span><spring:message code='label.cg090106.timeexchange' /><spring:message code="label.cg090106.${messageType}"/></span>
			</c:if>
		</div>
		
		<div class="small-ysbx">
		<c:if test="${messageType ne 'notEnough' && messageType ne 'notEnoughF' && messageType ne 'fullCards'}">
			<div>

					<c:choose>

						<c:when test="${fn:startsWith(messageType, 'TD2') }">
							<div class="small-pic" style="float: left">
								<img style="width:85%;"
									src='<p:localurl value="/resources/images/activityreward/card_star${messageType}.PNG" />'>
							</div>
						</c:when>

						<c:when test="${fn:startsWith(messageType, 'card_star') }">
							<div class="small-pic" style="float: left;;padding-left:5%;">
								<img style="height:160px;"
									src='<p:cardImg type="small" id="${rewardEquip.id}"></p:cardImg>' />
							</div>
						</c:when>
						<c:otherwise>
							<div class="small-pic" style="float: left;">
								<img style="width:85%;"src='<p:equipImg type="large" id="${rewardEquip.id}" />' />
							</div>
						</c:otherwise>
					</c:choose>
					<div class="small-ysb-count">
					<span>X</span><span>1</span>
				</div>
			</div>
			<div class="reward-gift-name-small">${rewardEquip.name}</div>
			</c:if>
		</div>
	</c:if>
</div>
<div class="content">


	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg090106.rongyubiduihuan" /></span>
	</div>
	<div class="center-text">
		<span><spring:message code="label.cg090106.rongyubi"
				arguments="${player.honorPoints }" /></span>
	</div>
	<div class="menu-medium title-label-02 center-text">
		<span><spring:message code="label.cg090106.richangduihuan" /></span>
	</div>
	<c:forEach items="${exchanges }" var="item">
		<c:if test="${item.type=='DAILY' }">
			<div class="float-left1 center-text">
				<div class="propsImageStyle">
					<img src='<p:equipImg type="large" id="${item.colorLevel}" />' />
				</div>
				<span><spring:message code="label.cg090106.${item.colorLevel }"/><spring:message code="label.cg090106.suijijian" arguments="${item.num }" /></span> 
				<span><spring:message code="label.cg090106.dian" arguments="${item.requiredHonorPoints }" /></span> 
				<img src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />'
					onclick="exchange('${item.colorLevel}',${item.requiredHonorPoints },${player.honorPoints })" />
			</div>
		</c:if>	
	</c:forEach>
	<div style="clear: both;"></div>
	<div style="padding-top:50px;">
	<c:forEach items="${exchanges}" var="item">
	<!-- 日常卡牌兑换 -->
		<c:if test="${item.type=='CARD_DAILY' }">
			<div class="float-left1 center-text">
				<div class="propsImageStyle">
					<img class="imgReward"
			                    src='<p:localurl value="/resources/images/activityreward/card_star${item.cardId}.PNG"/>'>
				</div>
				<span>${item.description}</span> 
				<span><spring:message code="label.cg090106.dian" arguments="${item.requiredHonorPoints }" /></span> 
				<img src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />'
					onclick="cardExchange('${item.cardId}',${item.requiredHonorPoints },${player.honorPoints },'true','${item.type}',${item.remainNum})" />
			</div>
		</c:if>
	</c:forEach>
	</div>
	
	<div style="clear: both;"></div>
	
	
	<div class="menu-medium title-label-02 center-text" style="margin-top:40px;">
		<span><spring:message
				code="label.cg090106.xianshihuodongduihuan" /><span id="endleftTime"
			class="fc-normal-06-l endlefttime"></span></span>
	</div>
	<c:forEach items="${exchanges }" var="item">
		<c:if test="${item.type=='TIMELIMIT' }">
			<div class="float-left2 center-text">
				<span><spring:message code="label.cg090106.shengyu" />${item.remainNum
					}/${item.num }</span>
					<div style="clear:both"></div>
				<div class="propsImageStyle">
					<img src='<p:equipImg type="large" id="${item.equipmentId}"/>'>
				</div>
				<div style="clear:both"></div>
				<span>${item.equipmentName }</span> <span>${item.description
					}</span> <span><spring:message code="label.cg090106.dian"
						arguments="${item.requiredHonorPoints }" /></span> <img
					src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />'
					onclick="timeexchange('${item.equipmentId}',${item.requiredHonorPoints },${player.honorPoints },${item.remainNum })" />
			</div>
		</c:if>
	</c:forEach>
	
	<div style="clear: both;"></div>
	<div style="padding-top:20px;">
	<!--<c:forEach items="${exchanges}" var="item">
	 限时卡牌兑换 
		<c:if test="${item.type=='CARD_LIMIT' }">
			<div class="float-left2 center-text">
			<span><spring:message code="label.cg090106.shengyu" />${item.remainNum
					}/${item.num }</span>
					<div style="clear:both"></div>
				<div class="propsImageStyle">
					<img class="imgReward"
			                    src='<p:localurl value="/resources/images/activityreward/card_star${item.cardId}.PNG"/>'>
				</div>
				<div style="clear:both"></div>
				<span>${item.description}</span> 
				<span><spring:message code="label.cg090106.dian" arguments="${item.requiredHonorPoints }" /></span> 
				<img src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />'
					onclick="cardExchange('${item.cardId}',${item.requiredHonorPoints },${player.honorPoints },'true','${item.type}',${item.remainNum})" />
			</div>
		</c:if>
	</c:forEach>-->
	</div>
	<div style="clear: both;"></div>
	
	<div class="menu-medium title-label-02 center-text" style="margin-top:20px;">
		<span><spring:message code="label.cg090106.zhaomudianshuduihuan" /></span>
	</div>
	<div class="center-text" style="padding-bottom:20px;">
		<span><spring:message code="label.cg090106.zhaomudianshu"
				arguments="${player.friendPoints }" /></span>
	</div>
	<div class="float-left2 center-text" style="width:27%;">
	   <div class="propsImageStyle">
					<img src='<p:localurl value="/resources/images/activityreward/card_starTD2.PNG" />'>
	   </div>
	   <div style="clear:both"></div>
		<span>SAT芯片卡(大)</span> <span>卡牌经验+1000</span> <span>6000点</span> <img class="margin-bottom-tyle"
					src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />' 
					onclick="fPointsExchange('TD2',6000,${player.friendPoints})" />

	</div>
	
	<div class="float-left2 center-text">
	   <div class="propsImageStyle">
					<img src='<p:localurl value="/resources/images/activityreward/card_starTD2M.PNG" />'>
	   </div>
	   <div style="clear:both"></div>
		<span>SAT芯片卡(中)</span> <span>卡牌经验+500</span> <span>3000点</span> <img class="margin-bottom-tyle"
					src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />' 
					onclick="fPointsExchange('TD2M',3000,${player.friendPoints})" />
	
	</div>
	
	<div class="float-left2 center-text">
	   <div class="propsImageStyle">
					<img src='<p:localurl value="/resources/images/activityreward/card_starTD2S.PNG" />'>
	   </div>
	   <div style="clear:both"></div>
		<span>SAT芯片卡(小)</span> <span>卡牌经验+250</span> <span>1500点</span> <img class="margin-bottom-tyle"
					src='<p:localurl value="/resources/images/buttons/duihuan-green.png" />' 
					onclick="fPointsExchange('TD2S',1500,${player.friendPoints})" />
	
	</div>
	
	<div style="width:100%;height:50px;overflow:hidden;"></div>
</div>