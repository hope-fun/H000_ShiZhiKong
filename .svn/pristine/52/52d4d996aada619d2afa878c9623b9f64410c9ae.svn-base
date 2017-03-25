<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<script type="text/javascript">
function donate(){
	var form = document.forms[0];
	form.action = '<p:fullurl value="/cg1201/cg120117/donate"/>';
	form.submit();
}
</script>
<div class="content">

	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120117.title" /></span>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content">
				<div class="message-padding">
					<div class="split-item-up"></div>
					<div class="commonPading02 message-width">
						<span class="fc-content-02 menu-medium ">${message }</span>
					</div>
					<div class="split-item-down"></div>
				</div>
				<div class="donate-record-info">
					<div class="donate-record-width">
						<div class="fc-content-02 menu-medium">
							<span class="fc-normal-02-l"><spring:message code="label.cg120117.unionlevel" />: </span><span>+</span><span><fmt:formatNumber type="number" value="${unionDonateRecordsVo.donateAmount/100 }" maxFractionDigits="0" /></span>
						</div>

						<div class="fc-content-02 menu-medium  player-coin-style">

							<div class="silver-coin-width">
								<span class="fc-normal-04-l"><spring:message code="label.cg120117.ownSilverCoin" />: </span><span class="fc-content-02">${playerVO.silverCoin }</span>
							</div>
							<div class="arrow-style03" >
								<img src='<p:localurl value="/resources/images/Arrow02.png"/>'>
							</div>
							<div class="donate-amount-style02">
								<span>${playerVO.silverCoin-unionDonateRecordsVo.donateAmount }</span>
							</div>

						</div>
					</div>

				</div>
			</div>
			
			<form action="">
			<input type="hidden" name=unionId value="${unionDonateRecordsVo.unionId }">
			<input type="hidden" name="playerId" value="${unionDonateRecordsVo.playerId}">
			<input type="hidden" name="donateAmount" value="${unionDonateRecordsVo.donateAmount }" id="silverCoin">
			<div class="conference-buttons donate-button-style" onclick="donate()">
				<img class="clickTone1"
					src='<p:localurl value="/resources/images/buttons/juanzeng-green-x.png"/>'/>
			</div>
		    </form>
		</div>
	</div>
	
</div>