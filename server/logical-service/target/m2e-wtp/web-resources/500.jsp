<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="label.error.500"></spring:message></title>
</head>
<body>
	<div class="header header-info">
		<spring:message code="label.error"></spring:message>
	</div>
	<div class="title" style="width:100%; align:center;">
		<spring:message code="label.error.500.info"></spring:message><br />
		<spring:message code="label.error.500.step"></spring:message>
	</div>
	<div class="info" style="width:100%; align:center;">
		<spring:message code="label.error.500.checknetwork"></spring:message><br />
		<spring:message code="label.error.500.restart"></spring:message>
	</div>
</body>
</html>