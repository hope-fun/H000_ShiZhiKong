<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">

	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.cg120114.union.task.title"/></span>
	</div>

	<utils:npcDialog dialogVal="label.cg120114.union.task.npc" dialogType="msgKey" imageType="2" />
	
	<c:if test="${isShowVipDoTask == true  }">
			<div id="yijianwancheng" class="yijianwancheng-anniu"><img src='<p:localurl value="/resources/images/union/yijianwancheng-green-z.png"/>'></div>
	</c:if> 
	<c:if test="${isShowVipDoTask == false }">
		<div class="button_gray yijianwancheng-anniu"><img src='<p:localurl value="/resources/images/union/yijianwancheng-green-z.png"/>'></div>
	</c:if>
	
	
	<div class="split-01"></div>
	<c:forEach items="${unionSatelliteViewDataList }" var="unionSatelliteViewData">
	<input name ="id" id="${unionSatelliteViewData.enumSatelliteType}id" type="hidden" value="${unionSatelliteViewData.id}" />
	<div class="satellite-type-style">

		<div class="menu-medium title-label-02">
			<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'ASATELLITE')}">
				<span class="menu-large">${unionSatelliteViewData.name }</span>
			</c:if>
			<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'BSATELLITE')}">
				<span class="fc-normal-01-l menu-large">${unionSatelliteViewData.name }</span>
			</c:if>
			<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'CSATELLITE')}">
				<span class="fc-normal-02-l menu-large">${unionSatelliteViewData.name }</span>
			</c:if>
			<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'DSATELLITE')}">
				<span class="fc-normal-04-l menu-large">${unionSatelliteViewData.name }</span>
			</c:if>
			<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'ESATELLITE')}">
				<span class="fc-normal-06-l menu-large">${unionSatelliteViewData.name }</span>
			</c:if>
		</div>


		<div class="satellite-info-style02">
			<div>
				<div class="borderPanel">
					<div class="panelC-header"></div>
					<div class="panelC-body panelC07-height"></div>
					<div class="panelC-footer"></div>
					<div class="border-content-noleft">
						<div class="satellite-pic">
							<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'ASATELLITE')}">
								<img src='<p:localurl value="/resources/images/union/1.png"/>'>
							</c:if>
							<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'BSATELLITE')}">
								<img src='<p:localurl value="/resources/images/union/2.png"/>'>
							</c:if>
							<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'CSATELLITE')}">
								<img src='<p:localurl value="/resources/images/union/3.png"/>'>
							</c:if>
							<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'DSATELLITE')}">
								<img src='<p:localurl value="/resources/images/union/4.png"/>'>
							</c:if>
							<c:if test="${fn:contains(unionSatelliteViewData.enumSatelliteType, 'ESATELLITE')}">
								<img src='<p:localurl value="/resources/images/union/5.png"/>'>
							</c:if>
						</div>
						<div class="satellite-info">

							<div class="commonPading03" style="overflow: hidden;">
								<div class="system-content-bold union-task-level">
									<span class="fc-title-02"><spring:message code="label.cg120114.union.task.level"/> : </span><span id="${unionSatelliteViewData.enumSatelliteType}spanlevel">${unionSatelliteViewData.level }</span>
								</div>
								<div id="${unionSatelliteViewData.enumSatelliteType}divgrowingPercent"  class="processing-bar-blue fc-normal-01-m grow-per-width"
									processbar="${unionSatelliteViewData.growingPercent }"></div>
							</div>
							
							<div class="system-content-bold commonPadding-top02">
								<span class="fc-title-02"><spring:message code="label.cg120113.union.build.staExp" /> : </span>
								<span id="${unionSatelliteViewData.enumSatelliteType}spancurrentExp">${unionSatelliteViewData.exp }</span> /
								<span id="${unionSatelliteViewData.enumSatelliteType}spannextLevelExp">${unionSatelliteViewData.nextLevelExp }</span>
							</div>
							
							<div class="system-content-bold commonPading03">
								<span class=" fc-title-02"><spring:message code="label.cg120114.union.task.defence"/> : </span><span id="${unionSatelliteViewData.enumSatelliteType}spandefenceMax">${unionSatelliteViewData.defenceMax }</span>
							</div>
							<div class="fc-normal-06-m system-content-other commonPading03">
								<span><spring:message code="label.cg120114.union.task.message"/></span>
								
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="conference-buttons">
			<div>
				<div class="clickTone1 aa" id='${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[0].enumSatelliteTaskType}div' style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[0].canDotask == true}">block</c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[0].canDotask == false}"> none </c:if>'>
					<img id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[0].enumSatelliteTaskType}"
						src='<p:localurl value="/resources/images/buttons/renwuyi-blue-x.png"/>'>
				</div>
				<div id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[0].enumSatelliteTaskType}divgray" style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[0].canDotask == false}"> block </c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[0].canDotask == true}"> none </c:if> '>
					<img class="button_gray" 
						src='<p:localurl value="/resources/images/buttons/renwuyi-blue-x.png"/>'>
				</div>
				<div class="fc-title-02">
					<span>(0:00-12:00)</span>
				</div>
			</div>

			<div>
				<div class="clickTone1 aa" id='${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[1].enumSatelliteTaskType}div' style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[1].canDotask == true}"> block</c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[1].canDotask == false}"> none </c:if>'>
					<img id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[1].enumSatelliteTaskType}"
						src='<p:localurl value="/resources/images/buttons/renwuer-blue-x.png"/>'>
				</div>
				<div id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[1].enumSatelliteTaskType}divgray" style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[1].canDotask == false}"> block</c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[1].canDotask == true}"> none</c:if> '>
					<img class="button_gray" 
						src='<p:localurl value="/resources/images/buttons/renwuer-blue-x.png"/>'>
				</div>
				<div class="fc-title-02">
					<span>(12:00-18:00)</span>
				</div>
			</div>
		</div>

		<div class="conference-buttons">
			<div>
				<div class="clickTone1 aa" id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[2].enumSatelliteTaskType}div" style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[2].canDotask == true}"> block </c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[2].canDotask == false}"> none </c:if>'>
					<img id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[2].enumSatelliteTaskType}"
						src='<p:localurl value="/resources/images/buttons/renwusan-blue-x.png"/>'>
				</div>
				<div id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[2].enumSatelliteTaskType}divgray" style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[2].canDotask == false}"> block </c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[2].canDotask == true}"> none </c:if> '>
					<img class="button_gray" 
						src='<p:localurl value="/resources/images/buttons/renwusan-blue-x.png"/>'>
				</div>
				<div class="fc-title-02">
					<span>(18:00-24:00)</span>
				</div>
			</div>

			<div>
				<div class="clickTone1 aa" id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[3].enumSatelliteTaskType}div" style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[3].canDotask == true}"> block </c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[3].canDotask == false}"> none </c:if>'>
					<img id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[3].enumSatelliteTaskType}"
						src='<p:localurl value="/resources/images/buttons/tongshuaifuli-green-x.png"/>'>
				</div>
				<div id="${unionSatelliteViewData.enumSatelliteType}_${unionSatelliteViewData.unionTaskRecordsViewDatas[3].enumSatelliteTaskType}divgray" style='display:<c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[3].canDotask == false}"> block </c:if><c:if test="${unionSatelliteViewData.unionTaskRecordsViewDatas[3].canDotask == true}"> none </c:if> '>
					<img class="button_gray" 
						src='<p:localurl value="/resources/images/buttons/tongshuaifuli-green-x.png"/>'>
				</div>
				<div class="fc-title-02">
					<span><spring:message code="label.cg120114.union.task.fuli"/></span>
				</div>
			</div>
		</div>

	</div>
	
	</c:forEach>
		

		

