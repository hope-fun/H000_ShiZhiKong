<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="content">
	<div class="menu-medium title-label-03">
		<span><spring:message code="label.error.common.title"></spring:message></span>
	</div>
	
	<div style="text-align:left; width: 100%; margin: 0 auto;">
		<pre><c:out value="${ exp.message }"></c:out></pre>
		<pre>
		<% 
			Exception exception = (Exception)request.getAttribute("exp");
			// if there is an exception
			if (exception != null) {
				// print the stack trace hidden in the HTML source code for debug
				exception.printStackTrace(new java.io.PrintWriter(out));
			}
		%>
		</pre>
	</div>
</div>