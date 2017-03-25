<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2201/CG2201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg220101.newWelfare.title"/></span>
	</div>

	<utils:npcDialog dialogVal="label.cg220101.newWelfare.npc" dialogType="msgKey" imageType="2" />
	
	<div class="center-yellowfont-style" style='display:<c:if test="${level_satisfy }" >none;</c:if><c:if test="${!level_satisfy }" >block;</c:if>'>
		<span>${level_message }</span>
	</div>
	<div class="center-yellowfont-style" style='display:<c:if test="${attack_satisfy }" >none;</c:if><c:if test="${!attack_satisfy }" >block;</c:if>'>
		<span>${attack_message }</span>
	</div>

	<div class="split-01"></div>
	
	<!-- 第一个领取新手福利按钮 -->
	<div id="a_green" class="cg2201-buttons" style='display:<c:if test="${newWelfareViewData.canDoWelfareA }" >block;</c:if><c:if test="${!newWelfareViewData.canDoWelfareA }" >none;</c:if>'>
		<img class="clickTone1 pointer_class button_green" src='<p:localurl value="/resources/images/buttons/huifuquanbunengliang1.png"/>'>
	</div>	
	<div id="a_gray" class="cg2201-buttons" style='display:<c:if test="${!newWelfareViewData.canDoWelfareA }" >block;</c:if><c:if test="${newWelfareViewData.canDoWelfareA }" >none;</c:if>'>
		<img class="clickTone1 button_gray"	src='<p:localurl value="/resources/images/buttons/huifuquanbunengliang1.png"/>'>
	</div>

	<div class="get-time"><span><spring:message code="label.cg220101.newWelfare.receiveTime"/>: 12:00-13:00</span></div>
	
	<div class="split-item-down padding-style25"></div>
	
	<!-- 第二个领取新手福利按钮 -->
	<div id="b_green" class="cg2201-buttons" style='display:<c:if test="${newWelfareViewData.canDoWelfareB }" >block;</c:if><c:if test="${!newWelfareViewData.canDoWelfareB }" >none;</c:if>'>
		<img class="clickTone1 pointer_class button_green" src='<p:localurl value="/resources/images/buttons/huifuquanbunengliang2.png"/>'>
	</div>
	<div id="b_gray" class="cg2201-buttons" style='display:<c:if test="${!newWelfareViewData.canDoWelfareB }" >block;</c:if><c:if test="${newWelfareViewData.canDoWelfareB }" >none;</c:if>'>
		<img class="clickTone1 button_gray" src='<p:localurl value="/resources/images/buttons/huifuquanbunengliang2.png"/>'>
	</div>
	
	<div class="get-time"><span><spring:message code="label.cg220101.newWelfare.receiveTime"/>: 17:30-18:30</span></div>
	
	<div class="split-01"></div>
	
	<div class="welfare-font"><span><spring:message code="label.cg220101.newWelfare.moreWelfare"/></span></div>
	
</div>

<script type="text/javascript">
	$(function(){
		// 恢复全部能量
		$(".button_green").click(function() {
			var randomParms = {anticache : Math.floor(Math.random()*1000)};
			$.post("<p:fullurl value='/cg2201/cg220101/recoverAllPower' />", randomParms, function(message) {
				if (message != null && message.result) {
					kpyxTips('<spring:message code="label.cg220101.newWelfare.success"/>');
					//重新设置按钮点击状态
					if(message.data.canDoWelfareA){
						$("#a_green").css("display", "block");
						$("#a_gray").css("display", "none");
					}else{
						$("#a_green").css("display", "none");
						$("#a_gray").css("display", "block");
					}
					
					if(message.data.canDoWelfareB){
						$("#b_green").css("display", "block");
						$("#b_gray").css("display", "none");
					}else{
						$("#b_green").css("display", "none");
						$("#b_gray").css("display", "block");
					}
				}else{
					kpyxTips('error');
				}
			}, "json");
		});
	});
</script>

