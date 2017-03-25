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

<div class="content">
	<div style="text-align: center;">
		<div class="titleyilan">
			<img
				src='<p:localurl value="/resources/images/activity/huodongyilan.png"/>'>
		</div>
		<c:forEach items="${numList}" var="item" varStatus="i">
			<div class="activityList activityList-cg2501" style="text-align:center;">
				<div style="overflow:hidden;"><img
					src='<p:localurl value="${item.imageUrl }"/>'
					onclick="location.href='<p:fullurl value="${item.clickUrl }"/>'">
				</div>
				<c:if test="${item.rewardNumber > 0}">
					<div class="activityListRewardNum activityListRewardNum-cg2501">
						<img
							src='<p:localurl value="/resources/images/activity/${item.rewardNumber}.PNG"/>'>
					</div>
				</c:if>
				<c:if test="${item.activityKind eq 'LIMIT'}">
					<div class="activityLimit ">
						<img class="activityLimit-cg2501"
							src='<p:localurl value="/resources/images/activity/xianshi.PNG"/>'>
					</div>
				</c:if>
			</div>
		</c:forEach>
	</div>
</div>


