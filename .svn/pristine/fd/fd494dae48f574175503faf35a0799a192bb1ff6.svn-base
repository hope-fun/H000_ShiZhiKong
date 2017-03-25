<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="union" tagdir="/WEB-INF/tags/union" %>
<c:if test="${empty header['requestType']}">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">	

<div  class="content">
	<div class=" menu-medium title-label-03">
		<span>${targetUnionVO.name }</span>
			<input id="targetMirror" type="hidden" value="${unionWarTargetMirrorViewDataList[0].id}" />
			<input id="warStartDate" type="hidden" value="${warStartDate}" />
 			<input id="warleftTime" type="hidden" value="${warleftTime}" />
 			<input id="warRecordsId" type="hidden" value="${warRecordsId}" />
	</div>
	
	<union:targetMirror targetMirror="${unionWarTargetMirrorViewDataList}"></union:targetMirror>

	<div class="conference-buttons clickTone1" >
		<img 
			id="kaishigongji"   src='<p:localurl value="/resources/images/buttons/kaishigongji-green-z.png"/>' style="margin: 0 auto;display:<c:if test='${unionWarTargetMirrorViewDataList[0].defence>0}'>block</c:if><c:if test='${unionWarTargetMirrorViewDataList[0].defence<=0}'>none</c:if>"/>
	</div>
	
	<div class="conference-buttons clickTone1">
		<img 
			id="kaishigongjigray" src='<p:localurl value="/resources/images/buttons/kaishigongji-green-z.png"/>'  class="button_gray" style="margin: 0 auto;display: <c:if test='${unionWarTargetMirrorViewDataList[0].defence<=0}'>block</c:if><c:if test='${unionWarTargetMirrorViewDataList[0].defence>0}'>none</c:if>" >
	</div>
			

	<div class="conference-buttons clickTone1" >
		<img
			id="shiyongzhanhunengyuan"  src='<p:localurl value="/resources/images/buttons/shiyongzhanhunengyuan-blue-z.png"/>'>
	</div>

	<div class="sell-out-height">
		<div class="check-fight-resource">
		<input name ="checkzhanhunengyuan" type="checkbox" id="checkzhanhunengyuan" class="sell_out" checked="true"/>
			</div>
			
			<div class="fight-res-label">
			<span class="fc-normal-06-m system-content-other panleText"><label id ="checkzhanhunengyuanlabel" for="checkzhanhunengyuan" class="checkbox-checked-pic-style checkbox-checked" ></label>*选中复选框，自动使用战斗药剂</span>
			</div>
	</div>

	<div class="conference-buttons">
		<a href="#" onclick="location.href = '<p:fullurl value="/cg0901/cg090103/index" />';event.preventDefault();">
			<img class="clickTone1"
				src='<p:localurl value="/resources/images/buttons/goumaizhanhunengyuan-blue-z.png"/>'></a>
	</div>

	<div class="center-site commonPading01 menu-medium" >
		<span><spring:message code="label.cg120122.unionwar.warfare" />: </span><span id="concumableAttackNumber">${concumableAttackNumber }</span>
	</div>
	<div id="divcontent">
</c:if>		
		<c:if test="${not empty header['requestType'] or header['requestType'] == 'ajax' }">
			<div class="center-site commonPading01 menu-medium">
				<span><spring:message code="label.cg120122.unionwar.current.warfare" />: </span><span id="playerRealAttackPower">${cardGroupDivTagView.playerRealAttackPower}</span><span>/</span><span id="playerRealAttackPowerMax">${cardGroupDivTagView.playerRealAttackPowerMax}</span>
			</div>
		
			<union:cardGroupDiv cardGropDivTag="${cardGroupDivTagView}"></union:cardGroupDiv>
		</c:if>
		
		<c:if test="${empty header['requestType']}">
				<div class="center-site commonPading01 menu-medium">
				<span><spring:message code="label.cg120122.unionwar.current.warfare" />: </span><span id="playerRealAttackPower">${cardGroupDivTagView.playerRealAttackPower}</span><span>/</span><span id="playerRealAttackPowerMax">${cardGroupDivTagView.playerRealAttackPowerMax}</span>
			</div>
		
			<union:cardGroupDiv cardGropDivTag="${cardGroupDivTagView}"></union:cardGroupDiv>
		</c:if>
		</div>

</div>

