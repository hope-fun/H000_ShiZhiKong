<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
<title><spring:message code="label.error.403"></spring:message></title>
<body>
	<div class="header header-info">
		<spring:message code="label.error"></spring:message>
	</div>
	<div class="title" style="width:100%; align:center;">
		<spring:message code="label.error.403.info"></spring:message><br />
		<spring:message code="label.error.403.step"></spring:message>
	</div>
	<div class="info" style="width:100%; align:center;">
		<spring:message code="label.error.403.networkcheck"></spring:message><br />
		<spring:message code="label.error.403.restart"></spring:message>
	</div>
</body>
</html>