<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div>
		<img class="union-pic-style" src='<p:localurl value="/resources/images/xuanchuan/gonghuixuanchuan.png"/>'/>	
	</div>
	<div class="split-01"></div>
	
	<div>
		<div class="conference-buttons">
			<div>
				<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120116/index"/>';event.preventDefault();">
					<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/juanzeng-blue-x.png"/>'>
				</a>
			</div>
			
			<div id="goUnionWar" class="pointer_class">
				<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lianmengzhanzheng-blue-x.png"/>'>	
			</div>
		</div>
		
		<div  class="conference-buttons">
			<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120114/index"/>';event.preventDefault();"> 
				<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/liangmengzhengcheng-blue-z.png"/>'>
			</a>
		</div>
		
		<div class="conference-buttons">
			
			<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1' or unionViewData.unionMemberVOSelf.unionTitleId == 'U2'}">
				<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120121/index" />';event.preventDefault();">
					<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lianmengzhanshenqing-green-x.png"/>'>
				</a> 
			</c:if>
			<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U3'}">
				<div><img class="button_gray" src='<p:localurl value="/resources/images/buttons/lianmengzhanshenqing-green-x.png"/>'></div>
			</c:if>
			
			 <%--    <div><img class="button_gray" src='<p:localurl value="/resources/images/buttons/lianmengzhanshenqing-green-x.png"/>' onclick="notopen()"></div> --%>
			<div>
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1' or unionViewData.unionMemberVOSelf.unionTitleId == 'U2'}">
					<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120113/index/${unionViewData.id}" />';event.preventDefault();">
						<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jianshe-green-x.png"/>'>	
					</a>
				</c:if>
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U3'}">
					<img class="button_gray" src='<p:localurl value="/resources/images/buttons/jianshe-green-x.png"/>'>	
				</c:if> 
			</div>
		</div>
		
		<div class="conference-buttons">
			<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1' or unionViewData.unionMemberVOSelf.unionTitleId == 'U2'}">
				<a href="#" onclick="location.href = '<p:fullurl value="/cg1203/cg120308/index/${unionViewData.id}" />';event.preventDefault();">
					<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/VIPxingxizhanshenqing-green-z.png"/>'>
				</a>
			</c:if>
			<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U3'}">
				<img class="button_gray" src='<p:localurl value="/resources/images/buttons/VIPxingxizhanshenqing-green-z.png"/>'>	
			</c:if>
			<%--  <img class="button_gray" src='<p:localurl value="/resources/images/buttons/VIPxingxizhanshenqing-green-z.png"/>' onclick="notopen()"/> --%>
		</div>
		
		
		
	</div>
	<div class="split-01"></div>
	<div style="text-align: center">
		*<spring:message code="label.cg120112.union.defence" />
	</div>
	<div >
		
		<div id ="initJoinDefenceDateImg" class="conference-buttons clickTone1" 
					style='display:<c:if test="${isNeedDefence == true}"> block </c:if>
						<c:if test="${isNeedDefence == false }"> none </c:if>'>
					<img src='<p:localurl value="/resources/images/buttons/lianmengqiandao.png"/>'>
				</div>
				
				<div id="initJoinDefenceDateImgGray" onclick="joinDefenceDateGray()" class="conference-buttons"
					style='display:<c:if test="${isNeedDefence == true}"> none </c:if>
						<c:if test="${isNeedDefence == false}"> block </c:if>'>
					<img class="button_gray" src='<p:localurl value="/resources/images/buttons/lianmengqiandao.png"/>'>
		</div>
	</div>
	<c:if test="${true == showSpareWarStartTime }">
		<div class="center-site">
			<div id="startDate" class="fc-withwild-s system-content start-date-style"></div>
		</div>
	</c:if>
	
	<c:if test="${true == showSpareWarEndTime }">
		<div class="link">
			<a id="endDate" class="fc-link system-title pointer_class" style="text-decoration: underline;"></a>
		</div>
	</c:if>
	
	<c:if test="${true == showSpareWarStartTime || true == showSpareWarEndTime }">
		<div class="split-01"></div>
	</c:if>
	<div>
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header">
					<span class="padding-left22"><spring:message code="label.cg120112.union.message" /></span>
				</div>
			</div>
			<div class="union-view-info">
				<div class="borderPanel">
				<div class="panelA-header"></div>
				<div class="panelA-body panelA17-height cg120112-height"></div>
				<div class="panelA-footer"></div>
				<div class="border-content-noleft">
					<div class="lableText02 commonPading01">
						<span><c:out value="${unionViewData.name }"/></span>
					</div>
					<div class="split-item-down"></div>
					
					<div class="alliance-info">
						<div style="float: left;">
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.level" />: </span> <span>${unionViewData.level }</span>
						</div>
						<div class="grow-percent-style02">
							<div class="processing-bar-blue fc-normal-01-m" processbar="${unionViewData.growingPercent }"></div>
							<div class="pro-bar-num2 clearfix">
								<span id="defence">${unionViewData.exp}</span> <span>/</span> <span id="defenceMax">${unionViewData.nextLevelExp}</span>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="alliance-info">
						<div class="union-member-width">
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.member" />: </span><span>${unionViewData.memberCount }</span> <span>/</span><span>${unionViewData.maxMemberCount }</span>
						</div>
						<div class="union-silvercoin-width">
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.coin" />: </span><span>${unionViewData.silverCoin }</span>
						</div>
						
					</div>
					<div class="alliance-info">
						<div class="union-president-width" >
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.president" />: </span><span>${unionViewData.creatorName }</span>
						</div>
						<div class="union-combatgains-width">
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.combatgains" />: </span>
							<span><c:if test="${empty unionViewData.winTimes}">0  </c:if> ${unionViewData.winTimes }</span><span class="fc-normal-02-l"><spring:message code="label.cg120112.union.win" /></span>
							<span><c:if test="${empty unionViewData.loseTimes}"> 0</c:if>${unionViewData.loseTimes }</span><span class="fc-normal-04-l"><spring:message code="label.cg120112.union.lose" /></span>
						</div>
					</div>
					<div class="alliance-info">
						<div class="vice-chairman-width">
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.vicechairman" />: </span><span>${unionViewData.deputyCommanderName }</span>
						</div>
						<div class="apply-member-width">
							<span class="fc-normal-05-l"><spring:message code="label.cg120112.union.applymember" />: </span><span>${unionViewData.applyNumber }</span>
						</div>						
					</div>
					<div class="split-item-down"></div>
					
					<div class="conference-buttons">
						<div>
							<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120119/index"/>';event.preventDefault();">
								<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/juanzenglvli-green.png"/>'>
							</a>
						</div>

						<div>
							<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120118/index"/>';event.preventDefault();">
								<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/juanzengpaiming-green.png"/>'>	
							</a>
						</div>
					</div>

					<div class="split-item-down"></div>
					
					<div class="lableText02 commonPading01" style="padding:0;">
						<span><spring:message code="label.cg120112.union.watchword" /></span>
					</div>
					
					<div class="split-item-down"></div>
					<div class="commonPading01">
						<div class="inputLabel input-label-height">
							<input id="description" value="${unionViewData.description }" type="text" class="union-des02"/>
						</div>
					</div>
					<div class="center-site clickTone1">
					
					<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1' or unionViewData.unionMemberVOSelf.unionTitleId == 'U2'}">
						<img id="bianjikazuImg"  src='<p:localurl value="/resources/images/buttons/bianji-green.png"/>'>
					</c:if>
					<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U3'}">
						<img class="button_gray" src='<p:localurl value="/resources/images/buttons/bianji-green.png"/>'>	
					</c:if>
						
					</div>
					<div class="split-item-down"></div>
						<div class="lableText02 commonPading01" style="padding:0;">
							<span><spring:message code="label.cg120112.union.board" /></span>
						</div>
					<div class="split-item-down"></div>
					<div class="commonPading01">
						<div class="inputLabel">
							<textarea class="textareastyle union-board-style" id="boardList" name="messageBody" readonly="readonly" ><c:forEach items="${unionViewData.unionBoardVOList}" var="unionBoardVO">${unionBoardVO.messageBody }&#13;</c:forEach></textarea>
						</div>
					</div>
				
				</div>
			</div>
			<div class="split-01"></div>
			
			<div class="conference-buttons">
				<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120109/index/${unionViewData.id}"/>';event.preventDefault();">
					<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/lianmengchenyuanyilan-blue-d.png"/>'>
				</a>
			</div>
			
			<div class="conference-buttons">
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U3' or unionViewData.unionMemberVOSelf.unionTitleId == 'U2'}">
					<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120111/index" />';event.preventDefault();">
						<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/tuichulianmeng-blue-d.png"/>'>
					</a>
				</c:if>
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1'}">
					<img class="button_gray" src='<p:localurl value="/resources/images/buttons/tuichulianmeng-blue-d.png"/>'>	
				</c:if>
			</div>
			
			<div class="conference-buttons">
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1' }">
					<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120109/index/${unionViewData.id}"/>';event.preventDefault();">
						<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/fenpeilianmengshuijng-blue-d.png"/>'>	
					</a>
				</c:if>
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId != 'U1'}">
					<img class="button_gray" src='<p:localurl value="/resources/images/buttons/fenpeilianmengshuijng-blue-d.png"/>'>	
				</c:if>
			</div>
			
			<div class="conference-buttons">
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId == 'U1' }">
					<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120115/index"/>';event.preventDefault();">
						<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jiesanlianmeng-blue-d.png"/>'>
					</a>
				</c:if>
				<c:if test="${unionViewData.unionMemberVOSelf.unionTitleId != 'U1' }">
					<img class="button_gray" src='<p:localurl value="/resources/images/buttons/jiesanlianmeng-blue-d.png"/>'>	
				</c:if>
			</div>
			
			<div id = "kaiqilianmengfuliImg" class="conference-buttons clickTone1" 
				style='display:<c:if test="${(unionViewData.canOpenBenifits == true && unionViewData.unionMemberVOSelf.unionTitleId == 'U1') or (unionViewData.canOpenBenifits == true && unionViewData.unionMemberVOSelf.unionTitleId == 'U2')}"> block </c:if>
					<c:if test="${unionViewData.canOpenBenifits == false || unionViewData.unionMemberVOSelf.unionTitleId == 'U3'}"> none </c:if>'>
				<img src='<p:localurl value="/resources/images/buttons/kaiqilianmengfuli-blue-d.png"/>'>
			</div>
			
			<div id="kaiqilianmengfuliImgGray" class="conference-buttons"
				style='display:<c:if test="${(unionViewData.canOpenBenifits == true && unionViewData.unionMemberVOSelf.unionTitleId == 'U1') or (unionViewData.canOpenBenifits == true && unionViewData.unionMemberVOSelf.unionTitleId == 'U2') }"> none </c:if>
					<c:if test="${unionViewData.canOpenBenifits == false || unionViewData.unionMemberVOSelf.unionTitleId == 'U3'}"> block </c:if>'>
				<img class="button_gray" src='<p:localurl value="/resources/images/buttons/kaiqilianmengfuli-blue-d.png"/>'>
			</div>

			<div class="union-benefit-style">
				<input name ="openBenefitsDate" id="openBenefitsDate" type="hidden" value="${unionViewData.openBenefitsDate }" />
				<div class="fc-withwild-s benefit-message-width"><span>${openBenefitsMessage }</span></div>
				<div class="fc-withwild-s benefit-result-width"><span id="openBenifitsResultTime" class="result-time-style"></span></div>
			</div>
		</div>
	</div>
	</div>
