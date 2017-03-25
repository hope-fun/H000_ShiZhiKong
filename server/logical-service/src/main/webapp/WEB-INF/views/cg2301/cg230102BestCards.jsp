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

</script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg230101.rank" /></span>
	</div>
	<div class="tab-panelButton">
		<div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangwanjia-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230101/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangyongbing-yellow-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230102/index/"/>';event.preventDefault();"/>
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
		<c:if test="${not empty pcrlVOList }">
			
			<div class="my-rank">
				<c:if test="${not empty curPlayerCardRankingListVO }">
					<span><spring:message code="label.cg230101.myrank" /></span>
					<span>${ curPlayerCardRankingListVO.id}<spring:message code="label.cg230101.ranking" /></span>
				</c:if>
			</div>
			
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
									<div class="percent-margin-style95 padding-top"><spring:message code="label.cg230102.card" /></div>
								</div>
								<div class="short-info">
									<div class="percent-margin-style92 padding-top"><spring:message code="label.cg230102.detail" /></div>
								</div>
								<div class="long-info-cg220107">
									<div class="percent-margin-style95 padding-top"><spring:message code="label.cg230102.owner" /></div>
								</div>
								<!--<div class="short-info"></div> --><div class="short-info"></div>
								<div class="clearfix"></div>
							</div>
							<div>
								<img class="line-style" src="<p:localurl value="/resources/images/hengtiao.png"/>" />
							</div>
						</div>
						
						<!--循环部分  开始-->
						<div id="gamerDiv">
							<c:forEach items="${pcrlVOList }" var="item" varStatus="status">
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
										<div class="percent-margin-style95"><c:out value="${item.playerCardName }" /></div>
									</div>
									<div class="short-info">
										<div class="percent-margin-style92">
										<!-- 借用comeFromCG1301属性来控制显示信息，确保用户只能查看卡牌信息，不能对该卡牌做操作 -->
										 <a href="#" onclick="location.href = '<p:fullurl value="/cg0301/cg030102/index/${item.playerCardId }?comeFromCG1301=true" />';event.preventDefault();">
								             <img class="apply-check-pic-style02 clickTone1" src="<p:localurl value="/resources/images/buttons/check.png"/>" />
								             </a>
										</div>
									</div>
									<div class="long-info-cg220107">
										<a href="#" onclick="location.href = '<p:fullurl value="/cg2201/cg220107/playerDetail/${item.playerId }?urlFrom=cg230102"/>'" class="percent-margin-style95 fc-normal-04-l clickTone1"><c:out value="${item.playerName }" /></a>
									</div>
									<!--  <div class="short-info">
										<div class="percent-margin-style92">
											<c:if test="${item.playerId eq playerVO.id }"></c:if>
											<c:if test="${item.playerId ne playerVO.id }">
												<c:if test="${item.iCanChallenge == true}" >	
													<img id="${item.playerId}_${status.index + 1}" class="tiaozhan apply-check-pic-style02 clickTone1" src="<p:localurl value="/resources/images/buttons/tiaozhan.png"/>" 
													onclick="location.href='<p:fullurl value="/cg0401/cg040106/index/${item.playerId}/false" />'"/>
												</c:if>
												<c:if test="${item.iCanChallenge == false}" >	
													<img class="tiaozhan apply-check-pic-style02 button_gray" src="<p:localurl value="/resources/images/buttons/tiaozhan.png"/>" />
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
