<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>

<script>
	$(document).ready(function() {	
		//document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
			$animation.getPlayerMainCardAnimation(".content");
		//}, false);
	});
	
	var cocoInfoTips = 1;
	
	function cocoInfo(){
		
		if(cocoInfoTips == 2){
			//跳转到首页
			window.location.href = '<p:fullurl value="/cg0101/cg010103/index" />';
		}else{
			//语言内容切换	
			$("#cocoIntroduce001").html($("#cocoInfo002").val());
		}
		
		cocoInfoTips++;
		
	}
	
</script>
<input id="cocoInfo002" type="hidden" value="<spring:message code="label.cg200135.coco.tips02"></spring:message>" />
<div class="content">
	<div class="animationHolder">
		<div class="contentLightRayOper">
			<div class="light" id="layer_02">
				<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
			</div>
			<div class="light" id="layer_03">
				<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
			</div>
		</div>	
		<div class="contentGet">
			<div class="contentGet-cg200135">		
				<img style="width:80%;" src="<p:cardImg type="big" id="${playerMainCard.cardId}"></p:cardImg>">
			</div>
		</div>
	</div>
	<div class="cg200101-ani-world" style="display:none;"></div>	
		
	<div class="cg200101-ani-coco" style="display:none;">	
		<div class="upBlack"></div>
		<div class="cocoPic">
				<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/coco.PNG"/>" />
		</div>
			
			
		<div class="conversation-bg">
			<div class="conversation-info">
					<span id="cocoIntroduce001"><spring:message code="label.cg200135.coco.tips"></spring:message></span>										
			</div>
			<div class="arrow-beat clickTone1" onClick="cocoInfo()"><img src="<p:localurl value="/resources/images/newPlayer/arrow.PNG"/>" /></div>				
		</div>			
			
			<div class="downBlack"></div>				
		
	</div>
	
	
</div>