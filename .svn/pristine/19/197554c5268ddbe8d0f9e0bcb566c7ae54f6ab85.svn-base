<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2201/CG2201.css?v=1"/>">
<script type="text/javascript">
$(document).ready(function() {
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
		//音效  ma_li  119  2013_11_7
		JSInterface.clickTone(119);		
	}, false);
	
});
</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg220107.starRankGame.title" /></span>
	</div>
	
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="fc-normal-05-m npc-info-width">
						<spring:message code="label.cg220107.starRankGame.npc" />
					</div>
				</div>
			</div>
		</div>
	</div>
    <div class="cg220107-buttons text-center font-size">
    <span class="pvpfontcolor"><spring:message code="label.cg220107.starRankGame.bencikelingqu"/></span>
    <span class="fc-normal-01-l button-large">${totalRewardConquestPoints }</span>
    <span class="pvpfontcolor"><spring:message code="label.cg220107.starRankGame.zhengfudianshu"/></span>
    </div>
	
		<div class="cg220107-buttons">
			<img class="clickTone1" id="lingqujiangli" src='<p:localurl value="/resources/images/buttons/lingqujiangli.png"/>'>
		</div>
		<div class="cg220107-buttons">
			 <a href="#" onclick="location.href = '<p:fullurl value="/cg2201/cg220107/rule" />';event.preventDefault();">
			     <img class="clickTone1" src='<p:localurl value="/resources/images/buttons/bisaiguize.png"/>'>
			</a>
			
		</div>
    <div class="text-center font-size"><span class="pvpfontcolor"><spring:message code="label.cg220107.starRankGame.mianfeiPVP"/></span><span>${player.freeAttackTimes }<spring:message code="label.cg220107.starRankGame.ci"/></span></div>
	<div class="center-yellowfont">
		<span class=""><spring:message code="label.cg220107.starRankGame.myRanking" /></span> 
		<span class="fc-content-01"><c:out value="${gamePlayer.ranking }" /></span>
	</div>

	<div class="split-01"></div>

	<form action="" method="POST" name="searchForm">
		<div class="search-ranking">
			<div class="fc-content-02 search-message"><spring:message code="label.cg220107.starRankGame.searchRanking" /> </div>
			<div class="search-info">
				<input class="search-info-detail" name="ranking" id="searchRanking" type="text" maxlength="5" onafterpaste="this.value=this.value.replace(/\D/g,'')" onkeyup="this.value=this.value.replace(/\D/g,'')" onchange="this.value=this.value.replace(/\D/g,'')" value="${not empty searchVO.ranking ? searchVO.ranking : '' }" />
			</div>
			<div class="search-button">
				<img class="clickTone1" id="searchBtn" src='<p:localurl  value="/resources/images/buttons/search.png"/>'>
			</div>
		</div>
	</form>

	<!-- 分页开始 -->
	<div class="info">
	<c:if test="${not empty gamePlayerList }">
		<c:set var="paginationParams" value="${gamePlayerList}" scope="request" />
		<c:set var="paginationUrl" value="/kpyx-logical-service/cg2201/cg220107/index" scope="request" />
		<tags:pagination items="${gamePlayerList }" paginationUrl="${paginationUrl }" searchData="${searchVO }" method="GET">
		<consumable:consumableMoveDiv d2="${d2}" d1="${d1}"></consumable:consumableMoveDiv>
		<input type="hidden" id="unionName" value='null' />
		<input type="hidden" id="pageIndex" value='<c:if test="${not empty searchVO.pageIndex }">${searchVO.pageIndex }</c:if><c:if test="${empty searchVO.pageIndex }">0</c:if>' />
		
		<div>
			<div class="borderPanel" style="width: 100%;">
				<div class="panelBG-cg220107-header"></div>
				<div class="panelBG-cg220107-body panelBG-height" style="height: auto;"></div>
				<div class="panelBG-cg220107-footer"></div>
				
				<div class="border-content-noleft">
					<div>
						<div>
							<div class="short-info">
								<div class="percent-margin-style90 padding-top"><spring:message code="label.cg220107.starRankGame.title.ranking" /></div>
							</div>
							<div class="long-info02">
								<div class="percent-margin-style95 padding-top"><spring:message code="label.cg220107.starRankGame.title.id" /></div>
							</div>
							<div class="short-info">
								<div class="percent-margin-style92 padding-top"><spring:message code="label.cg220107.starRankGame.title.detail" /></div>
							</div>
							<div class="long-info-cg220107">
								<div class="percent-margin-style95 padding-top"><spring:message code="label.cg220107.starRankGame.title.union" /></div>
							</div>
							<div class="short-info"></div>
							<div class="clearfix"></div>
						</div>
						<div>
							<img class="line-style" src="<p:localurl value="/resources/images/hengtiao.png"/>" />
						</div>
					</div>
					
					<!--循环部分  开始-->
					<div id="gamerDiv">
						<c:forEach items="${gamePlayerList }" var="gamePlayerSelf" varStatus="status">
						<div>
							<div>
								<div class="short-info">
									<c:if test="${4 > gamePlayerSelf.ranking}">
										<div class="percent-margin-style95"> 
											<img class="ranking-icon-style ranking-icon-width" src="<p:localurl value="/resources/images/ranking-${gamePlayerSelf.ranking }.png"/>" />
										</div>
									</c:if>
									<c:if test="${3 < gamePlayerSelf.ranking}">
										<div class="percent-margin-style90">${gamePlayerSelf.ranking }</div>
									</c:if>
								</div>
								<div class="long-info02">
									<div class="percent-margin-style95"><c:out value="${gamePlayerSelf.playerName }" /></div>
								</div>
								<div class="short-info">
									<div class="percent-margin-style92">
									 <a href="#" onclick="location.href = '<p:fullurl value="/cg2201/cg220107/playerDetail/${gamePlayerSelf.playerId }" />';event.preventDefault();">
							             <img class="apply-check-pic-style02 clickTone1" src="<p:localurl value="/resources/images/buttons/check.png"/>" />
							             </a>
									</div>
								</div>
								<div class="long-info-cg220107">
									<a href="#" onclick="redirect('${gamePlayerSelf.unionId }')" class="percent-margin-style95 fc-normal-04-l clickTone1"><c:out value="${gamePlayerSelf.unionName }" /></a>
								</div>
								<div class="short-info">
									<div class="percent-margin-style92">
										<img id="${gamePlayerSelf.playerId}_${gamePlayerSelf.ranking}" class="tiaozhan apply-check-pic-style02 clickTone1" src="<p:localurl value="/resources/images/buttons/tiaozhan.png"/>" />
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div>
								<img class="line-style " src="<p:localurl value="/resources/images/hengtiao.png"/>" />
							</div>
						</div>
						</c:forEach>
					</div>
					<!--循环部分  结束-->
				</div>
			</div>
		</div>
		</tags:pagination>
	</c:if>
	</div>
	<!-- 分页开始 -->
