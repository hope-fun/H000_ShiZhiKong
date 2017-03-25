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
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1201/cg120105.js'/>"></script>

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
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangyongbing-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230102/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/xingjizhengbabang-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230103/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zuiqiangcishanjia-yellow-b.png"/>" onclick="location.href='<p:fullurl value="/cg2301/cg230104/index/"/>';event.preventDefault();"/>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="info">
		<c:if test="${not empty charitableChartsList }">
		
			<div class="my-rank">
				<c:if test="${not empty playerRank && playerRank ne 0}">
					<span><spring:message code="label.cg230101.myrank" /></span>
					<span>${ playerRank}<spring:message code="label.cg230101.ranking" /></span>
				</c:if>
			</div>
		
			<div>
				<div class="borderPanel" style="width: 100%;">
					<div class="panelBG-header"></div>
					<div class="panelBG-body panelBG-height" style="height: auto;"></div>
					<div class="panelBG-footer"></div>
					<div class="border-content-noleft">
						<div>
							<div>
								<div class="short-info"><div class="percent-margin-style95"><spring:message code="label.cg220103.donate.charitable.chart" /></div></div>
								<div class="long-info02"><div class="percent-margin-style94">ID</div></div>
								<div class="long-info"><div class="percent-margin-style95"><spring:message code="label.cg220103.donate.charitable.diamond" /></div></div>
								<div class="short-info02">
									<div class="percent-margin-style90"><spring:message code="label.cg220103.donate.charitable.union" /></div>
								</div>
								<div class="short-info02">
									<div class="percent-margin-style90"><spring:message code="label.cg220103.donate.charitable.donee" /></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div>
								<img class="line-style"
									src="<p:localurl value="/resources/images/hengtiao.png"/>" />
							</div>
						</div>
					
						<input type="hidden" id="apply_message" value="<spring:message code="label.cg1205.union.existUnionMember" />" />
						<input type="hidden" id="maxMember_message" value="<spring:message code="label.cg1205.union.maxUnionMember" />" />
						<input type="hidden" id="memberLevel_message" value="<spring:message code='label.cg1205.union.unionMemberLevel' />" />
						<input type="hidden" id="check_Url" value='<p:fullurl value="/cg1201/cg120105/checkJoinUnionMember/"/>' />
						<input type="hidden" id="apply_Url" value='<p:fullurl value="/cg1201/cg120107/index/bestPhilanthropistRankingList/"/>' />
						
						<input type="hidden" id="unionName" value='null' />
						<input type="hidden" id="pageIndex" value='<c:if test="${not empty searchCharitableVO.pageIndex }">${searchCharitableVO.pageIndex }</c:if><c:if test="${empty searchCharitableVO.pageIndex }">0</c:if>' />
						
	
						<!--循环部分  开始-->
						<div id="gamerDiv">
							<c:forEach items="${charitableChartsList}" var="item" varStatus="status">
							<div>
								<div>
									<div class="short-info ">
										<!--数字 <div class="percent-margin-style95">1</div> -->
										
										<div class="percent-margin-style95">
											<c:if test="${status.index < 3 && (searchCharitableVO.pageIndex eq 0 || searchCharitableVO.pageIndex eq null)}">
												<img class="ranking-icon-style ranking-icon-width"
													src="<p:localurl value="/resources/images/ranking-${status.index+1 }.png"/>" />
											</c:if>
											<c:if test="${status.index >= 3 || searchCharitableVO.pageIndex > 0}">
												<span>${searchCharitableVO.pageIndex * searchCharitableVO.pageSize + status.index + 1 }</span>
											</c:if>
										</div>
									</div>							
									<div class="long-info02"><div class="percent-margin-style90">${item.charitablePlayerName }</div></div>
									
									<div class="long-info">
										<div class="percent-margin-style95">
										<div class="donate-num">${item.donateNumber }</div>
										<div class="diamond-pic">
											<img class="diamondpic-style"
												src="<p:localurl value="/resources/images/diamond.png"/>" />
										</div>
										</div>
									</div>
									
									<div class="short-info02" style="display:<c:if test="${item.isCanApply }">block;</c:if><c:if test="${!item.isCanApply }">none;</c:if>">
										<img id="${item.unionId }" class="apply-check-pic-style apply_green pointer_class clickTone1"
											src="<p:localurl value="/resources/images/buttons/apply.png"/>" />
									</div>
									<div class="short-info02" style="display:<c:if test="${item.isCanApply }">none;</c:if><c:if test="${!item.isCanApply }">block;</c:if>">
										<img class="apply-check-pic-style button_gray"
											src="<p:localurl value="/resources/images/buttons/apply.png"/>" />
									</div>
									
									<div class="short-info02">
										<a href="#" onclick="location.href = '<p:fullurl value="/cg2201/cg220105/index/${item.charitablePlayerId }" />';event.preventDefault();">
											<img class="apply-check-pic-style clickTone1"
												src="<p:localurl value="/resources/images/buttons/check.png"/>" /></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<img class="line-style"
										src="<p:localurl value="/resources/images/hengtiao.png"/>" />
								</div>
							</div>
							<!--循环部分  结束-->
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</c:if>	
	</div>
	
</div>
