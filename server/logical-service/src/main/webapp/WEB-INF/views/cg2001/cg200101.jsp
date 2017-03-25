<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="<p:fullurl value="/resources/js/common/css3AnimationFactory.js"/>"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(		
			
			function() {
				document.addEventListener('WebViewJavascriptBridgeReady',
						function(event) {
							JSInterface.showUpandDown("NO");
						}, false);
				
				 
				if('${getMainCard}' == 'true'){
					$(".newPlayerGuide").css("display", "none");
					$(".getMainCard").css("display", "block");
					clearTimeout(step1Fun);
					clearTimeout(step2Fun);
					clearTimeout(step3Fun);
					clearTimeout(step4Fun);
					clearTimeout(step5Fun);
					clearTimeout(step6Fun);
					
					clearTimeout(stepWorld1Fun);
					clearTimeout(stepWorld2Fun);
					clearTimeout(stepWorld3Fun);
					clearTimeout(stepWorld4Fun);
					clearTimeout(stepWorld5Fun);
					document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
						$animation.getPlayerMainCardAnimation(".getMainCard");
					}, false);
				}else{ 
					$(".getMainCard").css("display", "none");
					$(".newPlayerGuide").css("display", "block");	
					document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
						$animation.cg200101Animation(".newPlayerGuide");
					}, false);
				}
				
			
	});
</script>

<script type="text/javascript">
/* var i = 1;
var picChangeInterval = window.setInterval(changeMarqueePic, 2000);
function changeMarqueePic(){
	
	if(i==2){
		$("#yl_marquee1").css("display", "none");
		$("#rl_marquee1").css("display", "none");
		$("#tt_marquee1").css("display", "none");
		$("#yl_marquee2").css("display", "block");
		$("#rl_marquee2").css("display", "block");
		$("#tt_marquee2").css("display", "block");
		
		i++;
	}else if(i==3){
		
		$("#yl_marquee3").css("display", "block");
		$("#rl_marquee3").css("display", "block");
		$("#tt_marquee3").css("display", "block");
		$("#yl_marquee1").css("display", "none");
		$("#rl_marquee1").css("display", "none");
		$("#tt_marquee1").css("display", "none");
		$("#yl_marquee2").css("display", "none");
		$("#rl_marquee2").css("display", "none");
		$("#tt_marquee2").css("display", "none");
		i++;
	}
	else if(i==1){
		$("#yl_marquee1").css("display", "block");
		$("#rl_marquee1").css("display", "block");
		$("#tt_marquee1").css("display", "block");
		i++;
	}
	else{
		i=1;
		$("#yl_marquee1").css("display", "block");
		$("#rl_marquee1").css("display", "block");
		$("#tt_marquee1").css("display", "block");
		$("#yl_marquee3").css("display", "none");
		$("#rl_marquee3").css("display", "none");
		$("#tt_marquee3").css("display", "none");
		$("#yl_marquee2").css("display", "none");
		$("#rl_marquee2").css("display", "none");
		$("#tt_marquee2").css("display", "none");
		i++;
	}
	
}
 */

var cocoInfoTimes = 1;
var playerName ="";
var playerRace= "";

function cocoInfo(){
	//语言内容切换	
	
		if(cocoInfoTimes == 3){			
			$(".conversation-bg").css("display", "none");
			$(".inputPlayerName").css("display", "block");
			var maxWidth = 720;
			var maxHeight = 720 / window.screen.availWidth
					* window.screen.availHeight*1.1;
			$(".inputPlayerName").css("top", maxHeight*0.4+"px");
			
		}			
		else{
			$("#cocoIntroduce").html($("#cocoInfo"+cocoInfoTimes).val());
		}
		
		cocoInfoTimes++;
	
}

