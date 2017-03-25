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

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg210101.title"></spring:message></span>
	</div>

	<div class="camp-adv">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/huodongbanner08.png"/>'>
	</div>

	<div class="notice-info">

		<div class="borderPanel">
			<div class="phase-header">
				<span style="padding-left: 30px; font-size: 18pt;">活动简介</span>
			</div>
			<div class="panelA-header"></div>
			<div class="panelA-body" style="height:400px;"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="cg210101-info02">
					<div class="cg210101-info-title">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/activity/huodongshijian.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body "></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-content">
							<span><spring:message
									code="label.cg210101.adv1.time.content"></spring:message></span>
						</div>
					</div>
					<div class="cg210101-info-title">
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/activity/huodongneirong.png"/>'>
					</div>
					<div class="borderPanel">
						<div class="panelActivity-header"></div>
						<div class="panelActivity-body panelActivity-height2 "></div>
						<div class="panelActivity-footer"></div>
						<div class="cg210101-activity-propose">
							<span><spring:message
									code="label.cg210107.adv.content.content"></spring:message></span>
						</div>
					</div>
				</div>

				<div class="conference-buttons">		
		<img class="clickTone1"  onclick="location.href='<p:fullurl value="/cg1501/cg150101/index"/>';event.preventDefault();"
				src='<p:localurl value="/resources/images/buttons/qianwang=green.png"/>'>
	</div>
			
			</div>
		</div>
	</div>

</div>
