<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="goods" tagdir="/WEB-INF/tags/goods"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1001/CG1001.css?v=1"/>">
<p:fullurl value="/cg1001/cg100101/index" var="cardViewSearchURL"/>
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value='/resources/js/cg1001/cg1001.js'/>"></script>
<script type="text/javascript" charset="utf-8">
	$(function(){
		var message = "${message }";
		if(message!=null && message!=""){
			kpyxTips(message,
				function() {
					window.location.href = "<p:fullurl value='/cg0101/cg010103/index'/>";
			});
		}
	})
</script>	
<input type="hidden" id="cg1001operatefail" value="<spring:message code='label.cg0301.operatefail'/>"/>
<input type="hidden" id="cg1001goodnotexit" value="<spring:message code='label.cg1001.goodnotexit'/>"/>
<input type="hidden" id="cg1001buysuccess" value="<spring:message code='label.cg1001.buysuccess'/>"/>
<input type="hidden" id="cg1001cystralnotenough" value="<spring:message code='label.cg1001.cystralnotenough'/>"/>
<input type="hidden" id="cg1001buyfail" value="<spring:message code='label.cg1001.buyfail'/>"/>
<input type="hidden" id="cg1001cardslimit" value="<spring:message code='label.cg1001.cardslimit'/>"/>
<input type="hidden" id="cg1001cannotaucionselfgood" value="<spring:message code='label.cg1001.cannotaucionselfgood'/>"/>

<div class="content">
	<div class=" title-label-03">
		<span><spring:message code="label.cg1001.xinjipaimaihang" /></span>
	</div>
	<input type="hidden" id="targetUrl"
		value="<p:fullurl value="/cg1001/cg100102"/>" />
	<input type="hidden" id="buyTargetUrl"
		value="<p:fullurl value="/cg1001/cg1001/clickBuy"/>" />
	<div class="tabpanel">
		<div style="font-size: 0px;">
				<img alt="" class='clickTone1' src='<p:localurl value="/resources/images/buttons/wupingoumai-yelllow-b.png"/>'  onclick="location.href='<p:fullurl value="/cg1001/cg100101/index"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/zuanshishuijingduihuan-blue-b.png"/>' onclick="location.href='<p:fullurl value="/cg1002/cg100205/index"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/wupinpaimai-blue-b.png"/>' onclick="location.href='<p:fullurl value="/cg1001/cg100104/index/CARD"/>';event.preventDefault();"/>
				<img alt=""	class='clickTone1' src='<p:localurl value="/resources/images/buttons/wodeshangjiawupin-blue-b.png"/>' onclick="location.href='<p:fullurl value="/cg1001/cg100105/index"/>';event.preventDefault();"/>
		</div>

		<div class="clearfix"></div>
	</div>
	<div class="split-line"></div>
	<div class="con-height"></div>
	<form method="POST"
		action="<p:fullurl value="/cg1001/cg100101/index"/>"
		enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA07-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class='search-frame'>
					<div style="text-align: center; margin: 0 auto;">
						<span class="fc-normal-05-l"><spring:message code="label.cg1001.qingxuanzesousuotiaojian" /></span>
					</div>
		
					<div>
						<div class="item-tyle-style">
							<span class="fc-normal-05-l"><spring:message code="label.cg1001.leibie" /></span> 
							<select name="selectItemType" class='select-content'>
								<option value="NONE"
									${unionAuctionGoodsViewData.selectItemType eq "NONE"?"selected":""}><spring:message code="label.cg1001.all" /></option>
								<option value="CONSUMABLE"
									${unionAuctionGoodsViewData.selectItemType eq "CONSUMABLE"?"selected":""}><spring:message code="label.cg1001.daoju" /></option>
								<option value="CARD"
									${unionAuctionGoodsViewData.selectItemType eq "CARD"?"selected":""}><spring:message code="label.cg1001.kapai" /></option>
								<option value="EQUIPMENT"
									${unionAuctionGoodsViewData.selectItemType eq "EQUIPMENT"?"selected":""}><spring:message code="label.cg1001.zhuangbei" /></option>
							</select>
						</div>
						<div class="price-style">
							<span class="fc-normal-05-l"><spring:message code="label.cg1001.jiage" /></span> 
							<select name="selectSortType" class='select-content'>
								<option value="ASC"
									${unionAuctionGoodsViewData.selectSortType eq "ASC"?"selected":""}><spring:message code="label.cg1001.congdigaodao" /></option>
								<option value="DESC"
									${unionAuctionGoodsViewData.selectSortType eq "DESC"?"selected":""}><spring:message code="label.cg1001.conggaodaodi" /></option>
							</select>
						</div>
		
						<div class='clearfix'></div>
					</div>
					<div>
						<span class="fc-normal-05-l"><spring:message code="label.cg1001.mingcheng" /></span> <input type="text"
							name="selectName" class='select-input'
							value="${unionAuctionGoodsViewData.selectName}" />
					</div>
					
					<div>
						<span class="fc-normal-05-l"><spring:message code="label.cg1001.wanjia" /></span> <input type="text"
							name="saleName" class='select-input'
							value="${unionAuctionGoodsViewData.saleName}" />
					</div>
					<div>
						<img class="sousuo_button"
							src='<p:localurl value="/resources/images/buttons/sousuo-green.png"/>' class='clickTone1'>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="split-01"></div>
	<goods:auctionGoods searchData="${unionAuctionGoodsViewData }"
		searchUrl="/kpyx-logical-service/cg1001/cg100101/index"
		items="${pagedGoodsList}"></goods:auctionGoods>
</div>