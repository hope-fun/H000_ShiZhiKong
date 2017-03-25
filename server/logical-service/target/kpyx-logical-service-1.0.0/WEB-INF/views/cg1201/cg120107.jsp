<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">


<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1207.union.title" /></span>
	</div>
	<input type="hidden" id="union_Name" value="${unionName }">
	<div>
		<utils:npcDialog dialogVal="label.cg1207.union.npc" dialogType="msgKey" imageType="2" />
	</div>
	
	<div class="lableText">
		<span>${message }</span>
	</div>
	<div class="commonPading01 join-union">
		<a href="#" onclick="apply('${type}','${unionId }')">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/querenshenqing-blue-z.png"/>" /></a>
	</div>
	<div class="commonPading01 join-union">
		<a href="#" onclick="redirect()">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/xunzhaoqitaliangmeng-green-z.png"/>" /></a>
	</div>
	<!-- 返回星际争霸赛 liaoyuehong_new start  -->
	<div class="commonPading01 join-union"
		style='display:<c:if test="${type eq 'starRankGame' }">block;</c:if><c:if test="${type ne 'starRankGame' }">none;</c:if>'>
		<a href="#" onclick="redirectStarRankGame()">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>" /></a>
	</div>
	<!-- 返回星际争霸赛 liaoyuehong_new end  -->
	
	<!-- add by shichao Septemner 10 : 返回最强玩家排行榜  -->
	<div class="commonPading01 join-union"
		style='display:<c:if test="${type eq 'playerRankingList' }">block;</c:if><c:if test="${type ne 'playerRankingList' }">none;</c:if>'>
		<a href="#" onclick="redirectPlayerRankingList()">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>" /></a>
	</div>
	
	<!-- add by shichao Septemner 10 : 返回星际争霸排行榜  -->
	<div class="commonPading01 join-union"
		style='display:<c:if test="${type eq 'bestFighterRankingList' }">block;</c:if><c:if test="${type ne 'bestFighterRankingList' }">none;</c:if>'>
		<a href="#" onclick="redirectBestFighterRankingList()">
			<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>" /></a>
	</div>
</div>
<script type="text/javascript">
	//确认申请
	function apply(type,unionId){
		window.location.href = '<p:fullurl value="/cg1201/cg120107/confirmApply/" />' + type + '/' + unionId + '/' + encodeURI(encodeURI($("#union_Name").val())) + '/' + ${pageIndex };
		event.preventDefault();
	}
	//返回联盟首页
	function redirect(){
		var unionName = $("#union_Name").val();
		if(unionName == "null"){
			window.location.href = '<p:fullurl value="/cg1201/cg120105/index?pageIndex=" />' + ${pageIndex };
		}else{
			window.location.href = '<p:fullurl value="/cg1201/cg120105/index?unionName=" />'+ encodeURI(encodeURI(unionName)) + '&pageIndex=' + ${pageIndex };
		}		
		event.preventDefault();
	}
	
	//返回慈善总会排行页,星际慈善总会排行(2013-6-9)
	function redirectCharitable(){
		window.location.href = '<p:fullurl value="/cg2201/cg220103/index?pageIndex=" />' + ${pageIndex };
		event.preventDefault();
	}
	
	// 返回星际争霸赛 liaoyuehong_new ----- start ------
	function redirectStarRankGame(){
		window.location.href = '<p:fullurl value="/cg2201/cg220107/index?pageIndex=" />' + ${pageIndex };
		event.preventDefault();
	}
	// 返回星际争霸赛 liaoyuehong_new ----- end ------
	
	// add by shichao Septemner 10 : 返回最强玩家排行榜
	function redirectPlayerRankingList(){
		window.location.href = '<p:fullurl value="/cg2301/cg230101/index"/>';
		event.preventDefault();
	}
	
	// add by shichao Septemner 10 : 返回星际争霸排行榜  
	function redirectBestFighterRankingList(){
		window.location.href = '<p:fullurl value="/cg2301/cg230103/index"/>';
		event.preventDefault();
	}
</script>