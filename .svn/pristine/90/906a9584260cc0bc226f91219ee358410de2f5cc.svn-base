<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/CG030102.css?v=1" />">
<script type="text/javascript">
function download(){
	
		JSInterface.downloadResources("download");

}
</script>


<div class="content cg030102CardDetail">	
	<div class="pageTitle menu-large" >
		<span><spring:message code="label.cg030102.carddetail.title"></spring:message></span>
	</div>
	<div style="margin-top:-20px;"><span class="tipsOfdownload"><spring:message code="label.cg030102.downloadTips"></spring:message></span>
	<span  onclick="download()"class="fc-download fs-underline"><spring:message code="label.cg030102.download"></spring:message></span>
	</div>
	<cards:detail03 item="${card }"></cards:detail03>
</div>