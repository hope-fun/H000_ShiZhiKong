<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120123.unionWarResult.title"/></span>
	</div>
	<div class="advertise-activity">
		<img class="adv-pic" alt="" src="<p:localurl value="/resources/images/xuanchuan/cg120124unionWarFail.png"/>"/>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB09-height"></div>
			<div class="panelB-footer-right"></div>
			<div class="border-content-noleft">
				<div class="lableText02 commonPadding-top">
					<span>${union.name }</span>
				</div>
				<div class="split-item-down"></div>


				<div class="union-war-style">
					<div class="menu-medium union-war-result">
						<div class="fc-normal-05-l">
							<span><spring:message code="label.cg120123.unionWarResult.level"/> : </span><span class="fc-content-02">${union.level }</span>
						</div>
						<div class="fc-normal-05-l commonPadding-top">
							<span><spring:message code="label.cg120123.unionWarResult.unioncoin"/> : </span><span class="fc-content-02">${union.silverCoin }</span>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<div>
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header">
					<span class="padding-left22"><spring:message code="label.cg120124.unionWarResult.fail.show"/></span>
				</div>
			</div>
			<div class="vip-union-info">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA07-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div class="union-vip-sys">
							<div class="fc-content-03 menu-medium center-site vip-system-union-info">
								<div class="union-coin-style">
									<span class="fc-normal-02-l"><spring:message code="label.cg120123.unionWarResult.unionexp"/> : </span> <span>${old_exp }</span>
								</div>
								<div class="arrow-style02">
									<img src='<p:localurl value="/resources/images/Arrow03.png"/>'>
								</div>
								<div class="new-coin-style">
									<span>${new_exp }</span>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>

						<div class="center-site commonPadding-top menu-medium">
							<span><spring:message code="label.cg120124.unionWarResult.fail.punish"/></span>
						</div>
						<div class="split-item-down"></div>

						<div class="conquest-point system-content-bold fc-content-03">
							<div>
								<div><img class="scoin-pic-style" src='<p:localurl value="/resources/images/other/small/SCOIN.png"/>'></div>
								<div class="fc-normal-05-m"><spring:message code="label.cg120123.unionWarResult.exp"/></div>
								<div>${exp }</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="commonPading02" style="text-align: center;">
			<img class="link_hand clickTone1" src="<p:localurl value="/resources/images/buttons/fanhuiliangmengshouye-green-z.png"/>" onclick="returnUnion()" />
		</div>
	</div>
</div>
<script type="text/javascript" charset="utf-8">
	function returnUnion(){
		window.location.href = "<p:fullurl value='/cg1201/cg120112/index' />";
	}
</script>