</div>
			
<script type="text/javascript">
var SysSecond; 
var InterValObj;

var startSecond;
var startDateObj;

var endSecond;
var endDateObj;

$(function(){
	$("#bianjikazuImg").click(function(){
		var encodeStr = encodeURI(encodeURI($("#description").val()));
		var urld =	"<p:fullurl value='/cg1201/cg120112/editDescription/'/>" + encodeStr +"/${unionViewData.id}";
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urld,randomParms,function(message){
			if(null != message &&  true == message.result)
				{
				   kpyxTips("<spring:message code='label.cg120112.edit.description.success'></spring:message>");	
				}
		},("json"));
	})
	
	$("#kaiqilianmengfuliImg").click(function(){
		var urld =	"<p:fullurl value='/cg1201/cg120112/openBenefits/${unionViewData.id}'/>";
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urld,randomParms,function(message){
			if(null != message &&  true == message.result) {
				//修改 联盟福利按钮
				$("#kaiqilianmengfuliImg").css("display", "none");
				$("#kaiqilianmengfuliImgGray").css("display", "block");
				
				SysSecond = 3600*24;
				InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
				
				kpyxTips("<spring:message code='label.cg120112.union.openbenifits' />");
				//重新显示动态
				getBoardList(message.data.unionBoardVOList);
			}else{
				kpyxTips(message.errorMessage);
			}
		},("json"));
	})
	
	$("#goUnionWar").click(function(){
		var url = "<p:fullurl value='/cg1201/cg120112/unionWar/${unionViewData.id}'/>";
		$.post(url, null, function(data){
			if(data && data.result){
				 var msg = data.errorMessage;
				if("NO_WAR" == msg){
					kpyxTips("<spring:message code='label.cg120112.union.nounionwar' />");
				}else{
					//进入联盟战页面
					window.location.href = "<p:fullurl value='/cg1201/cg120122/index/${unionViewData.id}'/>" + "/" + data.data;
				}
			}else{
				kpyxTips(data.errorMessage);
			}
		}, ("json"));
		/* kpyxTips("<spring:message code='label.notopen'/>"); */
	});
	
	// 进入VIP星系战
	$("#endDate").click(function(){
		var url = "<p:fullurl value='/cg1201/cg120112/vipSystemWar/${unionViewData.id}'/>";
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(url, randomParms, function(data){
			if(data && data.result){
				var msg = data.errorMessage;
				if("NO_WAR" == msg){
					kpyxTips("<spring:message code='label.cg120112.union.novipwar' />");
					window.clearInterval(startDateObj);
					$("#startDate").html("");
				}else{
					//进入VIP星系战页面
					window.location.href = "<p:fullurl value='/cg1203/cg120305/index/${unionViewData.id}'/>";
				}
			}else{
				kpyxTips(data.errorMessage);
			}
		}, ("json"));
	});
	
	//
	$("#initJoinDefenceDateImg").click(function(){
		var urld =	"<p:fullurl value='/cg1201/cg120112/initJoinDefenceDate'/>";
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urld,randomParms,function(message){
			if(null != message &&  true == message.result) {
				//修改 联盟福利按钮
				$("#initJoinDefenceDateImg").css("display", "none");				
				$("#initJoinDefenceDateImgGray").css("display", "block");
				kpyxTips("<spring:message code='label.cg120101.uniondate.tips1' />");
				
			}else{
				kpyxTips(message.errorMessage);
			}
		},("json"));
	})
	
})

