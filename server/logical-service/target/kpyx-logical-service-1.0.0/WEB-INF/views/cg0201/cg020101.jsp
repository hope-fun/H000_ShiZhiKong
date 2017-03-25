<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="task" tagdir="/WEB-INF/tags/task"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>
<script type="text/javascript" charset="utf-8">

$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
		//音效  ma_li  开始PVE背景音乐
		JSInterface.clickTone(108);
		
	}, false);
});

</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020101.title"></spring:message></span>
	</div>
	<task:chapterList searchData="${PlayerTaskChapterViewData}" searchUrl="/kpyx-logical-service/cg0201/cg020101/index2" items="${playerTaskChapterPagedList}"></task:chapterList>
</div>