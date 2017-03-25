<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080102.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<c:if test="${cardPackage.type.name() ne 'NEW'}">
	<script>
	$(document).ready(function() {	
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
			$animation.cardGetAnimationOne(".animationHolder");
		}, false);
	});
	
	function jumpToItensify(){
		window.location.href="<p:fullurl value='/cg0302/cg030201/index'/>";
	}
	function jumpToEvo(){
		window.location.href="<p:fullurl value='/cg0302/cg030207/index'/>";
	}
	</script>
</c:if>

<script type="text/javascript">
var SysSecond;
var InterValObj;
$(document).ready(function(){

			SysSecond = ${endleftTime}/1000;
			if(SysSecond>1)InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
			else $("#endleftTime").html( '<span style="color:red;font-size:18pt;">'
					   + "0" + '</span>'+"<spring:message code='label.cg120112.union.hour'/>"+ '<span style="color:red;font-size:18pt;">'
					   + "0" + '</span>'+"<spring:message code='label.cg120112.union.minutes'/>"+ '<span style="color:red;font-size:18pt;">' 
					   +"0" + '</span>'+ "<spring:message code='label.cg120112.union.seconds'/>");
	
	}); 

	function SetRemainTime() { 
	  	if (eval(SysSecond) > 1) {
		  SysSecond = SysSecond - 1; 
		  var second = Math.floor(SysSecond % 60);             // 计算秒
		  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
		  var hour = Math.floor((SysSecond / 3600));      //计算小时 
		  $("#endleftTime").html(
				 '<span style="color:red;font-size:18pt;">'
				   + hour + '</span>'+"<spring:message code='label.cg120112.union.hour'/>"+ '<span style="color:red;font-size:18pt;">'
				   + minite + '</span>'+"<spring:message code='label.cg120112.union.minutes'/>"+ '<span style="color:red;font-size:18pt;">' 
				   +second + '</span>'+ "<spring:message code='label.cg120112.union.seconds'/>");
		} else {//剩余时间小于或等于0的时候，就停止间隔函数 
			
			$("#endleftTime").html( '<span style="color:red;font-size:18pt;">'
					   + "0" + '</span>'+"<spring:message code='label.cg120112.union.hour'/>"+ '<span style="color:red;font-size:18pt;">'
					   + "0" + '</span>'+"<spring:message code='label.cg120112.union.minutes'/>"+ '<span style="color:red;font-size:18pt;">' 
					   +"0" + '</span>'+ "<spring:message code='label.cg120112.union.seconds'/>");
			window.clearInterval(InterValObj);
			//alert("${activetype}"=="MYTH");
		    window.location.href="<p:fullurl value='"+ "/cg0801/cg080102/tabchange/${cardPackage.type}'/>";
			
			
		}
	}  	
	  	

	
</script>
<div class="animationHolder card${cardPackage.type}">
	<div class="contentLightRayOper">
		<div class="light" id="layer_02">
			<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
		</div>
		<div class="light" id="layer_03">
			<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
		</div>
	</div>
	<div class="contentGet">
		<div class="surprise">
			<img class="card" src="<p:localurl value="/resources/images/animation/cardGetBackground_big.jpg"/>" />
		</div>
		<img class="hiddenPart" src="<p:cardImg type="big" id="${playerCardVoLst.get(0).cardId}"></p:cardImg>">
	</div>
	<div class = "contentMask"></div>
	<div class = "clickContinue"><span><spring:message code="label.cg0801.clickContinue" /></span></div>
</div>

<div class="content finalRes">
	<div class="title-label-zhaomudao">
	</div>
	<div class="row-distance"></div>
	<c:if test="${ not empty playerCardVoLst }">
		<c:forEach items="${ playerCardVoLst}" var="playerCardVo">
			<div class="location-middle-card">
				<div>
					<img class="image-show" src="<p:cardImg type="middle" id="${playerCardVo.cardId}"></p:cardImg>">
				</div>
				<div style="padding-top: 10px;">
				<span style="color:rgb(0, 252, 255)">${playerCardVo.name}</span>
				</div>
				<div class='card-info-button'>
						<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/kapaixiangqing-green-z.png"/>" onclick='location.href="<p:fullurl value="/cg0801/cg080112/index/${playerCardVo.id}" />";event.preventDefault();'>
				</div>
				<div>
				<span style="color:yellow;">佣兵总数:</span>
				<span>${player.cardsCount}/${player.cardsMax}</span>
				
				</div>
			</div>
		</c:forEach>
	</c:if>
	<div class="row-distance"></div>
	<div class="title-label-jixuzhaomu">
	</div>
	<jsp:include page="../cg0801/cg080101.jsp" flush="true" ></jsp:include>
	
</div>
