<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils" %>

<%@attribute name="items" type="com.artistmobile.kpyx.server.framework.service.impl.PagedList" required="true" rtexprvalue="true" description="The paged list of player cards" %>
<%@attribute name="searchUrl" type="java.lang.String" required="true" rtexprvalue="true" description="The default search union list url" %>
<%@attribute name="searchData" type="com.artistmobile.kpyx.server.data.service.vo.SearchUnionVO" required="true" rtexprvalue="true" description="It should be simply object, each property would be taken as search condition." %>

<c:if test="${empty items }" >
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }" >
	<tags:pagination items="${items}" id="searchUnionList" method="POST" renderAjax="false" searchData="${searchData }" paginationUrl="${searchUrl }">
		<input type="hidden" id="apply_message" value="<spring:message code="label.cg1205.union.existUnionMember" />" />
		<input type="hidden" id="maxMember_message" value="<spring:message code="label.cg1205.union.maxUnionMember" />" />
		<input type="hidden" id="memberLevel_message" value="<spring:message code='label.cg1205.union.unionMemberLevel' />" />
		<input type="hidden" id="check_Url" value='<p:fullurl value="/cg1201/cg120105/checkJoinUnionMember/"/>' />
		<input type="hidden" id="apply_Url" value='<p:fullurl value="/cg1201/cg120107/index/union/"/>' />
		
		<input type="hidden" id="unionName" value='<c:if test="${not empty searchData.unionName }">${searchData.unionName }</c:if><c:if test="${empty searchData.unionName }">null</c:if>' />
		<input type="hidden" id="pageIndex" value='<c:if test="${not empty searchData.pageIndex }">${searchData.pageIndex }</c:if><c:if test="${empty searchData.pageIndex }">0</c:if>' />
		
		<c:forEach items="${items}" var="unionItem">
			<div class="commonPading01" style="width: 100%;">
				<div class="borderPanel">
					<div class="panelB-header">
						<div class="lableText02 commonPadding-top">
							<span>${unionItem.name }</span>
						</div>
					</div>
					<div class="panelB-body">
						<div class="split-item-down"></div>
						<div>
							<div class="alliance-info-search">
								<div class="union-item-level">
									<span class="fc-normal-05-l"><spring:message code="label.cg1205.union.level"/>:</span> <span>${unionItem.level }</span>
								</div>
								<div class="union-member-count">
									<span class="fc-normal-05-l"><spring:message code="label.cg1205.union.member"/>:</span>
									<span><c:if test="${not empty unionItem.memberCount }">${unionItem.memberCount }</c:if><c:if test="${empty unionItem.memberCount }">0</c:if></span> 
									<span class="fc-normal-05-l">/</span> <span class="fc-normal-05-l">${unionItem.maxMemberCount }</span>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="alliance-info-search">
								<span class="fc-normal-05-l"><spring:message code="label.cg1205.union.creator"/>:</span> <span>${unionItem.creatorName }</span>
							</div>
							<div class="alliance-info-search">
								<div class="uni-des" >
									<span class="fc-normal-05-l"><spring:message code="label.cg1205.union.description"/>:</span> 
								</div>
								<div class="union-des-style02" >
									<span>${unionItem.description }</span>
								</div>
							</div> 
						</div>
						<div class="commonPadingTOP01">
							<div class="apply-uni-button">
								<div class="uni-button-style" style='display:<c:if test="${unionItem.isCanApply==true }">block;</c:if><c:if test="${unionItem.isCanApply==false }">none;</c:if>'>
									<img id="${unionItem.id }" class="button_search apply_green" src="<p:localurl value="/resources/images/buttons/shenqingjiaru-green.png"/>" />
								</div>
								<div class="uni-button-style" style='display:<c:if test="${unionItem.isCanApply==false }">block;</c:if><c:if test="${unionItem.isCanApply==true }">none;</c:if>'>
									<img class="button_gray" src="<p:localurl value="/resources/images/buttons/shenqingjiaru-green.png"/>" />
								</div>
							</div>
							<div class="apply-uni-button">
								<div class="union-detail-style">
									<a href="#" class="clickTone1" onclick="redirect('${unionItem.id }')">
										<img class="button_search" src="<p:localurl value="/resources/images/buttons/xiangqing-blue.png"/>" /></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="panelB-footer-right"></div>
				</div>
			</div>
		</c:forEach>
	</tags:pagination>	
</c:if>

<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg1201/cg120105.js'/>"></script>
<script type="text/javascript">
	function redirect(unionId){
		window.location.href = '<p:fullurl value="/cg1201/cg120106/index/union/" />'+ unionId + '/' + encodeURI(encodeURI($("#unionName").val())) + '/' + $("#pageIndex").val();
		event.preventDefault();
	}
</script>