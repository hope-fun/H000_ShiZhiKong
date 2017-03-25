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
	href="<p:fullurl value="/resources/css/CG2501/CG2501.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
function notOpen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
function closed(){
	kpyxTips("<spring:message code='label.closed'/>");
}
function levelnotenough(){
	kpyxTips("等级过低，无法开启");
}
</script>
<div class="content">
	<div class="activity-banner-bg">
		<img src='<p:localurl value="/resources/images/activity/activityDesBanner.PNG"/>'>
	</div>
	<div class="activity-des-info">
		<div><span><spring:message code="label.cg250106.activity.des1"></spring:message></span></div>
		<div><span><spring:message code="label.cg250106.activity.des2"></spring:message></span></div>
	</div>
	<div class="borderPanel padding-top-50">		
		<div class="panelE-header"></div>
		<div class="panelE-body panelE-height" style="height:450px;"></div>
		<div class="panelE-footer"></div>
		<div class="border-content-noleft">
			 <div class="activity-rule-pic">
			 	<img src='<p:localurl value="/resources/images/activity/activityRule.PNG"/>'>			 
			 </div>
			 <div class="rules-info">
			 	<div><spring:message code="label.cg250106.activity.rule1"></spring:message></div>
			 	<div><spring:message code="label.cg250106.activity.rule2"></spring:message></div>
			 	<div><spring:message code="label.cg250106.activity.rule3"></spring:message></div>
			 	<div><spring:message code="label.cg250106.activity.rule4"></spring:message></div>
			 	<div><spring:message code="label.cg250106.activity.rule5"></spring:message></div>
			 	<div><spring:message code="label.cg250106.activity.rule6"></spring:message></div>
			 	<div><spring:message code="label.cg250106.activity.rule7"></spring:message></div>
			 </div>
		</div>
	</div>
	<c:if test="${beforeActivty }">
	<div style="padding-top:30px;" class="text-center clickTone1 button_gray" onclick="notOpen()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${inActivity && playerVO.level>=20 }">
	<div style="padding-top:30px;" class="text-center clickTone1" onclick="window.location.href='<p:fullurl value="/cg2601/cg260102/index"/>'"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${inActivity && playerVO.level<20 }">
	<div class="text-center clickTone1 button_gray" onclick="levelnotenough()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${afterActivity }">
	<div class="text-center clickTone1 button_gray" style="padding-top:30px;"onclick="closed()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	
	<div class="back-activity-button clickTone1" onclick="window.location.href='<p:fullurl value="/cg2601/cg260101/index"/>'">
		<img src='<p:localurl value="/resources/images/activity/backActivityPage.PNG"/>'>	
	</div>
	
	<div style="overflow: hidden;height:50px;width:720px;"></div>
</div>


