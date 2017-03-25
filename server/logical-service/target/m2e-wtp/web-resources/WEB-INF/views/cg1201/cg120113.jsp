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
		<span class="label-title-attack"><spring:message code="label.cg120113.union.build.title"/></span>
	</div>

	<utils:npcDialog dialogVal="label.cg120113.union.build.npc" dialogType="msgKey" imageType="2" />

	<c:forEach items="${unionSatelliteViewDataList}" var="unionSatelliteViewData">

		<div class="union-satellite-style">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB12-height"></div>
			<div class="panelB-footer"></div>
			
			<div class="border-content-noleft">
				
				<div class="consumer-list">
					<div class="consumer-list-title">
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
						
					<input name ="id" id="${unionSatelliteViewData.enumSatelliteType}id" type="hidden" value="${unionSatelliteViewData.id}" />
			<input name ="unionId" id="${unionSatelliteViewData.enumSatelliteType}unionId" type="hidden" value="${unionSatelliteViewData.unionId}" />
			<input name ="level" id="${unionSatelliteViewData.enumSatelliteType}level" type="hidden" value="${unionSatelliteViewData.level}" />
			<input name ="exp" id="${unionSatelliteViewData.enumSatelliteType}exp" type="hidden" value="${unionSatelliteViewData.exp}" />
			<input name ="defenceMax" id="${unionSatelliteViewData.enumSatelliteType}defenceMax" type="hidden" value="${unionSatelliteViewData.defenceMax}" />
			<input name ="growingPercent" id="${unionSatelliteViewData.enumSatelliteType}growingPercent" type="hidden" value="${unionSatelliteViewData.growingPercent}" />
			<input name ="enumSatelliteType" id="${unionSatelliteViewData.enumSatelliteType}enumSatelliteType" type="hidden" value="${unionSatelliteViewData.enumSatelliteType}" />
			<input name ="upgradeCount" id="${unionSatelliteViewData.enumSatelliteType}upgradeCount" type="hidden" value="${unionSatelliteViewData.upgradeCount}" />
			<input name ="silverCoin" id="${unionSatelliteViewData.enumSatelliteType}silverCoin" type="hidden" value="${unionSatelliteViewData.silverCoin }" />
						
					
					
					
					
					</div>
					<div class="consumer-list-image2"></div>
					<div style="width:100%;">
						<div class="union-sate-type">
							<div class="bottomPart_line_image01">
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
						</div>
						
						<div class="union-build-style">
							<div class="build-info">
								<div class="system-content-bold commonPadding-top06">
									<span class="fc-title-02"><spring:message code="label.cg120113.union.build.defence"/> : </span><span id="${unionSatelliteViewData.enumSatelliteType}spandefenceMax">${unionSatelliteViewData.defenceMax }</span>
								</div>
								<div class="system-content-bold commonPadding-top02">
									<span class="fc-title-02"><spring:message code="label.cg120113.union.build.unionCoin"/> : </span><span name="allunionSilverCoin">${union.silverCoin }</span>
								</div>
								
								<div class="system-content-bold commonPadding-top02">
									<span class="fc-title-02"><spring:message code="label.cg120113.union.build.staExp" /> : </span>
									<span id="${unionSatelliteViewData.enumSatelliteType}spancurrentExp">${unionSatelliteViewData.exp }</span> /
									<span id="${unionSatelliteViewData.enumSatelliteType}spannextLevelExp">${unionSatelliteViewData.nextLevelExp }</span>
								</div>
								
								<div class="commonPadding-top02" style="overflow: hidden;">
									<div class="system-content-bold union-build-level" >
										<span class="fc-title-02"><spring:message code="label.cg120113.union.build.level"/> : </span><span id="${unionSatelliteViewData.enumSatelliteType}spanlevel">${unionSatelliteViewData.level }</span>
									</div>
									<div id = "${unionSatelliteViewData.enumSatelliteType}divgrowingPercent" class="processing-bar-blue fc-normal-01-m union-build-per" processbar="${unionSatelliteViewData.growingPercent }" ></div>								
								</div>								
								<div class="commonPadding-top02 center-site upSatellite clickTone1" id="${unionSatelliteViewData.enumSatelliteType}">
									<img src='<p:localurl value="/resources/images/buttons/shengji-green.png"/>'>								
								</div>
								<div class="clearfix"></div>
							</div>
						</div>	
					</div>
				</div>
			</div>
		   
		</div>
	</div>

	</c:forEach>
</div>

<script type="text/javascript" charset="utf-8" >

$(function() {
	$(".upSatellite").each(function() {
		$(this).bind("click",oneClick);	
	});
});

function oneClick(){
	var obj = this;
	var enumSatelliteType = $(this).attr("id");
	var silverCoin = "#"+enumSatelliteType + "silverCoin";
	var unionId = "#"+enumSatelliteType +"unionId";
	var satelliteid ="#" +enumSatelliteType+"id";
	var urld =	"<p:fullurl value='/cg1201/cg120113/upgradeUnionSatellite/'/>"+$(unionId).val()+"/"+$(satelliteid).val();
				
	kpyxConfirm(getMessage($(silverCoin).val()),function(){
		//解除click绑定，防止多次点击
		$(obj).unbind("click");
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urld,randomParms,function (message){
			if(null != message && true == message.result)
				{
				  //修改所有星球的公会水晶
				  
				  var div = $(".system-content-bold");
				  div.find("span[name=allunionSilverCoin]").html(message.data.union.silverCoin);
				  //修改星球的防御上限
				  var spanUniondefenceMax = "#"+enumSatelliteType +"spandefenceMax";
				  $(spanUniondefenceMax).html(message.data.defenceMax);
				  //修改对应的星球的等级
				  var spanUnionLevel = "#"+enumSatelliteType +"spanlevel";
				  $(spanUnionLevel).html(message.data.level);

				  //修改对应的星球当前的经验值
				  var spancurrentExp = "#"+enumSatelliteType +"spancurrentExp";
				  $(spancurrentExp).html(message.data.exp);
				  //修改对应的星球升下一级所需经验值
				  var spannextLevelExp = "#"+enumSatelliteType +"spannextLevelExp";
				  $(spannextLevelExp).html(message.data.nextLevelExp);
				  
				  //修改对应的星球的升级需要的水晶
				  $(silverCoin).val(message.data.silverCoin);
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
				}
				kpyxTips(message.errorMessage);	
				//执行完之后重新绑定click事件
				$(obj).bind("click",oneClick);
			},("json"));
	},function(){
		window.close();
	});
}

function getMessage(silverCoin)
{
	return  "<spring:message code='label.cg12030.you.will.use'></spring:message>"+silverCoin+"<spring:message code='label.cg12030.union.upgrade'></spring:message>";
}



</script>
