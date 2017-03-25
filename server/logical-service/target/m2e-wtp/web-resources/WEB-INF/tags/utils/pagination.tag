<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true" description="The paged Object with pagination parameters" %>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.framework.service.vo.AbstractPagedVO" required="false" rtexprvalue="true" description="It should be simply object, each property would be taken as search condition." %>
<%@attribute name="paginationUrl" type="java.lang.String" required="false" rtexprvalue="true" description="the pagination url, only when it existed the buttons is enabled" %>
<%@attribute name="id" type="java.lang.String" required="false" rtexprvalue="false" description="it would be used for distinguish the pagination form name" %>
<%@attribute name="method" type="java.lang.String" required="false" rtexprvalue="false" description="The default method is 'POST'" %>
<%@attribute name="renderAjax" type="java.lang.Boolean" required="false" rtexprvalue="false" description="The default render ajax is 'false'" %>

<c:set var="requestType" value="${header['requestType']}"></c:set>

<c:if test="${empty id }">
	<c:set var="id" value="default"></c:set>
</c:if>
<c:if test="${empty method }">
	<c:set var="method" value="POST"></c:set>
</c:if>
<c:if test="${empty renderAjax }">
	<c:set var="renderAjax" value="false"></c:set>
</c:if>

<c:set var="pageIndex">
	<spring:eval expression="items.getPageIndex()" htmlEscape="false" />
</c:set>
<c:set var="totalSize">
	<spring:eval expression="items.getTotalSize()" htmlEscape="false" />
</c:set>
<c:set var="pageSize">
	<spring:eval expression="items.getPageSize()" htmlEscape="false" />
</c:set>

<c:if test="${ empty pageIndex }">
	<c:set var="pageIndex" value="0"></c:set>
</c:if>
<c:if test="${ empty totalSize }">
	<c:set var="totalSize" value="0"></c:set>
</c:if>
<c:if test="${ empty pageSize }">
	<c:set var="pageSize" value="5"></c:set>
</c:if>

<c:set var="pages" value="${totalSize % pageSize == 0 ? totalSize / pageSize : ((totalSize - totalSize % pageSize) / pageSize + 1)}" />
<c:if test="${pages eq 0 }">
	<c:set var="pages" value="1" />
</c:if>

<c:set var="firstPage" value="${pageIndex - 1 }" />
<c:set var="nextPage"  value="${pageIndex + 1 }" />

<c:if test="${firstPage lt 0 }">
	<c:set var="firstPage" value="0" />
</c:if>
<c:if test="${nextPage gt pages }">
	<c:set var="nextPage" value="${pages }" />
</c:if>

<c:if test="${not empty requestType }">
	<script type="text/javascript">
		$(function() {
			var parentId = "${id}PaginationTop"; 
			$(parentId + " .prepage").attr("rel", "${ firstPage }");
			$(parentId + " .nextpage").attr("rel", "${ nextPage }");
		});
	</script>	
	<jsp:doBody />
</c:if>
<c:if test="${empty requestType }">
	<div id="${id}PaginationTop">
		<c:if test="${not empty paginationUrl }">
			<c:if test="${ renderAjax ne false}">
				<script type="text/javascript">
					$(function() {
						var formId = "${id}Paginationform";
						var parentId = "${id}PaginationTop"; 
						var contentId = "${id}PaginationContent";
				        $(".pagination-button").click(function() {
							var obj = $(this);
							var pageIndex = obj.attr('rel');
							var formObj = $("#"+formId);
							formObj.find("input[name=pageIndex]").val(pageIndex);
							
							$("#" + contentId).css3Animate({
							    opacity: 0, 
							    time: "300ms",
							    callback: function() {
							        $("#" + contentId).hide();
									$$.ajax({
									    url: formObj.attr('action'),
								      	type: formObj.attr('method'),
								      	data: formObj.serialize(),
								      	dataType: 'html',
								      	showMask: false,
								      	success: function(html) {
								      	   $("#" + contentId).html(html);
								      	   $("#" + contentId).css('opacity', 1).show();
								      	} 
									})
									return false;
							    }
							});
						});
					});
				</script>	
			</c:if>
			<c:if test="${ renderAjax eq false}">
				<script type="text/javascript">
					$(function() {
						var formId = "#${id}Paginationform";
						
						$(".pagination-button").click(function() {
							var obj = $(this);
							var pageIndex = obj.attr('rel');
							var formObj = $(formId);
							formObj.find("input[name=pageIndex]").val(pageIndex);
							formObj[0].submit();
							return false;
						});
					});
				</script>
			</c:if>
			<form id="${id}Paginationform" action="${paginationUrl }" method="${method }" style="display: none;">
				<c:if test="${not empty searchData }">
					<c:set var="searchFields">
						<spring:eval expression="searchData.getQueryFields()" htmlEscape="false" />
					</c:set>
					<c:forTokens items="${searchFields }" delims="," var="key">
						<c:set var="fieldValue" value="${ searchData[key] }" />
						<c:if test="${not empty fieldValue }"><%if(jspContext.getAttribute("fieldValue") instanceof java.util.List) {%>
								<c:forEach items="${fieldValue }" var="item"><input type="hidden" name="${key }" value="${item }" /></c:forEach>
							<%} else { %>
								 <input type="hidden" name="${key }" value="${fieldValue }" />
							<% }%>
						</c:if>
					</c:forTokens>
				</c:if>
				<input type="hidden" name="pageIndex" value="${pageIndex}" /> 
				<input type="hidden" name="pageSize" value="${pageSize}" />
			</form>
		</c:if>
		
		<div class="pageSelect padding-top">
			<div class="prepage ${firstPage eq pageIndex ? "pagination-button-disable" : "pagination-button"} clickTone1" rel="${ firstPage }">
				<img src='<p:localurl value="/resources/images/uppage.png"/>'>
			</div>
			<span><c:out value="${pageIndex + 1 }" />/<fmt:formatNumber type="number" maxFractionDigits="0" value="${pages}" /></span>
			<div class="nextpage ${pages eq (pageIndex + 1) ? "pagination-button-disable" : "pagination-button"} clickTone1" rel="${ nextPage }">
				<img  src='<p:localurl value="/resources/images/nextpage.png"/>'>
			</div>
			<div class="clearfix"></div>
		</div>
		
		<div id="${id }PaginationContent">
			<jsp:doBody />
		</div>
		
		<div class="pageSelect padding-top">
			<div class="prepage ${firstPage eq pageIndex ? "pagination-button-disable" : "pagination-button"} clickTone1"  rel="${ firstPage }">
				<img src='<p:localurl value="/resources/images/uppage.png"/>'>
			</div>
			<span><c:out value="${pageIndex + 1}" />/<fmt:formatNumber type="number" maxFractionDigits="0" value="${pages}" /></span>
			<div class="nextpage ${pages eq (pageIndex + 1) ? "pagination-button-disable" : "pagination-button"} clickTone1" rel="${ nextPage }">
				<img src='<p:localurl value="/resources/images/nextpage.png"/>'>
			</div>
			<div class="clearfix"></div>
		</div>
		
	</div>
</c:if>


