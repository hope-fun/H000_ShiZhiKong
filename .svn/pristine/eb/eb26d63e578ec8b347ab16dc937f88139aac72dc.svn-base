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
	href="<p:fullurl value="/resources/css/CG2101/CG2101.css?v=1"/>">

<div class="content">
	<div style="text-align: center;">
		<div class="titleyilan">
			<img
				src='<p:localurl value="/resources/images/activity/huodongyilan.png"/>'>
		</div>
		<c:forEach items="${numList}" var="item" varStatus="i">
		<c:if test="${item.isInValidDays eq '1'}">
			<div class="activityList" style="text-align:center;">
				<img
					src='<p:localurl value="/resources/images/activity/huodongliebiaotu0${i.index+1}.png"/>'
					onclick="location.href='<p:fullurl value="/cg2101/cg21010${i.index+1}/index"/>'">
				<c:if test="${item.rewardNumber > 0}">
					<div class="activityListRewardNum">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/activity/${item.rewardNumber}.PNG"/>'>
					</div>
				</c:if>
				<c:if test="${item.activityKind eq 'LIMIT'}">
			<div class="activityLimit">
				<img
					src='<p:localurl value="/resources/images/activity/xianshi.PNG"/>'>
		    </div>
				</c:if>
			</div>
			</c:if>
		</c:forEach>
	</div>
</div>


