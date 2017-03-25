<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120123.unionWarResult.title"/></span>
	</div>
	<div class="advertise-activity">
		<img style="width:100%;height:100%" alt="" src="<p:localurl value="/resources/images/xuanchuan/cg120123unionWarWin.png"/>"/>
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
					<span class="padding-left22"><spring:message code="label.cg120123.unionWarResult.win.show"/></span>
				</div>
			</div>
			<div class="vip-union-info">
				<div class="borderPanel">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA15-height"></div>
					<div class="panelA-footer"></div>
					<div class="border-content-noleft">
						<div class="union-war-style">
							<div class="fc-content-03 menu-medium center-site union-war-exp">
								<div class="war-exp-style">
									<span class="fc-normal-02-l"><spring:message code="label.cg120123.unionWarResult.unionexp"/> : </span> 
									<span>${old_exp }</span>
								</div>
								<div class="arrow-style05">
									<img src='<p:localurl value="/resources/images/Arrow03.png"/>'>
								</div>
								<div class="now-union-exp">
									<span>${new_exp }</span>
								</div>
							</div>

							<div class="fc-content-03 menu-medium center-site union-war-coin">

								<div class="war-exp-style">
									<span class="fc-normal-04-l"><spring:message code="label.cg120123.unionWarResult.unioncoin"/> : </span> 
									<span>${old_coin }</span>
								</div>
								<div class="center-site arrow-style05">
									<img src='<p:localurl value="/resources/images/Arrow02.png"/>'>
								</div>
								<div class="now-union-exp">
									<span>${new_coin }</span>
								</div>

							</div>

							<div class="clearfix"></div>
						</div>

						<div class="center-site commonPadding-top menu-medium">
							<span><spring:message code="label.cg120123.unionWarResult.win.award"/></span>
						</div>
						<div class="split-item-down"></div>

						<div class="conquest-point system-content-bold fc-content-03">
							<div class="union-war-exp-info">
								<div><img src='<p:localurl value="/resources/images/other/small/exp.png"/>' class="exp-pic-war"></div>
								<div class="fc-normal-05-m"><spring:message code="label.cg120123.unionWarResult.exp"/></div>
								<div>${exp }</div>
							</div>

							<div style="float:left;">
								<div><img src='<p:localurl value="/resources/images/other/small/SCOIN.png"/>' class="exp-pic-war"></div>
								<div class="fc-normal-05-m"><spring:message code="label.cg120123.unionWarResult.coin"/></div>
								<div>${coin }</div>
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