$(document).ready(function(){
　　 if(${unionViewData.canOpenBenifits == false}) {
	// SysSecond = (Date.parse("${unionViewData.openBenefitsDate}").getTime()-new Date().getTime())%1000; //这里获取倒计时的起始时间 
		SysSecond = ${openleftTime}/1000;
		InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
	}
 
 	if(${true == showSpareWarStartTime }) {
 		startSecond = ${Saturday } / 1000;
 		startDateObj = window.setInterval(setVipWarStartTime, 1000); //间隔函数，1秒执行 
 	}
 	
 	if(${true == showSpareWarEndTime }) {
 		endSecond = ${Sunday } / 1000;
 		endDateObj = window.setInterval(setVipWarEndTime, 1000); //间隔函数，1秒执行 
 	}
}); 

function SetRemainTime() { 
  	if (SysSecond > 0) {
	  SysSecond = SysSecond - 1; 
	  var second = Math.floor(SysSecond % 60);             // 计算秒
	  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
	  var hour = Math.floor((SysSecond / 3600) % 24);      //计算小时 
	  // var day = Math.floor((SysSecond / 3600) / 24);        //计算天 
	  $("#openBenifitsResultTime").html(
			  "<spring:message code='label.cg120112.open.benifits.reopen'></spring:message>" + 
			  "<br/>" + hour + "<spring:message code='label.cg120112.union.hour' /> " + minite + "<spring:message code='label.cg120112.union.minutes' /> " + second + "<spring:message code='label.cg120112.union.seconds' />");
	} else {//剩余时间小于或等于0的时候，就停止间隔函数 
		window.clearInterval(InterValObj);
	  	$("#openBenifitsResultTime").html("");
	}
}

