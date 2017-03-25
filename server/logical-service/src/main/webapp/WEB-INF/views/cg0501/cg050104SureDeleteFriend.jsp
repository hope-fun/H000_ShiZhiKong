<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0501.css?v=1"/>">
<div class="content">

	<div class="menu-medium title-label-03">
		<span><spring:message code="label.cg050104.delmsg" /></span>
	</div>

	<div class="font-div-style">
		<div class="deletefriend-card-bg">
			<img alt="cardId" src='<p:cardImg type="middle" id="${friendCardId }" />' />
		</div>
	</div>

	<div
		class=" font-div-style fc-content-02 center-site padding-top-style">
		<span class=""><c:out value="${friendName }" /></span>
	</div>

	<!-- 002  B002 frame-2  start -->
	<div class="panel-06 padding-top-style">
		<div>
			<div class="label-level-1">
				<span class=""><spring:message code="label.cg050104.delprompt1" /><c:out value="${reducePowerTotal }" /><spring:message code="label.cg050104.delprompt2" /></span>
			</div>

			<div class="label-level-2">
				<div class="action-power-style">
					<div class="archives-item fc-normal-05-m">
						<span><spring:message code="label.cg050104.action_power" /></span><span class="fc-normal-03-m"><c:out value="${sign }" /><c:out value="${reduceActionPower }" /></span>
					</div>
				</div>
				<div style="text-align:center;">
					<div class="archives-item fc-normal-05-m">
						<span><spring:message code="label.cg050104.attack_power" /></span><span class="fc-normal-03-m"><c:out value="${sign }" /><c:out value="${reduceAttackPower }" /></span>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="label-level-3">
				<div class="archives-item fc-normal-05-m">
					<span><spring:message code="label.cg050104.defence_power" /></span><span class="fc-normal-03-m"><c:out value="${sign }" /><c:out value="${reduceDefencePower }" /></span>
				</div>
				<div class="clearfix"></div>
			</div>

			<div id="cg050101_button_detail" class="center-button center-site padding-top-style">
				<input class="btn_doDelete clickTone1" type="image" value="<c:out value='${friendId }' />" src="<p:localurl value='/resources/images/buttons/yichuzhanyou-green.png'/>" />
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
		<input id="doDeleteUrl" type="hidden" value="<p:fullurl value='/cg0501/cg050104/DoDeleteFriend/'/>" />
	</div>
	<!-- 002  B002 frame-2  end -->
</div>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0501/cg050104SureDeleteFriend.js'/>"></script>