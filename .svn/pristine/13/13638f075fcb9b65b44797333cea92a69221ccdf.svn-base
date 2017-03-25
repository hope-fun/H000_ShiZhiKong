<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="utils" tagdir="/WEB-INF/tags/utils" %>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg120306.vipWarResult.title"/></span>
	</div>
	<div class="advertise-activity">
		<img style="width:100%;height:100%" alt="" src="<p:localurl value="/resources/images/xuanchuan/cg120307vipWarFail.png"/>"/>
	</div>
	
	<utils:npcDialog dialogVal="label.cg120306.vipWarResult.fail.npc" dialogType="msgKey" imageType="2" />

	<div>
		<div class="panel-01">
			<div class="panel-header-style">
				<div class="phase-header">
					<span class="padding-left22"><spring:message code="label.cg120306.vipWarResult.fail.show"/></span>
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
									<span class="fc-normal-04-l"><spring:message code="label.cg120303.vipsystem.unionCoin"/> : </span> <span>${old_coin }</span>
								</div>
								<div class="center-site arrow-style02">
									<img src='<p:localurl value="/resources/images/Arrow02.png"/>'>
								</div>
								<div class="new-coin-style">
									<span>${new_coin }</span>
								</div>

							</div>

							<div class="clearfix"></div>
						</div>

						<div class="center-site commonPadding-top menu-medium">
							<span><spring:message code="label.cg120306.vipWarResult.fail.punish"/></span>
						</div>
						<div class="split-item-down"></div>

						<div class="conquest-point system-content-bold fc-content-03">
							<div>
								<div><img class="scoin-pic" src='<p:localurl value="/resources/images/other/small/SCOIN.png"/>'></div>
								<div class="fc-normal-05-m"><spring:message code="label.cg120306.vipWarResult.fail.coin"/></div>
								<div>${coin }</div>
							</div>
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
<script type="text/javascript" charset="utf-8">
	function returnUnion(){
		window.location.href = "<p:fullurl value='/cg1201/cg120112/index' />";
	}
</script>