function confirmName(){
	var verifyURL = '<p:fullurl value="/cg2001/cg200101/verify/" />';
	
	 $.ajax({
		url : verifyURL,
		type : 'post',
		headers: {
	          "contentType": "application/x-www-form-urlencoded; charset=UTF-8"
	    },
		jsonType : 'json',
		data: {"name" : name},
		success : function(data) {
			data = JSON.parse(data);
			if (null != data && !data.result) {
				/* window.location.href = url + "?playerName="+playerName; */
			} else {
				alert("<spring:message code='label.cg200102.notice.name.exist'></spring:message>");
				stopLoding();
				return false;
			}
		}
	}); 
	
	//进入对话选阵营
	$(".conversation-bg-confirmName").css("display", "none");
	
	//跳转到选择阵列营
	$(".cg200101-ani-coco").css("display", "none");
	clearTimeout(stepCoco1);
	$(".chooseRace").css("display", "block");
	$(".cg200101-ani-world").css("display", "none");
	
	var raceTop = window.screen.availHeight*0.1;
	$(".chooseRace").css("top", raceTop+"px");
	
	
}

function confimPlayerRace(){
	//根据玩家名字和阵营注册用户
	var url = $("#registerUrl").val()+  encodeURI(encodeURI(playerName))   +"/"+playerRace;	
	window.location.href = url;
}

function choosePlayerRace(){
	$(".confirmRace").css("display", "none");
	$(".chooseRace").css("display", "block");
	var raceTop = window.screen.availHeight*0.2;
	$(".chooseRace").css("top", raceTop+"px");
	
}

function chooseRace(race){
	playerRace = race;
	//进入确定阵营页面
	$(".chooseRace").css("display", "none");
	$(".confirmRace").css("display", "block");
	 //显示选择的阵营
	if(race=="YILING"){
		$("#playerChooseRace").html(document.getElementById("ylPlayerPic").innerHTML);	
		$("#playerRace").html("<spring:message code='lablel.camptype.LINGYI'></spring:message>");
	}else if(race=="RENLEI"){
		$("#playerChooseRace").html(document.getElementById("rlPlayerPic").innerHTML);	
		$("#playerRace").html("<spring:message code='lablel.camptype.HUMAN'></spring:message>");
	}else{
		$("#playerChooseRace").html(document.getElementById("ttPlayerPic").innerHTML);	
		$("#playerRace").html("<spring:message code='lablel.camptype.TAITAN'></spring:message>");
	} 
	
}


function doJump() {
	var name = document.getElementById("playername").value.replace(/(^\s*)|(\s*$)/g, "");
	var verifyURL = '<p:fullurl value="/cg2001/cg200102/verify/" />';
	if (name && name != "") {
		var reg = /^([\u4E00-\u9FA5]|[A-Za-z0-9])*$/;
		if (reg.test(name)) {
			var strlength = name.length;
			strlength = name.replace(/[\u4e00-\u9fa5]/g, "aa").length;
			if (strlength < 4 || strlength > 12) {
				alert("<spring:message code='label.cg200102.notice.font.count'></spring:message>");
				JSInterface.stopLoding();
				return false;
			} else {
				playerName = name;
				
				$.ajax({
				url : verifyURL,
				type : 'post',
				headers: {
			          "contentType": "application/x-www-form-urlencoded; charset=UTF-8"
			    },
				jsonType : 'json',
				data: {"name" : name},
				success : function(data) {
					data = JSON.parse(data);
					if (null != data && !data.result) {
						//名字确定后选阵营
						$(".inputPlayerName").css("display", "none");
						$(".conversation-bg").css("display", "none");
						
						var maxHeight = 720 / window.screen.availWidth
								* window.screen.availHeight*1.1;
						//确认名字？
						$(".conversation-bg-confirmName").css("display", "block");
						var paddingTop = maxHeight*0.6;
						$(".conversation-bg-confirmName").css("top", paddingTop+"px");
						$("#confirm-name").html(name + $("#confirmInfo").val());
					} else {
						alert("<spring:message code='label.cg200102.notice.name.exist'></spring:message>");
						
						return false;
					}
				}
			}); 
				
				
				
				
				
				
			}
		} else {
			alert("<spring:message code='label.cg200102.notice.name.type'></spring:message>");
			JSInterface.stopLoding();
			return false;
		}
	} else {
		alert("<spring:message code='label.cg200102.notice.name.null'></spring:message>");
		JSInterface.stopLoding();
	}
}