<c:if test="${empty header['requestType']}">
<script type="text/javascript" charset="utf-8" >
			//存放上一次点击的img1对象
			var img1Object =null;
			//只有当前点击的镜像对象防御大于0才对该对象赋值，初始化时判断第一个镜像是否能被选中
			if(${unionWarTargetMirrorViewDataList[0].defence>0})
				{
				   img1Object=$("#img_${unionWarTargetMirrorViewDataList[0].id}")
				}else{
					findCanClickStar();
				}
		$(function() {
						
							//事件点击
							$("#kaishigongji").bind("click",beginAttack);
	
							//点击使用战护能源
							$("#shiyongzhanhunengyuan").bind("click",useconcumableAttack);
							
							$("#checkzhanhunengyuanlabel").click(function(){
								var isChecked = $("#checkzhanhunengyuan").attr('checked');
								if(isChecked == 'false'){
									$(this).removeClass('checkbox-pic-style').addClass('checkbox-checked-pic-style');
									$("#checkzhanhunengyuan").attr('checked', "true");
								}else{				
									$(this).removeClass('checkbox-checked-pic-style').addClass('checkbox-pic-style');
									$("#checkzhanhunengyuan").attr('checked', "false");
								}
								
							});
	});


$(document).ready(function(){ 
	
	
	
	 checkDestroy();　　 
	var  warleftTime =  $("#warleftTime").val();
	var sysSecond; 
	var interValObj; 
	var intervarlTimes = 0;	
		initInterval(warleftTime,"FALSE");
	
	}); 	
	
	
//warStartTime 毫秒，	"TRUE"或者"FALSE"		
function initInterval(warleftTime,isVip){
	
	//if(isVip == "TRUE")
	//	{
	//		intervarlTimes = warStartTime + (3600*24)*1000 -new Date().getTime();
	//	}else
	//	{
	//		intervarlTimes = warStartTime + (3600)*1*1000 - new Date().getTime();
	//	}
	    intervarlTimes = warleftTime;
		sysSecond = intervarlTimes/1000;
	//	sysSecond = 10;
		interValObj = window.setInterval(setRemainTime, 1000); //间隔函数，1秒执行 
	
	
	
}


function setRemainTime() { 
  	if (sysSecond > 0) {
  	  sysSecond = sysSecond - 1; 
	  var second = Math.floor(sysSecond % 60);             // 计算秒
	  var minite = Math.floor((sysSecond / 60) % 60);      //计算分 
	  var hour = Math.floor((sysSecond / 3600) % 24);      //计算小时 
	  var day = Math.floor((sysSecond / 3600) / 24);        //计算天 
	//  $("#openBenifitsResultTime").html(
	//		  "<spring:message code='label.cg120112.open.benifits.reopen'></spring:message>" + 
	//		  day + "天" + hour + "小时" + minite + "分钟" + second + "秒");
	} else {
		//剩余时间小于或等于0的时候，就停止间隔函数 
		window.clearInterval(interValObj);
	  	//跳转control
		window.location.href="<p:fullurl value='/cg1201/cg120122/encapAttackResult/'/>"+$("#warRecordsId").val()+"/FALSE";
	}
}
//函数确认是否已经获得胜利
function checkDestroy(){
	var grays = $("div[name='imgdivgary']");
	var number = 0;
	for(var i=0;i<grays.length;i++)
		{
		var innerGray = grays[i];
		
		var block = $(innerGray).css("display");
		if(block == "block")
			{
			  number++;
			}
		}
		if(number>=5)
			{
			//跳转control
			window.location.href="<p:fullurl value='/cg1201/cg120122/encapAttackResult/'/>"+$("#warRecordsId").val()+"/TRUE";
			}
}
//函数确认是否已经获得胜利
function checkDestroyOherCase(){
	var grays = $("div[name='imgdivgary']");
	var number = 0;
	for(var i=0;i<grays.length;i++)
		{
		var innerGray = grays[i];
		
		var block = $(innerGray).css("display");
		if(block == "block")
			{
			  number++;
			}
		}
		if(number>=4)
			{
								//获取当前星球对象进行判断是否已经成功击败
								var url = "<p:fullurl value='/cg1201/cg120122/getMirror/'/>"+$("#targetMirror").val();
								var randomParms = {anticache : Math.floor(Math.random()*1000)};
								$.post(url,randomParms,function (message){
									
									
									if(null != message && true == message.result)
										{
										 
										//根据当前defence修改星球图片状态
										if(message.data.defence <=0)
											{
												
								  			  kpyxTips("<spring:message code='label.cg120122.unionwar.stardestroy' />");
								  			
								  			  //跳转control
								  			  window.location.href="<p:fullurl value='/cg1201/cg120122/encapAttackResult/'/>"+$("#warRecordsId").val()+"/TRUE";
											}
										 
										}
										
										
									},("json"));
			
			}
}

