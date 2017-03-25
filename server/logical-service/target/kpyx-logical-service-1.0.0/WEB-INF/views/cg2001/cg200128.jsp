<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript">
function copyAccount() {	
	JSInterface.copyAccount("星际L0L");	
	//kpyxTips("<spring:message code='label.cg200128.copyaccountsuccess' />");
}

$(document).ready(function(){
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		JSInterface.showUpandDown("NO");
		 //音效   ma_li 开始 星际之门背景音乐
		JSInterface.clickTone(218);
		JSInterface.clickTone(125);
	}, false);
});

</script>
<div class="content">

	<div class="center-site">

		<div class="fc-normal-02-m commonPadding-top">
			<span><spring:message code="label.cg2001.newcommer.reward.info"></spring:message></span>
		</div>
		<div class="fc-normal-05-m commonPading01 commonPadding-botton">
			<span><spring:message
					code="label.cg2001.newcommer.challenge.step10"></spring:message></span>
		</div>

	</div>   

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200128.title"></spring:message></span>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img-new">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>

					<div class="npc-message-cg200102-new">
						<div><span><spring:message code="label.cg200128.npc.info"></spring:message></span><span
							style="color: rgb(254, 225, 28);"><spring:message
								code="label.cg200128.npc.info.view"></spring:message></span> <span><spring:message
								code="label.cg200128.npc.info.plus"></spring:message></span> <span
							style="color: rgb(254, 225, 28);"><spring:message
								code="label.cg200128.npc.info.win"></spring:message></span><span><spring:message
								code="label.cg200128.npc.info.word"></spring:message></span> <span
							class="red-font"> <spring:message
								code="label.cg200128.npc.info.kik"></spring:message></span> <span><spring:message
								code="label.cg200128.npc.message"></spring:message></span>
						</div>
						<div class="copy_account clickTone1"><img onclick="copyAccount()" src='<p:localurl value="/resources/images/buttons/fuzhizhanghao-green-x.png"/>'></div>

					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="advertise-activity">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/cg020108win.png"/>'>
	</div>

	<div class="center-site commonPading01 commonPadding-top04"
		style="width: 100%;">
		<span class="fc-content-02"><spring:message
				code="label.cg200128.player.reward"></spring:message></span>
	</div>


	<div class="center-site commonPading03">
		<img src="<p:equipImg type="large" id="${equipment.id }"/>" />
	</div>

	<div class="center-site" style="width: 100%;">
		<span class="fc-normal-05-m">${equipment.name}</span>
	</div>
	<div class="center-site fc-content-03" style="width: 100%;">
		<span><spring:message code="label.cg200128.player.equip.count"></spring:message></span><span>1</span>
	</div>

	<div>
		<div class="split-01"></div>
	</div>
	<div class="conference-buttons commonPadding01">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200129/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>'>
	</div>

	<div class="conference-buttons commonPadding-top03">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200131/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/tiaoguoxinshoujiaocheng-blue-z.png"/>'>
	</div>
	
	<div class="center-site">
		<div class="fc-normal-08-m commonPading01">
			<span><spring:message code="label.cg200105.notice2"></spring:message></span>
		</div>
	</div>
	
</div>