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
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
			JSInterface.showUpandDown("NO");
	
	}, false);
});
</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200104.register.success"></spring:message></span>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img-new">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="npc-message-cg2001-new">
						<span><spring:message
								code="label.cg200104.welcome.challenge"></spring:message></span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>

	<div class="conference-buttons commonPadding-top03">
		<img class="clickTone1"
			onclick="location.href='<p:fullurl value="/cg2001/cg200105/index"/>';event.preventDefault();"
			src='<p:localurl value="/resources/images/buttons/jixu-green-d.png"/>'>

	</div>
</div>


