<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script type="text/javascript" charset="utf-8">
$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
			JSInterface.showUpandDown("NO");		
	}, false);
});

function getAllReward(){	
	window.location.href='<p:fullurl value="/cg2001/cg200134/getreward"/>';
	JSInterface.showUpandDown("YES");
}

</script>
<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200134.title"></spring:message></span>
	</div>	
	
	<div class="conference-buttons commonPadding-top03">		
		<img class="clickTone1" onclick="location.href='<p:fullurl value="/cg2001/cg200134/getreward"/>';event.preventDefault();" src='<p:localurl value="/resources/images/buttons/quanbulingqu-green-z.png"/>'>
	</div>
	
	<div class="tipinfodiv">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB07-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimage">
					<div class="tip-info-pic">
						<img src='<p:localurl value="/resources/images/other/large/FPOINT.png"/>'>						
					</div>
				</div>
				<div class="gift-name fc-content-02">
					<div>
						<span class="fc-normal-05-l"><spring:message code="label.cg200134.friendpoint"></spring:message></span>
						<span>X</span>
						<span>${friendPoint}</span>
					</div>
				</div>


			</div>
		</div>
	</div>
	
	<div class="tipinfodiv">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB07-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimage">
					<div class="tip-info-pic">
						<img src="<p:consumImg type="large" id="${playerCardTicketPicId}"></p:consumImg>" />						
					</div>
				</div>
				<div class="gift-name fc-content-02">
					<div>
						<span class="fc-normal-05-l">${cardTicket.name}</span>
						<span>X</span>
						<span>${cardTicketCount}</span>
					</div>
				</div>


			</div>
		</div>
	</div>
	
	<div class="tipinfodiv">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB07-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimage">
					<div class="tip-info-pic">
						<img src="<p:consumImg type="large" id="${fightEnergy.id}"></p:consumImg>" />						
					</div>
				</div>
				<div class="gift-name fc-content-02">
					<div>
						<span class="fc-normal-05-l">${fightEnergy.name}</span>
						<span>X</span>
						<span>${fightEnergyCount}</span>
					</div>
				</div>


			</div>
		</div>
	</div>
	
	<div class="tipinfodiv">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB07-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimage">
					<div class="tip-info-pic">
						<img src="<p:consumImg type="large" id="${finalEnergy.id}"></p:consumImg>" />						
					</div>
				</div>
				<div class="gift-name fc-content-02">
					<div>
						<span class="fc-normal-05-l">${finalEnergy.name}</span>
						<span>X</span>
						<span>${finalEnergyCount}</span>
					</div>
				</div>


			</div>
		</div>
	</div>
	
	<div class="tipinfodiv">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB07-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="tipinfoimage">
					<div class="tip-info-pic">
						<img src="<p:consumImg type="large" id="${magicCircle.id}"></p:consumImg>" />						
					</div>
				</div>
				<div class="gift-name fc-content-02">
					<div>
						<span class="fc-normal-05-l">${magicCircle.name}</span>
						<span>X</span>
						<span>${magicCircleCount}</span>
					</div>
				</div>


			</div>
		</div>
	</div>

	
	<div class="conference-buttons commonPadding01">		
		<img class="clickTone1" onclick="getAllReward()" src='<p:localurl value="/resources/images/buttons/quanbulingqu-green-z.png"/>'>
	</div>




</div>