<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1001/CG1001.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg1001/cg100101.js'/>"></script>
<input type="hidden" id="cg1001operatefail" value="<spring:message code='label.cg0301.operatefail'/>"/>
<input type="hidden" id="cg1001goodnotexit" value="<spring:message code='label.cg1001.goodnotexit'/>"/>
<input type="hidden" id="cg1001buysuccess" value="<spring:message code='label.cg1001.buysuccess'/>"/>
<input type="hidden" id="cg1001cystralnotenough" value="<spring:message code='label.cg1001.cystralnotenough'/>"/>
<input type="hidden" id="cg1001buyfail" value="<spring:message code='label.cg1001.buyfail'/>"/>
<input type="hidden" id="cg1001cardslimit" value="<spring:message code='label.cg1001.cardslimit'/>"/>
<input type="hidden" id="cg1001cannotaucionselfgood" value="<spring:message code='label.cg1001.cannotaucionselfgood'/>"/>
	
<div class="content">
	<div class=" title-label-03">
		<c:if test="${type=='EQUIPMENT'}">
			<span><spring:message code="label.cg1001.zhuangbeixiangqing" /></span>
		</c:if>
		<c:if test="${type=='CONSUMABLE'}">
			<span><spring:message code="label.cg1001.daojuxiangqing" /></span>
		</c:if>
	</div>
	<div>
		<div>
			<div class="align-center" style="text-align: center;">
				<span class="fc-content-02"><spring:message code="label.cg1001.jiage" /><c:out value="${auctionGoods.price}" />
				<spring:message code="label.cg1001.shuijin" />
				</span>

				<div class="item-image-display">
					<c:if test="${type=='EQUIPMENT'}">
						<img src="<p:equipImg type="large" id="${item.equipmentId }"></p:equipImg>" />
					</c:if>
					<c:if test="${type=='CONSUMABLE'}">
						<img
							src="<p:consumImg type="large" id="${item.consumableId }"></p:consumImg>" />
					</c:if>
				</div>

				<span class="fc-content-02"><spring:message code="label.cg1001.yongyouzhe" /><c:out value="${auctionGoods.playerName}" /></span>
				<div>
					<span class="fc-normal-05-m"><spring:message code="lable.cg0601.biaoqian" /></span> 
					<span class="fc-normal-03-m">${auctionGoods.note}</span>
				</div>
			</div>
			<div class="split-01"></div>
		</div>

		<div class="consume-list-info">
			<div>
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB02-height p-height-${item.id }"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
						<div class="consumer-list">
							<div class="consumer-list-title">
								<span class="fc-content-01"><c:out value="${item.name}" /></span>
							</div>
							<div class="consumer-list-image"></div>
							<div class="equip-pic-style">
								<div class="bottomPart_line_image">
									<c:if test="${type=='EQUIPMENT'}">
										<img style="width:100%;"
											src="<p:equipImg type="large" id="${item.equipmentId }"></p:equipImg>" />
									</c:if>
									<c:if test="${type=='CONSUMABLE'}">
										<img style="width:100%;"
											src="<p:consumImg type="large" id="${item.consumableId }"></p:consumImg>" />
									</c:if>
								</div>
								<div class="bottomPart_line_info">

									<div class="consumer-list-function">
										<span><c:out value="${item.description}" /></span>
									</div>
									<div>
										<div>
											<span class="fc-normal-05-m"><spring:message code="label.cg1001.leixing" /></span>
											<c:if test="${type=='EQUIPMENT'}">
												<span class="fc-normal-03-m"><spring:message code="label.cg1001.zhuangbei" /></span>
											</c:if>
											<c:if test="${type=='CONSUMABLE'}">
												<span class="fc-normal-03-m"><spring:message code="label.cg1001.daoju" /></span>
											</c:if>
										</div>
										
									</div>
								</div>
								<div class="clearfix"></div>
								
								<c:if test="${type eq 'EQUIPMENT' && not empty item.suitId }">
									<script>
										$(".p-height-${item.id }").addClass('cg100103equip-height');
									</script>
									<div>
										<div class="suit-info1"><spring:message code="label.cg0602.suitinfo1"></spring:message>${item.suitName1 }，${item.suitName2 }<spring:message code="label.cg0602.suitinfo2"></spring:message></div>
										<div class="suit-info2"><spring:message code="label.cg0602.suitinfo3"></spring:message>${suitDescription }</div>
									</div>
								</c:if>
								
								<div class="buy-button-style btn-buy">
									<img onclick="BuyGoods('${auctionGoods.id}')" src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" class='clickTone1'/>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<input type="hidden" id="buyTargetUrl" value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />
		<input type="hidden" id="auctionIndexUrl" value="<p:fullurl value="/cg1001/cg100101/index"/>" />
		<div class="button-fanhui">
			<a onclick="goback()"> <img
				src="<p:localurl value='/resources/images/buttons/fanhui-green-z.png'/>" class='clickTone1'/>
			</a>

		</div>
	</div>
</div>