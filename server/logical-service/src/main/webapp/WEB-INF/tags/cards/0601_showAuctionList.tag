<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<%@attribute name="items"
	type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"
	required="true" rtexprvalue="true"
	description="The paged list of player cards"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search player cards list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.data.service.vo.SearchConsumablesVO"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>
<script>
	document.addEventListener("keydown",function() {
		if(event.keyCode == 13 || event.keyCode == 108)
			event.preventDefault();
	});
</script>
<c:if test="${empty items }">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }">
	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData }"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items}" var="item">
			<form id="form_${item.id}" method="POST"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
				<div class="cg060103-info-style">
					<div>
						<div class="borderPanel">
							<div class="panelB-header"></div>
							<div class="panelB-body panelB02-height"></div>
							<div class="panelB-footer"></div>
							<div class="border-content-noleft">
								<div class="consumer-list">
									<div class="consumer-list-title">
										<div class="show-auction-name">
											<span class="fc-content-01"><c:out value="${item.name}" /></span>
										</div>
										
										<div></div>
									</div>
									<div class="split-item-down-0601"><img class="split-down-width" src="<p:localurl value="/resources/images/line-split-down.png"/>" /></div>
									<div class="padding-left-style15">
										<div class="bottomPart_line_image02">
											<div><img src="<p:consumImg type="large" id="${item.consumableId }"></p:consumImg>" /></div>
											<div class="auction-button-style">
												<img class="clickTone1" onclick="doHandle('${item.id}','<p:fullurl value='/cg1001/cg1001/clickAuction'/>',this)"
														src="<p:localurl value="/resources/images/buttons/paimai-green.png"/>" />
										</div>
										</div>
										<div class="bottomPart_line_info">

											<div class="consumer-list-function cg0601-function-height">
												<span class="fc-normal-05-m"><spring:message code="lable.cg0601.function"/></span>
												<span><c:out value="${item.description}" /></span>
											</div>
											<div>
												<span class="fc-normal-05-m"><spring:message code="lable.cg0601.biaoqian"/></span> <input
													id="label_${item.id}" name="note" type="text"
													class="font-size-style17 label-width"/> <span></span>
											</div>
											<div>
												<span class="fc-normal-05-m"><spring:message code="lable.cg0601.jiage"/></span>
												 <input class="font-size-style17 label-width" id="input_${item.id}" type="text" />
												 <span class='fc-normal-06-m'><spring:message code="label.cg0602.shuijin" /></span>
												<input type="hidden" name="price"
													id="inputHidden_${item.id}" value="" />
											</div>
											<div>
												<span class="fc-normal-05-m"><spring:message code="lable.cg0601.paimaishu"/></span> 
												<select class="sell_count font-size-style17 select-count-style" name="itemCount">
													<c:forEach var="t" begin="1" end="${item.buyCount}">
														<option value="${t}">${t}</option>
													</c:forEach>
												</select>
											</div>
											<input type="hidden" name="uniqueId" value="${item.id}" />
											<input type="hidden" name="itemType" value="CONSUMABLE" />
											<div style="clear: both; float: none;"></div>
										</div>
										<div class="clearfix"></div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</c:forEach>
	</tags:pagination>
</c:if>