function skipToWorld(){
	$(".cg200101-ani-index").css("display", "none");
	$(".cg200101-ani-world").css("display", "block");
	clearTimeout(step1Fun);
	clearTimeout(step2Fun);
	clearTimeout(step3Fun);
	clearTimeout(step4Fun);
	clearTimeout(step5Fun);
	clearTimeout(step6Fun);
	$animation.worldTips(".content");
	
}

function skipToCoco(){
	$(".cg200101-ani-world").css("display", "none");
	$(".cg200101-ani-coco").css("display", "block");
	clearTimeout(stepWorld1Fun);
	clearTimeout(stepWorld2Fun);
	clearTimeout(stepWorld3Fun);
	clearTimeout(stepWorld4Fun);
	clearTimeout(stepWorld5Fun);
	$animation.cocoTips(".content");
}

function randomName() {
	var url = '<p:fullurl value="/cg2001/cg200101/random" />';

	$.ajax({
		url : url,
		type : 'get',
		headers: {
	          "contentType": "application/x-www-form-urlencoded; charset=UTF-8"
	    },
		jsonType : 'json',
		data: null,
		success : function(data) {
			data = JSON.parse(data);
			$("#playername")[0].blur();
			$("#playername").val(data.name);
		}
	});
}

</script>

<script>
	
	var cocoInfoTips = 1;
	
	function cocoInfo02(){
		
		//出现卡牌动画
		$animation.showMainCard(".getMainCard");
		
		if(cocoInfoTips == 2){
			$(".contentGet").css("display", "none");
			$(".cg200101-ani-index").css("display", "none");			
			clearTimeout(mainCardStep1);
			clearTimeout(mainCardStep2);
			clearTimeout(mainCardStep3);
			JSInterface.clickTone(242);
			
			//跳转到首页
			window.location.href = '<p:fullurl value="/index" />';
		}
		
		cocoInfoTips++;
		
	}
	
