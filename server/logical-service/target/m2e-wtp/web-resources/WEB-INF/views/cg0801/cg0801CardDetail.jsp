<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<div class="content">
	<div class="pageTitle menu-large">
		<span><spring:message code="label.cg030102.carddetail.title"></spring:message></span>
	</div>
	<!-- 
	<cards:detail item="${playerCardVO }"></cards:detail>
	 -->
	 <cards:cardPackageCardDetail item="${playerCardVO}"></cards:cardPackageCardDetail>
</div>