<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>


<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<script type="text/javascript"  src="<p:fullurl value="/resources/js/cg0301/auctionGoods.js"/>"></script>
<input type="hidden" id="cg0301operatefail" value="<spring:message code='label.cg0301.operatefail' />"/>
<input type="hidden" id="cg0301auctionsuccess" value="<spring:message code='label.cg0301.auctionsuccess' />"/>
<input type="hidden" id="cg0301upperlimit" value="<spring:message code='label.cg0301.upperlimit' />"/>
<input type="hidden" id="cg0301decimalsforbid" value="<spring:message code='label.cg0301.decimalsforbid' />"/>
<input type="hidden" id="cg0301auctionprice" value="<spring:message code='label.cg0301.auctionprice' />"/>
<input type="hidden" id="cg0301auctionrightprice" value="<spring:message code='label.cg0301.auctionrightprice' />"/>
<input type="hidden" id="cg0301numlimit" value="<spring:message code='label.cg0301.numlimit' />"/>
<input type="hidden" id="cg0301rightform" value="<spring:message code='label.cg0301.rightform' />"/>


<div class="content">
	<div class="menu-medium title-label-03"><span><spring:message code="lable.cg0601.wupin"/></span></div>
	<input type="hidden" id="localurl" value='<p:fullurl value="/cg0601/cg060103/index" />'/>
	<div class="twobuttondiv">
		<a href="<p:fullurl value="/cg0601/cg060101/index"/>" class="top-button btn_img_daoju leftbuttonStyle clickTone1"></a>
		<a href="<p:fullurl value="/cg0602/cg060201/index"/>" class="top-button btn_img_zhuangbei rightbuttonStyle clickTone1"></a>
		<div style="clear: both;"></div>
	</div>
	<!--  
	<div class="panel-0601">
		<div class="propsListStyleB001 ">
			<div>
				<div class="B001ImageDiv">
					<div class="B001ImageStyle"></div>
				</div>
				<div class="floatLeft fc-normal-05-m">
					<div class="propsName system-title"><span>&nbsp;</span></div>
					<div><span><spring:message code="lable.cg0601.shoujiliumei"/></span></div>
					<div><span><spring:message code="lable.cg0601.jianglibaohan"/></span></div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
	</div>
	-->	
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel" style="width:100%;">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="fc-normal-05-l npc-message">							
						<spring:message code='label.cg060103.msg_npc'></spring:message>					
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div> 
	
	
	<div class="tab-panel02">
		<div class="tab-shop">
			<div style="float:left;"  
				onclick="window.location.href = '<p:fullurl value="/cg0601/cg060101/index" />'">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/daojuyilan-blue-b.png" />" />
			</div>
			<div class="tab-active" style="float:left;"
				onclick="window.location.href = '<p:fullurl value="/cg0601/cg060102/index" />'">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/chushou-blue-b.png" />" />
			</div>
			<div style="float:left;" onclick="window.location.href = '<p:fullurl value="/cg0601/cg060103/index" />'">
				<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/paimai-yellow-b.png" />" />
			</div>
			<div></div>
		</div>
		<div class="split-line"></div>
		
		<c:choose>
			<c:when test="${not empty playerConsumable }">
				<div>
					<cards:0601_showAuctionList searchData="${searchConsumablesVO }"
								searchUrl="/kpyx-logical-service/cg0601/cg060103/index"
								items="${playerConsumable}"></cards:0601_showAuctionList>
				</div>	
			</c:when>
			<c:when test="${empty playerConsumable }">
			<div style="float:none;clear: both;width:100%;"></div>
			<div style="text-align: center;">
				<span><spring:message code="lable.cg0601.ninhaimeiyourenhedaoju"/>!</span>
			</div>
				
	        </c:when>
		</c:choose>
			
	</div>
</div>

