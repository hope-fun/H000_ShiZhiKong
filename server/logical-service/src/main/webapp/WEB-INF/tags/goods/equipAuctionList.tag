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
	description="The paged list of auction goods"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search auction goods list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.logical.busi.viewdata.PlayerEquipmentViewData"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>

<c:if test="${empty items}">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items}">
	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData}"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items}" var="item" varStatus="status">
		<form id="form_${item.id}" method="POST"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">

			<div class="pm-padding-fifteen equip-aution-style">
			<div>
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB13-height p-height-${item.id }"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
						<div class="consumer-list">
							<div class="consumer-list-title">
								<span class="fc-content-01"><c:out value="${item.name}" /></span>
							</div>
							<div class="consumer-list-image03"></div>
							<div class="euqip-pic-style">
								<div class="bottomPart_line_image">
									<img src="<p:equipImg type="large" id="${item.equipmentId }"></p:equipImg>" />
								</div>
								<div class="bottomPart_line_info">
									<div class="consumer-list-function">
										<span class="fc-normal-05-l"><spring:message code="label.cg0602.xiangqianmiaoshu"/></span> 
											<c:choose>
												<c:when test="${item.additionType eq 'ATTACK' }">
													<c:set var="attack"><spring:message code="label.cg0602.zhandouli"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="attack">%<spring:message code="label.cg0602.zhandouli"/></c:set>
													</c:if>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>${attack}</span>
												</c:when>
												<c:when test="${item.additionType eq 'DEFENCE' }">
													<c:set var="defence"><spring:message code="label.cg030204.defence"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="defence">%<spring:message code="label.cg030204.defence"/></c:set>
													</c:if>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>${defence}</span>
												</c:when>
												<c:when test="${item.additionType eq 'STRENGTH' }">
													<c:set var="strength"><spring:message code="label.cg0602.liliangxuqiu"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="strength">%<spring:message code="label.cg0602.liliangxuqiu"/></c:set>
													</c:if>
													<c:if test="${item.additionValue < 0 }">
														<span><spring:message code="label.cg0602.jiangdi"/>${item.additionValue*(-1)}</span><span>${strength}</span>
													</c:if>
													<c:if test="${item.additionValue > 0 }">
														<span><spring:message code="label.cg0602.jiangdi"/>${item.additionValue}</span><span>${strength}</span>
													</c:if>
												</c:when>
												<c:when test="${item.additionType eq 'GAINCOIN' }">
													<c:set var="gaincoin"><spring:message code="label.cg0602.zuanshihuoqulv"/></c:set>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>%${gaincoin}</span>
												</c:when>
												<c:when test="${item.additionType eq 'GAINEQUIPMENT' }">
													<c:set var="gainequipment"><spring:message code="label.cg0602.zhuangbeihuoqulv"/></c:set>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>%${gainequipment}</span>
												</c:when>
												<c:when test="${item.additionType eq 'MOVE' }">
													<c:set var="move"><spring:message code="label.cg0602.xingdongli"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="move">%<spring:message code="label.cg0602.xingdongli"/></c:set>
													</c:if>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>%${move}</span>
												</c:when>
												<c:when test="${item.additionType eq 'ATTACK_TO_DEFENCE' }">
													<c:set var="attackToDefence"><spring:message code="label.cg0602.gongzhuanfang"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="attackToDefence">%<spring:message code="label.cg0602.gongzhuanfang"/></c:set>
													</c:if>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>%${attackToDefence}</span>
												</c:when>
												<c:when test="${item.additionType eq 'DEFENCE_TO_ATTACK' }">
													<c:set var="defenceToAttack"><spring:message code="label.cg0602.fangzhuangong"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="defenceToAttack">%<spring:message code="label.cg0602.fangzhuangong"/></c:set>
													</c:if>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>%${defenceToAttack}</span>
												</c:when>
												<c:when test="${item.additionType eq 'ATTACK_AND_DEFENCE' }">
													<c:set var="attackAndDefence"><spring:message code="label.cg0602.zhanfangli"/></c:set>
													<c:if test="${item.calcMode eq 'PERCENT' }">
														<c:set var="attackAndDefence">%<spring:message code="label.cg0602.zhanfangli"/></c:set>
													</c:if>
													<span><spring:message code="label.cg0602.zengjia"/>${item.additionValue}</span><span>%${attackAndDefence}</span>
												</c:when>
												<c:when test="${item.additionType eq 'HP' }">
													<c:set var="hp"><spring:message code="label.cg0602.zhandoushengmingjiacheng"/></c:set>
													<span>${hp}${item.additionValue}%</span>
												</c:when>
											</c:choose>
													
										
									</div>
									<div class="padding-left-style8" >
										<c:if test="${item.status eq 'MOUNT' }">
											<div class="mount-height">
												<span class="fc-normal-06-m"><spring:message code="label.cg0602.paimaiqianxuxiexia"/></span>
											</div>
											
											
										</c:if>
									</div>
								</div>
								<div class="clearfix"></div>
								
								<c:if test="${not empty item.suitId }">
									<script>
										$(".p-height-${item.id }").addClass('suit-desinfo-height');
									</script>
									<div>
										<div class="suit-info1"><spring:message code="label.cg0602.suitinfo1"></spring:message>${item.suitName1 }，${item.suitName2 }<spring:message code="label.cg0602.suitinfo2"></spring:message></div>
										<div class="suit-info2"><spring:message code="label.cg0602.suitinfo3"></spring:message>${item.suitDescription }</div>
									</div>
								</c:if>
								
								<c:if test="${item.status eq 'MOUNT' }">
									<script>
									$(".p-height-${item.id}").addClass('panelB02-height');
									</script>
									<div class="uninstall-button uninstall-button2">												
										<div>
											<a class="clickTone1" onclick="add(this)"
											id="<p:fullurl value="/cg0602/cg060201/index?playerEquipmentId=${ item.id}&isUnload=true&isForwardSale=true&useEquipmentId=false&isForward=false"/>">
											<img class="disburden-button" id="${ item.id}" src="<p:localurl value="/resources/images/buttons/xiechu-green.png"/>"/>
										</a>
										</div>
									</div>
								</c:if>
								<c:if test="${not empty item.suitId }">
									<script>
										$("#${ item.id}").addClass("disburden-button2")
									</script>
								</c:if>
								
								<c:if test="${item.status ne 'MOUNT' }">
									<c:if test="${not empty item.suitId }">
										<script>
											$(".p-height-${item.id }").addClass('suit-auction-height');
										</script>
									</c:if>
								
											<div class="price-info pm-padding-fifteen price-width">
												<div class="price-cg0602-width">
													<span class="fc-normal-05-l"><spring:message
															code="label.cg0602.jiage" /></span>
												</div>
												<div class="input-price">
													<input class="pm-lineheight-thirty input-price-style"
														id="input_${item.id}" type="text" name="price" value="" />
												</div>
												<span
													class="fc-normal-03-m padding-left-style10 line-height-style36"><spring:message
														code="label.cg0602.shuijin" /></span>
												<div></div>
											</div>
											<div class="commodity-info pm-padding-fifteen price-width">
												<div class="price-cg0602-width">
													<span class="fc-normal-05-l"><spring:message
															code="label.cg0602.shangpinbiaoqian" /></span>
												</div>
												<div class="input-price">
													<input class="pm-lineheight-thirty input-price-style"
														name="note" id="label_${item.id}" type="text" name="note"
														value="" />
												</div>
												<div></div>
											</div>

											<div class="auction">
												<img class="clickTone1"
													onclick="doHandle('${item.id}', '<p:fullurl value='/cg1001/cg1001/clickAuction'/>',this)"
													src="<p:localurl value='/resources/images/buttons/paimai-green-x.png'/>" />
											</div>
									</c:if>
								</div>
						</div>
					</div>
				</div>
			</div>
			<%-- <c:if test="${item.status ne 'MOUNT' }">
			<div class="price-info pm-padding-fifteen price-width">
				<div class="price-cg0602-width" >
					<span class="fc-normal-05-l"><spring:message code="label.cg0602.jiage"/></span>
				</div>
				<div class="input-price">
					<input class="pm-lineheight-thirty input-price-style" id="input_${item.id}" type="text" name="price" value="" />
				</div>
				<span class="fc-normal-03-m padding-left-style10 line-height-style36"><spring:message code="label.cg0602.shuijin"/></span>
				<div></div>
			</div>
			<div class="commodity-info pm-padding-fifteen price-width">
				<div class="price-cg0602-width">
					<span class="fc-normal-05-l"><spring:message code="label.cg0602.shangpinbiaoqian"/></span>
				</div>
				<div class="input-price" >
					<input class="pm-lineheight-thirty input-price-style" name="note" id="label_${item.id}" type="text" name="note" value=""
					/>
				</div>
				<div></div>
			</div>
		
			<div class="auction">
				<img class="clickTone1" onclick="doHandle('${item.id}', '<p:fullurl value='/cg1001/cg1001/clickAuction'/>',this)" src="<p:localurl value='/resources/images/buttons/paimai-green-x.png'/>" />
			</div>
			</c:if> --%>
			<div class="split-01"></div>
		</div>
		<input type="hidden" value="1" name="itemCount" />
		<input type="hidden" name="uniqueId" value="${item.id}" />
		<input type="hidden" name="itemType" value="EQUIPMENT" />
		</form>
		</c:forEach>
	
	</tags:pagination>
</c:if>