function useconcumableAttack() {
	var url = "<p:fullurl value='/cg0701/cg070105/useDefenseConfirm'/>";
	
	var button = this;
	if($("#concumableAttackNumber").html()<=0)
		{
		kpyxTips("<spring:message code='label.cg120122.unionwar.warfare.empty' />");	
			return;
		}
	
	if($("#playerRealAttackPowerMax").html() == $("#playerRealAttackPower").html())
	{
		kpyxTips("<spring:message code='label.cg120122.unionwar.warfare.recover' />");	
		return;
	}
	//去除按钮click事件
	$(button).unbind("click");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post(url,randomParms,function (message){
		if(null != message && true == message.result)
			{
				$("#concumableAttackNumber").html(message.data.count);
				
				$("#playerRealAttackPower").html($("#playerRealAttackPowerMax").html());
				
				kpyxTips("<spring:message code='label.cg0706.reward.have.recover'></spring:message>");
			}
		//恢复按钮click事件
		$(button).bind("click",useconcumableAttack);
	},("json"));
	
}



function beginAttack() {
	var buttonEvent = this;
	var playerRealAttackPower = $("#playerRealAttackPower").html();
	var cardGroupAttackRequire = $("#cardGroupAttackRequire").html();
	var cardGroupTotalAttack = $("#cardGroupTotalAttack").html();
		 if($("#defence").html()<=0)
			 {
			 kpyxTips("<spring:message code='label.cg120122.unionwar.statille.fail' />");
			 findCanClickStar();
			//如果所有的星球都被击败了跳转胜利页面
			   checkDestroy();
			 	return 
			 }
	    //如果复选框被选中则
	    var concumableAttackNumber =$("#concumableAttackNumber").html();
	    var IsUseConsumable="FALSE";
		   if( $("#checkzhanhunengyuan").attr('checked') == 'true')
			   {
				   if(eval(concumableAttackNumber) <=0 && eval(playerRealAttackPower) < eval(cardGroupAttackRequire))
			   		{
			   			kpyxTips("<spring:message code='label.cg120122.unionwar.use.warfare' />");
			   		 return 
			   		}else
			   		{
			  		 	IsUseConsumable="TRUE";
			   			
			   		}
			   }
		//判断当前用户是否能攻击
		if(IsUseConsumable =="FALSE" && eval(playerRealAttackPower) < eval(cardGroupAttackRequire))
			{
			
			 	kpyxTips("<spring:message code='label.cg120122.unionwar.replenish.warfare' />");	
			 	//如果当前只剩下一个星球及时判断该星球是否被击败，击败的话跳转胜利页面
				 checkDestroyOherCase();
				return 
			}
		if(cardGroupTotalAttack<=0)
			{
			    kpyxTips("<spring:message code='label.cg120122.unionwar.card.attack' />");	
			    
				return
			}
			
			var url = "<p:fullurl value='/cg1201/cg120122/attackTargetMirror/'/>"+cardGroupTotalAttack+"/"+$("#targetMirror").val()+"/"+cardGroupAttackRequire+"/"+IsUseConsumable;
			
			//去除点击事件
			$(buttonEvent).unbind("click");
			//灰色按钮
			$(buttonEvent).css("opacity","0.5");
			
			//开始动画
			/*
			var imagVar=$("#img1_"+$("#targetMirror").val());
			imagVar.addClass("contentShake");
			setTimeout(function(){
				imagVar.removeClass("contentShake");
			},350);
			*/
			var randomParms = {anticache : Math.floor(Math.random()*1000)};
			$.post(url,randomParms,function (message){
				
				
				if(null != message && true == message.result)
					{
					  //修改剩余防御力 
					 $("#defence").html(message.data.defence);
					 //修改最大防御力 
					 $("#defenceMax").html(message.data.defenceMax);
					 //修改消费品数量
					 $("#concumableAttackNumber").html(message.data.concumableAttackNumber);
					 //修改用户的战护力
					 $("#playerRealAttackPower").html(message.data.playerRealAttackPower);
					//根据当前defence修改星球图片状态
						if(message.data.defence <=0)
							{
								//修改图片为灰色
								var imagegary="#imgdivgary_"+$("#targetMirror").val();
							 	$(imagegary).css("display", "block");
							 	
							 	var image="#img1div_"+$("#targetMirror").val();
				  			    $(image).css("display", "none");
				  			    img1Object = null;
				  				kpyxTips("<spring:message code='label.cg120122.unionwar.statille.destroy' />");
				  				//设置攻击按钮为不可攻击状态
				  			  	$("#kaishigongji").css("display", "none");
				  			    $("#kaishigongjigray").css("display", "block");
				  			    findCanClickStar();
				  				//如果所有的星球都被击败了跳转胜利页面
				  			    checkDestroy();
							}
						else{
								//设置当前星球被选中
								var image1="#img1div_"+$("#targetMirror").val();
								$(image1).css("display", "block");
								var image="#imgdiv_"+$("#targetMirror").val();
				  			    $(image).css("display", "none");
								img1Object = image1;
								
							}
					 
					 
					 
					 //修改对应的星球的百分比
					 var divgrowingPercent = "#"+"divgrowingPercent";
					 $(divgrowingPercent).attr("processbar",message.data.growingPercent);
					  var processTarget = $('.processing-bar');
					  var processbars = $('div[processbar]');
					  processTarget.removeClass("processing-bar");
					  $(".processbar-child").remove();
					  processbars.processbar();
					  processTarget = null;
					  processbars = null;
					}
				//恢复按钮click事件
				$(buttonEvent).bind("click",beginAttack);
				//恢复按钮
				$(buttonEvent).css("opacity","1");
				},("json"));
			
	}
	
