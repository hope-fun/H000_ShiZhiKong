<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/CG030102.css?v=1" />">
<script type="text/javascript">
function download(){
	
		JSInterface.downloadResources("download");

}
</script>
<script>
function cannotExchange(){
	kpyxTips($("#cannotExchange").val());
}

function exchange(bossId){
	var url="<p:fullurl value='/cg2601/cg260106/exchange/'/>"+bossId;
	$.post(url,null,function(message){
		if(null != message){
			kpyxTips(message.data,function(){
				window.location.href="<p:fullurl value='/cg2601/cg260102/index'/>";
			});
		}
	},("json"));
}

</script>

<div class="content cg030102CardDetail">
    <input type="hidden" id="cannotExchange" value='<spring:message code="label.cg260106.cannotexchange" />'>	
	<div class="pageTitle menu-large" >
		<span><spring:message code="label.cg030102.carddetail.title"></spring:message></span>
	</div>
	<div style="margin-top:-20px;"><span class="tipsOfdownload"><spring:message code="label.cg030102.downloadTips"></spring:message></span>
	<span  onclick="download()"class="fc-download fs-underline"><spring:message code="label.cg030102.download"></spring:message></span>
	</div>
	<cards:detail03 item="${card }"></cards:detail03>
	<div style="text-align: center;">
	<c:if test="${ not empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/></span><span style="color:white;vertical-align: top;">${playerVO.beadsCount }</span>
	</c:if>
	<c:if test="${empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/><span style="color:white;vertical-align: top;">0</span></span>
	</c:if>
	</div>
	<c:if test="${canExchange }">
	<div class="text-center" onclick="exchange('${boss.id}')" style="padding-top:20px;">
	<img  src='<p:fullurl value="/resources/images/buttons/exchange_button.PNG"/>'>
	<div style="margin-top: -96px;font-size: 26pt;"><spring:message code="label.cg260106.need"/><span style="font-size: 28pt;color: orange;">${boss.requireBeads }</span><spring:message code="label.cg260106.beadsexchange"/></div>
	</div>
	</c:if>
	<c:if test="${!canExchange }">
	<div class="text-center button_gray" onclick="cannotExchange()" style="padding-top:20px;">
	<img  src='<p:fullurl value="/resources/images/buttons/exchange_button.PNG"/>'>
	<div style="margin-top: -96px;font-size: 26pt;"><spring:message code="label.cg260106.need"/><span style="font-size: 28pt;color: orange;">${boss.requireBeads }</span><spring:message code="label.cg260106.beadsexchange"/></div>
	</div>
	</c:if>
	<div style="text-align: center;margin-top: 100px;">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg2601/cg260102/index"/>';event.preventDefault();"/>
	</div>
		<div style="overflow: hidden;height:50px;width:720px;"></div>
</div>