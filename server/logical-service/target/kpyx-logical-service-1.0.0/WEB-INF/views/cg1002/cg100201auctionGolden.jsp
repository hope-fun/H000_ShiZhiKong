<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<input type="hidden" id="cg1002operatefail" value="<spring:message code='label.cg0301.operatefail'/>"/>	
<input type="hidden" id="cg1002soldsuccess" value="<spring:message code='label.cg1002.soldsuccess'/>"/>	
<input type="hidden" id="cg1002operatefail" value="<spring:message code='label.cg1002.soldfail'/>"/>
<input type="hidden" id="cg1002auctionnum" value="<spring:message code='label.cg1002.auctionnum'/>"/>
<input type="hidden" id="cg1002notdecimalpoint" value="<spring:message code='label.cg1002.notdecimalpoint'/>"/>
<input type="hidden" id="cg1002inputauctionprice" value="<spring:message code='label.cg1002.inputauctionprice'/>"/>
<input type="hidden" id="cg1002auctionrightprice" value="<spring:message code='label.cg0301.auctionrightprice'/>"/>
<input type="hidden" id="cg1002inputfigure" value="<spring:message code='label.cg060103.inputfigure'/>"/>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG100201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1001.chushouxinxibianji" /></span>
	</div>
	<div class="tabpanel">

		<div>
			<img alt=""
				src='<p:localurl value="/resources/images/buttons/chushouzuanshi-yellow-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg100201/index"/>';event.preventDefault();"/>
		</div>
		<!-- <div>
			<img alt=""
				src='<p:localurl value="/resources/images/buttons/chushoushuijng-blue-b.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1002/cg10020101/index"/>';event.preventDefault();"/>
		</div> -->

		<div></div>
	</div>
	<div class="split-line"></div>
	<div>
		<div class="panel-saleG">
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB06-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content">
					<div class="consumer-list">
						<div class="consumer-list-title">
							<span class="fc-normal-05-m system-content-bold"><spring:message
									code="label.cg1001.nindangqianyongyouzuanshi" /></span><span
								class="all_goldcoin">${playerVO.goldCoin }</span><span><spring:message
									code="label.cg1001.zuanshi" /></span>
						</div>
					</div>
					<div class="consumer-list-image"></div>
					<div class="sale_message">
						<div>
							<span class="fc-normal-05-m system-content-bold"><spring:message
									code="label.cg1001.chushoujiage" /></span> <input
								type="text" id="salePrice" class="price diamond-price"
								value="" /> <span><spring:message
									code="label.cg1001.shuijin" /></span>
						</div>
						<div>
							<span class="fc-normal-05-m system-content-bold"><spring:message
									code="label.cg1001.chushoushuliang" /></span> 
							<select id="selct_sale_num" class="select-diamond-count"
								onchange="change(this.options[this.options.selectedIndex].value)">
								<option value="0" >0</option>
								<c:if test="${not empty selectedLst }">
									<c:forEach items="${ selectedLst}" var="selected"
										varStatus="idx">
										<option value="${selected}">${selected}</option>
									</c:forEach>
								</c:if>
							</select> <span><spring:message code="label.cg1001.zuanshi" /></span>
						</div>
						<div class="sale_num">
							<span><spring:message code="label.cg1001.ninxuanzechushou" /></span><span
								class="select_num">0</span><span><spring:message
									code="label.cg1001.gezuanshi" /></span>
						</div>
						<div class="sale_button">
							<img alt=""
								src='<p:localurl value="/resources/images/buttons/queding-green.png"/>'class='clickTone1'>
						</div>
					</div>
				</div>
			</div>
		</div>

		<input type="hidden" value='<p:fullurl value="${url }"/>'
			class="urlpath"> <input type="hidden"
			value='<p:fullurl value="${index }"/>' class="doneCallbackUrl">
		<div class="panel-saleG">
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB01-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content">
					<div class="npc-message">
						<div class="npc-pic">
							<div>
								<img alt=""
									src='<p:localurl value="/resources/images/npc-2.png"/>'>
							</div>
						</div>
						<div class="npc-info">
							<div>
								<span class="fc-normal-05-m system-content-bold"><spring:message
										code="label.cg1001.ninquedingyaochushouma" /></span>
							</div>
						</div>
						<div></div>
					</div>
				</div>

			</div>
		</div>

		<div class="backtoauction">
				<img alt=""
				src='<p:localurl value="/resources/images/buttons/fanhuipaimaihangshouye-green-z.png"/>' class='clickTone1' onclick="location.href='<p:fullurl value="/cg1001/cg100101/index"/>';event.preventDefault();">
		</div>
	</div>


</div>
<script type="text/javascript" charset="utf-8"
	src="<p:localurl value='/resources/js/cg1002/cg1002.js'/>"></script>