</script>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<input id="registerUrl" type="hidden" value="<p:fullurl value='/cg2001/cg200101/registerPlayer/' />" />
<input id="cocoInfo1" type="hidden" value="<spring:message code="label.cg200101.coco.help"></spring:message>" />
<input id="cocoInfo2" type="hidden" value="<spring:message code="label.cg200101.coco.question"></spring:message>" />
<input id="cocoInfo4" type="hidden" value="<spring:message code="label.cg200101.coco.race"></spring:message>" />
<input id="confirmInfo" type="hidden" value="<spring:message code="label.cg200101.confirm.name"></spring:message>" />
<div class="content newPlayerGuide">
	
	<div class="cg200101-ani-index">
			<div class="ani-xieci-pic" style="display:none;">
				<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/xieci.PNG"/>" />
			</div>
			<div class="ani-des-pic01" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/01.PNG"/>" />
			</div>
			<div class="ani-des-pic02" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/02.PNG"/>" />
			</div>
			<div class="ani-des-pic03" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/03.PNG"/>" />
			</div>
			<div class="ani-des-pic04" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/04.PNG"/>" />
			</div>
			<div class="ani-des-pic05" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/05.PNG"/>" />
			</div>	
			<div class="ani-smoke" style="display:none;">
				<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/smoke.PNG"/>" />
			</div>
			<div class="ani-skip-world clickTone1" style="display:none;">
				<div class="ani-skip-world02"><img src="<p:localurl value="/resources/images/newPlayer/skip.PNG"/>" /></div>
			</div>
	</div>
		
	<div class="cg200101-ani-world" style="display:none;">		
			
			<div class="ani-des-world01" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/world01.PNG"/>" />
			</div>
			<div class="ani-des-world02" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/world02.PNG"/>" />
			</div>
			<div class="ani-des-world03" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/world03.PNG"/>" />
			</div>
			<div class="ani-des-world04" style="display:none;">
				<img src="<p:localurl value="/resources/images/newPlayer/world04.PNG"/>" />
			</div>
			
			<div class="ani-skip-coco clickTone1" style="display:none;"><img src="<p:localurl value="/resources/images/newPlayer/skip.PNG"/>" /></div>
	</div>	
		
		
	<div class="cg200101-ani-coco" style="display:none;" >	
			<div class="upBlack" style="display:none;"></div>
			<div class="cocoPic" style="display:none;">
				<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/coco.PNG"/>" />
			</div>
			
			
			<div class="conversation-bg clickTone1" style="display:none;" onClick="cocoInfo()">
				<div class="conversation-info">
						<span id="cocoIntroduce"><spring:message code="label.cg200101.coco.des"></spring:message></span>										
				</div>
				<div class="arrow-beat " ><img src="<p:localurl value="/resources/images/newPlayer/arrow.PNG"/>" /></div>				
			</div>			
			
			
			<div class="inputPlayerName" style="display:none;">
				<div class="planer-name-info">
					<input type="text" id="playername" class="cg200102-player-name" value=""></input>					
				</div>
				<div class="randomName">
					<img class="clickTone1" onclick="randomName();" src='<p:localurl value="/resources/images/buttons/suijiquming-green-z.png"/>'>					
				</div>
				
				<div class="continueButton">
					<img class="clickTone1" onclick="doJump();" src='<p:localurl value="/resources/images/buttons/jixu-green-d.png"/>'>		
				</div>
			</div>
			
			<div class="conversation-bg-confirmName" style="display:none;">
				<div class="confirmName-info">
					<span id="confirm-name"></span>										
				</div>
				<div class="confirm-name-button clickTone1" onClick="confirmName()"><img src="<p:localurl value="/resources/images/buttons/queding-green.png"/>" /></div>				
			</div>	
			
			
			<div class="downBlack" style="display:none;"></div>			
			
	</div>
	
	<div class="chooseRace" style="display:none;">
		<div class="coCoTips"><span><spring:message code="label.cg200101.coco.race"></spring:message></span></div>
		<div class="threeRace">
			<div class="raceYL">
				<div class="ylPic" id="ylPlayerPic">
					<div class="ylAni" >
						<!-- <marquee class="marquee-info" id="yl_marquee1" style="display:none;" > -->
							<img src="<p:localurl value="/resources/images/newPlayer/c01.JPG"/>" />
						<!-- </marquee>
						<marquee class="marquee-info" id="yl_marquee2" style="display:none;" >
							<img style="width:100%;"  src="<p:localurl value="/resources/images/newPlayer/c02.JPG"/>" />
						</marquee>
						<marquee class="marquee-info" id="yl_marquee3"  style="display:none;" >
							<img style="width:100%;"  src="<p:localurl value="/resources/images/newPlayer/c03.JPG"/>" />	
						</marquee>	 -->					
					</div>
					<div class="ylFrame"><img onClick="chooseRace('YILING')" src="<p:localurl value="/resources/images/newPlayer/yiling.PNG"/>" /></div>
				</div>				
			</div>
			<div class="raceRL">
				<div class="rlPic" id="rlPlayerPic">
					<div class="rlAni" >
						<!-- <marquee class="marquee-info" id="rl_marquee1" style="display:none;"> -->
							<img src="<p:localurl value="/resources/images/newPlayer/r01.JPG"/>" />
						<%-- </marquee>
						<marquee class="marquee-info" id="rl_marquee2" style="display:none;">
							<img style="width:100%;"  src="<p:localurl value="/resources/images/newPlayer/r02.JPG"/>" />
						</marquee>
						<marquee class="marquee-info" id="rl_marquee3" style="display:none;">
							<img style="width:100%;"  src="<p:localurl value="/resources/images/newPlayer/r03.JPG"/>" />
						</marquee> --%>
						
					</div>
					<div class="rlFrame"><img onClick="chooseRace('RENLEI')" src="<p:localurl value="/resources/images/newPlayer/renlei.PNG"/>" /></div>
				</div>		
				
			</div>
			<div class="raceTT">
				<div class="ttPic" id="ttPlayerPic">
					<div class="ttAni" >
						<!-- <marquee class="marquee-info" id="tt_marquee1" style="display:none;"  > -->
							<img src="<p:localurl value="/resources/images/newPlayer/s01.JPG"/>" />						
						<%-- </marquee>
						<marquee class="marquee-info" id="tt_marquee2" style="display:none;" >
							<img style="width:100%;"  src="<p:localurl value="/resources/images/newPlayer/s02.JPG"/>" />							
						</marquee>
						<marquee class="marquee-info" id="tt_marquee3" style="display:none;"  >
							<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/s03.JPG"/>" />						
						</marquee> --%>
						
					</div>
					<div class="ttFrame"><img onClick="chooseRace('TAITAN')" src="<p:localurl value="/resources/images/newPlayer/taitan.PNG"/>" /></div>
				</div>	
			</div>
		
		</div>
	</div>

	<div class="confirmRace" style="display:none;">
		<div class="coCoTips02"><span><spring:message code="label.cg200101.confirm.race"></spring:message></span></div>
		
		<div class="race-confirm-info">
			<div class="confirmPlayerRace" >
				<div class="player-choose-race-ani" id="playerChooseRace">
					
				</div>
			</div>
			<div class="race-info">
				<div class="you-choose-tips"><span><spring:message code="label.cg200101.player.choose"></spring:message></span></div>
				<div class="player-choose-race" id="playerRace"></div>
				<div class="confirmRaceButton"><img class="clickTone1" onClick="confimPlayerRace()" src="<p:localurl value="/resources/images/newPlayer/confirm.PNG"/>" /></div>
				<div class="newChooseRaceButton"><img class="clickTone1" onClick="choosePlayerRace()" src="<p:localurl value="/resources/images/newPlayer/newChoose.PNG"/>" /></div>
			</div>
		</div>
	
	</div>
	
	
	
	
	<div class="cg200101-content" style="display:none">
		<div class="camp-adv">
			<img
				src='<p:localurl value="/resources/images/xuanchuan/cg200101camp.png"/>'>
		</div>

		<div class="menu-font-max center-site commonPading08">
			<span><spring:message code="label.cg200101.welcome"></spring:message></span>
		</div>

		<div class="center-site">
			<div class="fc-normal-08-m commonPadding-top03 tips_cg2001">
				<span><spring:message code="label.cg200101.newcommer.reward"></spring:message></span>
				<span class="red-font2"><spring:message
						code="label.cg200101.newcommer.reward.value"></spring:message></span> <span><spring:message
						code="label.cg200101.newcommer.reward.info"></spring:message></span>
			</div>
		</div>

		<div class="split-01"></div>

		<div class="center-site font-weight-style">
			<div class="system-content-other commonPading08">
				<span><spring:message code="label.cg200101.newcommer.join"></spring:message></span>
			</div>
		</div>

		<div class="split-01"></div>

		<div class="commonPadding-top02">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="fc-normal-01-l phase-header3">
						<span class="padding-left-style"><spring:message
								code="label.cg200101.newcommer.camp.human"></spring:message></span>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="camp-content">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="camp-info02-new">
								<span id="camp-info-font01"><spring:message
										code="label.cg200101.newcommer.camp.human.info"></spring:message></span>
							</div>

							<div class="commonPading-top01">
								<img class="camp-new-pic"
									src='<p:localurl value="/resources/images/new-human.png"/>' />
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="conference-buttons">
				<img class="clickTone1"
					onclick="location.href='<p:fullurl value="/cg2001/cg200102/index/HUMAN"/>';event.preventDefault();"
					src='<p:localurl value="/resources/images/buttons/xuanzerenlie-blue-d.png"/>'>
			</div>

		</div>

		<div class="split-01"></div>

		<div class="commonPadding-top02">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="fc-normal-04-l phase-header3">
						<span class="padding-left-style"><spring:message
								code="label.cg200101.newcommer.camp.taitan"></spring:message></span>
					</div>
				</div>
				<div class="camp-content">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="camp-info02-new">
								<span id="camp-info-font02"><spring:message
										code="label.cg200101.newcommer.camp.taitan.info"></spring:message></span>
							</div>
							<div class="commonPading-top01">
								<img class="camp-new-pic"
									src='<p:localurl value="/resources/images/new-taitan.png"/>' />
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="conference-buttons">
				<img class="clickTone1"
					onclick="location.href='<p:fullurl value="/cg2001/cg200102/index/TAITAN"/>';event.preventDefault();"
					src='<p:localurl value="/resources/images/buttons/xuanzetaitan-yellow-d.png"/>'>

			</div>

		</div>

		<div class="split-01"></div>

		<div class="commonPadding-top02">
			<div class="panel-01">
				<div class="panel-header-style">
					<div class="fc-normal-02-l phase-header3">
						<span class="padding-left-style"><spring:message
								code="label.cg200101.newcommer.camp.yiling"></spring:message></span>
					</div>
				</div>
				<div class="camp-content">
					<div class="borderPanel">
						<div class="panelA-header"></div>
						<div class="panelA-body panelA10-height"></div>
						<div class="panelA-footer"></div>
						<div class="border-content-noleft">
							<div class="camp-info02-new">
								<span id="camp-info-font03"><spring:message
										code="label.cg200101.newcommer.camp.yiling.info"></spring:message></span>
							</div>
							<div class="commonPading-top01">
								<img class="camp-new-pic"
									src='<p:localurl value="/resources/images/new-lingyi.png"/>' />
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="conference-buttons">
				<img class="clickTone1"
					onclick="location.href='<p:fullurl value="/cg2001/cg200102/index/LINGYI"/>';event.preventDefault();"
					src='<p:localurl value="/resources/images/buttons/xuanzeyiling-green-d.png"/>'>
			</div>

		</div>
	</div>


