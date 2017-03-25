<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
function excuteGeneratePlayer(){
	var lowLevel=document.getElementById("lowLevel").value;
	var highLevel=document.getElementById("highLevel").value;
	var url="<p:fullurl value='/cg2401/cg240101/excuteGeneratePlayer'/>"+"/"+lowLevel+"/"+highLevel;
	window.location.href=url;

	
}
</script>
<div>
<span style="color: black;"><spring:message code="label.cg2401.cg240101.shengchengwanjia"/></span>
<span style="color: black;"><spring:message code="label.cg2401.cg240101.dengjixiaxian"/></span><input type="text" id="lowLevel"/>
<span style="color: black;"><spring:message code="label.cg2401.cg240101.dengjishangxian"/></span><input type="text" id="highLevel"/>
<input type="button" value="start" onclick="excuteGeneratePlayer()">
</div>

<div>
<span style="color: black;"><spring:message code="label.cg2401.cg240101.shengchengwanjiaqitaxinxi"/></span>
<input type="button" value="start" onclick="window.location.href='<p:fullurl value='/cg2401/cg240101/excuteGeneratePlayerExtraInfo'/>'">
</div>

<div>
<span style="color: black;"><spring:message code="label.cg2401.cg240101.jiaruPVP"/></span>
<input type="button" value="start" onclick="window.location.href='<p:fullurl value='/cg2401/cg240101/autoJoinStarRankGame'/>'">
</div>