// 设置Vip公会战开始时间
function setVipWarStartTime(){
	if(startSecond > 0){
		startSecond = startSecond - 1;
		var second = Math.floor(startSecond % 60);             // 计算秒
		var minite = Math.floor((startSecond / 60) % 60);      //计算分 
		var hour = Math.floor((startSecond / 3600) % 24);      //计算小时 
		
		$("#startDate").html("<spring:message code='label.cg120112.union.open.vipwar' />" + hour + "<spring:message code='label.cg120112.union.hour' /> " + minite + "<spring:message code='label.cg120112.union.minutes' /> " + second + "<spring:message code='label.cg120112.union.seconds' />");
	} else {
		window.clearInterval(startDateObj);
		$("#startDate").html("");
	}
}
// 设置Vip公会战结束时间
function setVipWarEndTime(){
	if(endSecond > 0){
		endSecond = endSecond - 1;
		var second = Math.floor(endSecond % 60);             // 计算秒
		var minite = Math.floor((endSecond / 60) % 60);      //计算分 
		var hour = Math.floor((endSecond / 3600) % 24);      //计算小时 
		
		$("#endDate").html("<spring:message code='label.cg120112.union.vipwaring' /> " + hour + "<spring:message code='label.cg120112.union.hour' /> " + minite + "<spring:message code='label.cg120112.union.minutes' /> " + second + "<spring:message code='label.cg120112.union.seconds' /> " + " <spring:message code='label.cg120112.union.vipwar.close' />");
	} else {
		window.clearInterval(endDateObj);
		$("#endDate").html("");
	}
}

// 开启联盟福利之后，重新显示动态
function getBoardList(boardList){
	var msgBody = "";
	for (i=0; i<boardList.length; i++) {
		msgBody = msgBody + boardList[i].messageBody + "&#13;";
	}
	$("#boardList").html(msgBody);
}
function notopen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}

function joinDefenceDateGray(){
	kpyxTips('<spring:message code="label.cg120101.uniondate.tips2" />');
}
</script>