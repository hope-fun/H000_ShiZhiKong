<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="content">
	<p:fullurl value="/player/register" var="formaction" />
	<form:form method="POST" action="${formaction }" commandName="playerViewData">
		<table>
			<tr>
				<td><spring:message code="label.player.name"></spring:message></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.player.camp"></spring:message></td>
				<td><form:select path="camp" items="${campItems }" /></td>
			</tr>
		</table>
	</form:form>
	
	<a href="<p:fullurl value="/cg0101/cg010103/index"/>">Go to home page</a>
</div>
