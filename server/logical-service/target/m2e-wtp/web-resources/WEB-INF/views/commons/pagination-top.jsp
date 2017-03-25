<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="pageIndex" scope="request">
	<spring:eval expression="paginationParams.getPageIndex()" htmlEscape="false" />
</c:set>
<c:set var="totalSize" scope="request">
	<spring:eval expression="paginationParams.getTotalSize()" htmlEscape="false" />
</c:set>
<c:set var="pageSize" scope="request">
	<spring:eval expression="paginationParams.getPageSize()" htmlEscape="false" />
</c:set>
<c:set var="pageIndex" value="${pageIndex+1 }" scope="request" />
<c:set var="pages" value="${totalSize % pageSize == 0 ? totalSize / pageSize : ((totalSize - totalSize % pageSize) / pageSize + 1)}" scope="request" />

<div class="pageSelect padding-top">
	<div class="prepage">
		<img src='<p:localurl value="/resources/images/uppage.png"/>'>
	</div>
	<span><c:out value="${pageIndex }" />/<fmt:formatNumber type="number" maxFractionDigits="0" value="${pages}" /></span>
	<div class="nextpage">
		<img  src='<p:localurl value="/resources/images/nextpage.png"/>'>
	</div>
	<div class="clearfix"></div>
</div>