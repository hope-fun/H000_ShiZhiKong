<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">

<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>

<div class="content">
	<div class="cg020104pass"><input class="sectionName" type="hidden" value="${playerTaskSectionName}" /></div>
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020104.sectiontitle"></spring:message></span>
	</div>
	<div>
		<img alt="" src="<p:localurl value='/resources/images/xuanchuan/renwuwancheng.png' />">
	</div>
	<div class="next-chapter-style">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="card-assistant npc-padding">
					<div class="npc-pic-width">
						<div>
							<img src='<p:localurl value="/resources/images/npc-2.png"/>'/>
						</div>
					</div>
					<div class="description_content des-section-style">
						<spring:message code="label.CG020104.sectioncomplete"></spring:message>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="goon-chapter">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="doJump('<p:fullurl value='${nextURL}' />')" />
	</div>
</div>