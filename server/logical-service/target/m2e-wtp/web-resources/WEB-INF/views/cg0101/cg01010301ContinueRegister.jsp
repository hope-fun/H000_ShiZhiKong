<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>" />
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/main.css"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/cg0101/cg0101.js"/>"></script>

<script type="text/javascript">

$(document).ready(function(){
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		JSInterface.accessContinue("access");	
	}, false);
	$("#_add_height").remove();
	$("#_shadow_bg").remove();
	$(".distancenum").removeClass("distancenum");
	



	
});

soccerOnload();


function soccerOnload() {
setTimeout("blink()", 500);
}
function blink() {
	var objid=document.getElementById("flight");
	if(objid.style.display=="none")
		objid.style.display="block";
	else
		objid.style.display="none";

setTimeout("blink()", 500);
}


	function getContinueRegisterReward(obj) {
		var $a = $(obj);
		$a.attr("onclick", "");

		var options = {
			url : "<p:fullurl value='/cg0101/cg010103/getContinueRegisterReward' />",
			data : {
				id : $(obj).attr("id"),
				type : $(obj).attr("type")
			},
			dataType : 'json',
			showMask : true,
			success : function(json) {
				updatePlayerInfo();
				;
				if (json.succeed == "true") {
					if (json.isDiamond) {
						var data = "{\"number\":" + json.diamondCount
								+ ",\"consumableId\":系统赠送钻石" + "}";
						JSInterface.getDiamondFromSystem(data);
					}
					updatePlayerInfo();
					var st = "<p:fullurl value='"+ "/cg0101/cg010103/notice'/>";
					$("#isGet").attr("value","true");
					kpyxTips("<spring:message code='label.cg01010301.draw.success' />",function(){window.location.href =st});
					JSInterface.accessContinue("notAccess");
				} else {
					if (json.fullcards == "true")
						kpyxTips("<spring:message code='label.cg01010301.draw.faultreason.reachupper' />");
					if (json.hasGet == "true")
						kpyxTips("<spring:message code='label.cg01010301.draw.faultreason.repeat' />");
					else
						kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
				}
			}
		}
		$.ajax(options);
	}

	function jumpToHomepage() {	
		var st = "<p:fullurl value='"+ "/cg0101/cg010103/notice'/>";	
		window.location.href = st;
		JSInterface.accessContinue("notAccess");
	}
	
	
	$(function(){				
		$(".ccc").each(function(){
			var a=$(this).attr("id");  
			var rewardCondition = a.substring(a.indexOf("_")+1); 
	     if(${ContinueRegisterDay}==rewardCondition) 
	    	//$(this).removeClass("continueRewardHide").addClass("continueRewarddisplay");
	    	 $(this).show();
		})
		
		$(".continueTrans").each(function(){
			var b=$(this).attr("id"); 
			var s=b.substring(b.indexOf("_")+1); 
			var getDays="${hasGetDays}";
			if(getDays.indexOf(s)>=0)
			 $("#hasGet_"+s).html("<img src='<p:localurl value="/resources/images/continue/yiling.png"/>'>");
			
	
			$(this).get(0).addEventListener("click",function(){
				if($(this).is(":visible")) return;
				var aa="#123_"+s;
				for(i=1;i<8;i++){
					if(i==s){
						//$(aa).addClass("continueRewarddisplay");
					    $(aa).show();	
					    if(${ContinueRegisterDay}!=i) {
					    	$("#getImg").hide();
					    	$("#getDiv").addClass("getDiv")
					    	}
					    else $("#getImg").show();
					}
					else {
						
						$("#123_"+i).hide();
						}
				}
				
			},true);
		})
		
		
		
	});
	

	
	
	
</script>
<div class="continuecontent">
	<div class="title-label-04">
		<div style="float: right;">
			<img onclick="jumpToHomepage()"
				src='<p:localurl value="/resources/images/continue/x.PNG"/>'>

		</div>
		<c:if test="${isGet eq 'FALSE'}">
		<div id="flight"
				style="overflow: hidden;float: left;position: relative;top: ${407+(ContinueRegisterDay mod 2)*47}px;left: ${49+83*(ContinueRegisterDay-1)}px;display:block;">
				<img
					src='<p:localurl value="/resources/images/continue/currentDay.PNG"/>'>
			</div>
		</c:if>

		<c:forEach items="${AllGiftOfContinue}" var="item2" varStatus="k">
			<div class="continueTrans"
				style="float: left;position: absolute;top: ${458-(k.index mod 2)*48}px;left:${k.index*80+68}px;z-index:999;"
				id="trans_${k.index+1}">
				<img class="clickTone1 "
					src='<p:localurl value="/resources/images/continue/touminganniu.PNG"/>'>
			</div>
			<div id="hasGet_${k.index+1}"
				style="float: left;position: absolute;top:${525-(k.index mod 2)*48}px;left: ${k.index*81+80}px;"></div>
		</c:forEach>
	</div>
	<div class="continueReward-body">
		<c:forEach items="${AllGiftOfContinue}" var="item1" varStatus="i">
		<div id="123_${i.index+1}" class="ccc" style="display:none;position: relative;top: -40px;">
		<div id="arrows_${i.index+1}" 
			style="width: 100%;height: 73px;background:url('<p:fullurl value='/resources/images/continue/day${i.index+1}up.png'/>') center bottom no-repeat;background-size:83.3% 100%;"></div>

		<div class="panel-continueReward">

				<div class="day continueRewarddisplay"
					id="rewardCondition_${i.index+1}">
					<c:forEach items="${item1.playerGiftList}" var="item">
						<cards:2101_showAllRewards item="${item}" width="33" />
					</c:forEach>
				</div>

			
		</div>
		</div>
		</c:forEach>
		<c:if test="${isGet eq 'FALSE'}">
			<div style="position: relative; top: 30px; text-align: center;"
				id="getDiv">

				<img id="getImg" class="clickTone1"
					onclick="getContinueRegisterReward(this)" src='<p:localurl value="/resources/images/continue/lingqu.PNG"/>'>

			</div>

		</c:if>
	</div>
	<div class="continueRegister-footer"></div>
</div>