</div>

<script type="text/javascript">

$(document).ready(function () {
	var listHeight = $("#gamerDiv").css("height");
	$(".panelBG-height").css("height", listHeight);
});

$(function () {
	$("#searchBtn").click(function () {
		var searchRankingNum = $("#searchRanking").val();
		var reg = new RegExp("^[0-9]*$");
		
		if(!reg.test(searchRankingNum))
			{
			kpyxTips("<spring:message code='label.cg220107.starRankGame.searchRanking_info2' />");
			return;
			}
		if(0 == searchRankingNum || ${gamePlayerTotal } < searchRankingNum){
			kpyxTips("<spring:message code='label.cg220107.starRankGame.searchRanking_info2' />");
			return;
		}
		
		if(${maxNum } < searchRankingNum){
			kpyxTips("${maxNumMsg }");
			return;
		}
		
		// 搜索提交
		var frm = $("form[name=searchForm]");
		$("form[name=searchForm]").attr("action", "<p:fullurl value='/cg2201/cg220107/index' />");
		// $("form[name=searchForm]").submit();
		document.forms["searchForm"].submit();
	});
	
	$(".tiaozhan").click(function() {
		
		var rivalPlayerId = $(this).attr("id").split("_")[0];
		var rivalPlayerRanking = $(this).attr("id").split("_")[1];
		var myRanking = ${gamePlayer.ranking };
		
		if(eval(rivalPlayerRanking) == eval(myRanking))
		{
			kpyxTips("<spring:message code='label.cg220107.cannotattackself' />");	
			return;
		}
		//跳转control
		 window.location.href="<p:fullurl value='/cg2201/cg220107/attackRival/'/>"+rivalPlayerId+"/false";
		
	});	
	
	$("#lingqujiangli").click(function() {
		
		var url = "<p:fullurl value='/cg2201/cg220107/reward'/>";
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(url,randomParms,function (message){
			if(null != message && true == message.result)
				{
		  			  kpyxTips(message.data.message,function(){
		  				window.location.href="<p:fullurl value='/cg2201/cg220107/index'/>";
		  			  });
				}
			},("json"));
		
	});	
	
	
});




function redirect(unionId){
	window.location.href = '<p:fullurl value="/cg1201/cg120106/index/starRankGame/" />'+ unionId + '/' + encodeURI(encodeURI($("#unionName").val())) + '/' + $("#pageIndex").val();
	event.preventDefault();
}

</script>
