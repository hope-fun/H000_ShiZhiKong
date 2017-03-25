<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>

<script type="text/javascript">
function donate(){
	if(judge()){
		var form = document.forms[0];
		form.action = '<p:fullurl value="/cg1201/cg120117/index"/>';
		form.submit();
	};
}
function judge(){
	var silverCoin = $("#silverCoin").val();
	var donateCoin = $("#donateAmount").val();
	if(eval(donateCoin)>eval(silverCoin)){
		kpyxTips("<spring:message code='label.cg120116.tips' />");
		return false;
	}
	return true;
}
</script>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.cg120116.donate.title" /></span>
	</div>

	<div>
		<utils:npcDialog dialogVal="label.cg120116.donate.npc" dialogType="msgKey" imageType="2" />
	</div>

	<div class="title-style">

		<div class="menu-medium title-label-02 label-title-style">
			<span><spring:message code="label.cg120116.donate.labeltitle" /></span>
		</div>

		<form action="">
		<input type="hidden" name=unionId value="${unionMemberVO.unionId }">
		<input type="hidden" name="playerId" value="${playerVO.id }">
		<input type="hidden" name="silverCoin" value="${playerVO.silverCoin }" id="silverCoin">
		<div class="satellite-info-style02">
			<div>
				<div class="borderPanel">
					<div class="panelC-header"></div>
					<div class="panelC-body panelC05-height"></div>
					<div class="panelC-footer"></div>
					<div class="border-content-noleft">
						<div class="menu-medium center-site donate-prompt-style">
							<span><spring:message code="label.cg120116.donate.prompt" /></span>
						</div>
						
						<div class="menu-medium center-site donate-amount-style">
							<div class="donate-amount-width">
								<div style="float:right;">
									<select class="select-amount" name="donateAmount" id="donateAmount">
										<option value="100">100</option>
										<option value="1000">1000</option>
										<option value="10000">10000</option>
										<option value="100000">100000</option>
										<option value="1000000">1000000</option>
										<option value="10000000">10000000</option>
									</select>
								</div>
							</div>
							<div class="donate-crystal-style"><span><spring:message code="label.cg120116.donate.crystal" /></span></div>
						</div>
					
						<div class="conference-buttons donate-button">
							<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/querenjuanzeng-green.png"/>' onclick="donate()">
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
	</div>
</div>