function getTargetMirror(targetMirrorVO) {
	var targetMirrorVar = targetMirrorVO;
	var id = targetMirrorVar.id;
	if(null != id)
		{
				var imageType = targetMirrorVar.id.split("_")[0];
				var mirrorId =  targetMirrorVar.id.split("_")[1];
				if(imageType=="img"){
					var randomParms = {anticache : Math.floor(Math.random()*1000)};
								var url = "<p:fullurl value='/cg1201/cg120122/getMirror/'/>"+mirrorId;
								$.post(url,randomParms,function (message){
									
									if(null != message && true == message.result)
										{
										  //修改剩余防御力 
										 $("#defence").html(message.data.defence);
										 //修改最大防御力 
										 $("#defenceMax").html(message.data.defenceMax);
										 //设置当前选中的targetMirrorId
										 $("#targetMirror").val(mirrorId);
										 
										//去除上一个选中的对象的图片
										 if(null != img1Object)
											 {
												 var lastmirrorId = $(img1Object).attr("id").split("_")[1];
												 var lastimage1 = $("#img1div_"+lastmirrorId);
												 var lastimage = $("#imgdiv_"+lastmirrorId);
												 $(lastimage).css("display", "block");
												 $(lastimage1).css("display", "none");
											 }
										//根据当前defence修改星球图片状态
										if(message.data.defence <=0)
											{
												//修改图片为灰色
												var imagegary="#imgdivgary_"+mirrorId;
											 	$(imagegary).css("display", "block");
											 	
											 	var image="#imgdiv_"+mirrorId;
								  			    $(image).css("display", "none");
								  			    img1Object = null;
								  			  kpyxTips("<spring:message code='label.cg120122.unionwar.statille.destroy' />");
								  			 //设置攻击按钮为不可攻击状态
								  			  	$("#kaishigongji").css("display", "none");
								  			    $("#kaishigongjigray").css("display", "block");
								  			  	
								  			//如果所有的星球都被击败了跳转胜利页面
								  			    checkDestroy();
								  			 	findCanClickStar();
											}
										else{
												//设置当前星球被选中
												var image1="#img1div_"+mirrorId;
												$(image1).css("display", "block");
												var image="#imgdiv_"+mirrorId;
								  			    $(image).css("display", "none");
												img1Object = image1;
												//设置攻击按钮为可攻击状态
								  			  	$("#kaishigongji").css("display", "block");
								  			    $("#kaishigongjigray").css("display", "none");
											}
										
										
										
										 
										 //修改对应的星球的百分比
										 var divgrowingPercent = "#"+"divgrowingPercent";
										 $(divgrowingPercent).attr("processbar",message.data.growingPercent);
										  var processTarget = $('.processing-bar');
										  var processbars = $('div[processbar]');
										  processTarget.removeClass("processing-bar");
										  $(".processbar-child").remove();
										  processbars.processbar();
										  processTarget = null;
										  processbars = null;
										}
									},("json"));
								}
		}		
}	
	
	
	
/**
 * 寻找可点击的星球
 */
function findCanClickStar(){
	var targetMirrorImgs = $("img[class='targetMirrorImg']");
	for(var i=0;i<targetMirrorImgs.length;i++)
		{
			
			var targetMirrorImg = targetMirrorImgs[i]
			var block = $(targetMirrorImg).parent().css("display");
			if(block == "block")
				{
					$(targetMirrorImg).click();
					return;
				}
			
		}
	//
}


</script>
</c:if>	