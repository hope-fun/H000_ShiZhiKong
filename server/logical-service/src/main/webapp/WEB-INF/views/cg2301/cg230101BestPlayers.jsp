<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2201/CG2201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2301.css?v=1"/>"/>
	
<script type="text/javascript">
$(document).ready(function () {
	var listHeight = $("#gamerDiv").css("height");
	$(".panelBG-height").css("height", listHeight);
});

function redirect(unionId, unionName){
	window.location.href = '<p:fullurl value="/cg1201/cg120106/index/playerRankingList/" />'+ unionId + '/' + encodeURI(encodeURI(unionName)) + '/' + 0;
	event.preventDefault();
}
</script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg230101.rank" /></span>
	</div>
	<div class="tab-panelButton">
		<div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangwanjia-yellow-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230101/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangyongbing-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230102/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/xingjizhengbabang-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230103/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangcishanjia-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230104/index/"/>';event.preventDefault();"/>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="info">
		<c:if test="${not empty prlVOList }">
			<div>
			
				<div class="my-rank">
					<c:if test="${not empty curPlayerRankingListVO }">
						<span><spring:message code="label.cg230101.myrank" /></span>
						<span>${ curPlayerRankingListVO.id}<spring:message code="label.cg230101.ranking" /></span>
					</c:if>
				</div>
				
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
								<!-- <div class="short-info"></div> -->
								<div class="clearfix"></div>
							</div>
							<div>
								<img class="line-style" src="<p:localurl value="/resources/images/hengtiao.png"/>" />
							</div>
						</div>
						
						
						<!--循环部分  开始-->
						<div id="gamerDiv">
							<c:forEach items="${prlVOList }" var="player" varStatus="status">
							<div>
								<div>
									<div class="short-info">
										<c:if test="${3 > status.index}">
											<div class="percent-margin-style95"> 
												<img class="ranking-icon-style ranking-icon-width" src="<p:localurl value="/resources/images/ranking-${status.index + 1 }.png"/>" />
											</div>
										</c:if>
										<c:if test="${2 < status.index}">
											<div class="percent-margin-style90">${status.index + 1 }</div>
										</c:if>
									</div>
									<div class="long-info02">
										<div class="percent-margin-style95"><c:out value="${player.playerName }" /></div>
									</div>
									<div class="short-info">
										<div class="percent-margin-style92">
										 <a href="#" onclick="location.href = '<p:fullurl value="/cg2201/cg220107/playerDetail/${player.playerId }?urlFrom=cg230101" />';event.preventDefault();">
								             <img class="apply-check-pic-style02 clickTone1" src="<p:localurl value="/resources/images/buttons/check.png"/>" />
								             </a>
										</div>
									</div>
									<div class="long-info-cg220107">
										<a href="#" onclick="redirect('${player.unionId }','${player.unionName }')" class="percent-margin-style95 fc-normal-04-l clickTone1"><c:out value="${player.unionName }" /></a>
									</div>
									<!-- 
									<div class="short-info">
										<div class="percent-margin-style92">
											<c:if test="${player.playerId eq playerVO.id }"></c:if>
											<c:if test="${player.playerId ne playerVO.id }">
												
												<c:if test="${player.iCanChallenge == true}" >	
													<img id="${player.playerId}_${status.index + 1}" class="tiaozhan apply-check-pic-style02 clickTone1" src="<p:localurl value="/resources/images/buttons/tiaozhan.png"/>" 
														onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${player.playerId}/false" />'"/>
												</c:if>
												<c:if test="${player.iCanChallenge == false}" >	
													<img class="tiaozhan apply-check-pic-style02 button_gray" src="<p:localurl value="/resources/images/buttons/tiaozhan.png"/>"/>
												</c:if>
											</c:if>
										</div>
									</div>
									 -->
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
		</c:if>
	</div>
	
</div>