</div>

<input id="cocoInfo002" type="hidden" value="<spring:message code="label.cg200135.coco.tips02"></spring:message>" />
<div class="content getMainCard" style="display:none">
	<div class="animationHolder">
		<div class="contentLightRayOper">
			<div class="light" id="layer_02">
				<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
			</div>
			<div class="light" id="layer_03">
				<img src="<p:localurl value="/resources/images/animation/light_01.png"/>" />
			</div>
		</div>	
		<div class="contentGet" style="display:none;">
			<div class="contentGet-cg200135" >		
				<img style="width:80%;" src="<p:cardImg type="big" id="${playerMainCard.cardId}"></p:cardImg>">
			</div>
		</div>
	</div>
	<div class="cg200101-ani-world" style="display:none;"></div>	
	
	
	<div class="cg200101-ani-coco" style="display:none;">	
			<div class="upBlack" style="display:none;"></div>
			<div class="cocoPic" style="display:none;">
				<img style="width:100%;" src="<p:localurl value="/resources/images/newPlayer/coco.PNG"/>" />
			</div>
			
			
			<div class="conversation-bg clickTone1"  onClick="cocoInfo02()" style="display:none;">
				<div class="conversation-info">
						<span id="cocoIntroduce001"><spring:message code="label.cg200135.coco.tips"></spring:message></span>										
				</div>
				<div class="arrow-beat "><img src="<p:localurl value="/resources/images/newPlayer/arrow.PNG"/>" /></div>				
			</div>			
					
			<div class="downBlack" style="display:none;"></div>			
			
	</div>
	
	
</div>