</div>
<c:if test="${not empty vipDoAllTask }">
		<script>
			$(document)
					.ready(
							function() {
								kpyxTips("${vipDoAllTask}");
							});
		</script>
</c:if>
<script type="text/javascript" charset="utf-8" >

$(function() {
	$(".conference-buttons").find("img").each(function() {
		$(this).bind("click",task);	
	});	
	
	
	$("#yijianwancheng").click(function() {
		$(this).unbind("click");
		window.location.href = "<p:fullurl value="/cg1201/cg120114/vipDoAllUnionTask" />";
	});	
});


// $(document).ready(
// 		function() {
// 			if(${isShowVipDoTask} == false)
// 				{
// 					kpyxTips("${vipDoAllTask}");
// 				}
// 		});

function task(){
	var obj = this;
	var enumSatelliteType = $(this).attr("id").split("_")[0];
	var enumSatelliteTaskType = $(this).attr("id").split("_")[1];
	var unionId = "#"+enumSatelliteType +"unionId";
	var satelliteid ="#" +enumSatelliteType+"id";
	var urld =	"<p:fullurl value='/cg1201/cg120114/doUnionSatelliteTask/'/>"+$(satelliteid).val()+"/"+enumSatelliteTaskType;
	//解除click绑定，防止多次点击
	$(obj).unbind("click");
	var randomParms = {anticache : Math.floor(Math.random()*1000)};
	$.post(urld,randomParms,function (message){
		if(null != message && true == message.result){
			  //修改星球的防御上限
			  var spanUniondefenceMax = "#"+enumSatelliteType +"spandefenceMax";
			  $(spanUniondefenceMax).html(message.data.defenceMax);
			  
			  //修改对应的星球当前的经验值
			  var spancurrentExp = "#"+enumSatelliteType +"spancurrentExp";
			  $(spancurrentExp).html(message.data.exp);
			  //修改对应的星球升下一级所需经验值
			  var spannextLevelExp = "#"+enumSatelliteType +"spannextLevelExp";
			  $(spannextLevelExp).html(message.data.nextLevelExp);
			  
			  //修改对应升级需要的水晶
			  var spanUnionLevel = "#"+enumSatelliteType +"spanlevel";
			  //修改对应的星球的等级
			  $(spanUnionLevel).html(message.data.level);
			  //修改对应的星球的百分比
			  var divgrowingPercent = "#"+enumSatelliteType +"divgrowingPercent";
			  $(divgrowingPercent).attr("processbar",message.data.growingPercent);
			  var processTarget = $('.processing-bar');
			  var processbars = $('div[processbar]');
			  processTarget.removeClass("processing-bar");
			  $(".processbar-child").remove();
			  processbars.processbar();
			  processTarget = null;
			  processbars = null;
			  //修改点击的任务状态
			  var imagDivId ="#"+enumSatelliteType+"_"+enumSatelliteTaskType+"div";
			  var imagDivIdGray ="#"+enumSatelliteType+"_"+enumSatelliteTaskType+"divgray";
			  for(var i=0;i<message.data.unionTaskRecordsViewDatas.length;i++){
			  	   if(message.data.unionTaskRecordsViewDatas[i].canDotask == true && message.data.unionTaskRecordsViewDatas[i].enumSatelliteTaskType == enumSatelliteTaskType){
			  			  $(imagDivId).css("display", "block");
			  			  $(imagDivIdGray).css("display", "none");
			  			  break;
			  		}
			  		if(message.data.unionTaskRecordsViewDatas[i].canDotask == false && message.data.unionTaskRecordsViewDatas[i].enumSatelliteTaskType == enumSatelliteTaskType){
			  		  	$(imagDivId).css("display", "none");
		  			 	$(imagDivIdGray).css("display", "block");
			  			break;
			  		}
				  }
			}
			
		kpyxTips(message.errorMessage);	
		//执行完之后重新绑定click事件
		$(obj).bind("click",task);	
	},("json"));
}
</script>
