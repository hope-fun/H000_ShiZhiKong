<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>

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
		</div>
		
		<div class="small-ysbx">
			<div>
				<div class="small-pic" style="float: left;">
					<img src='<p:equipImg type="large" id="${rewardEquip.id}" />' />
				</div>
				<div class="small-ysb-count">
					<span>X</span><span>1</span>
				</div>
			</div>
			<div class="reward-gift-name-small">${rewardEquip.name}</div>
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
	<div class="menu-medium title-label-02 center-text">
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
</div>