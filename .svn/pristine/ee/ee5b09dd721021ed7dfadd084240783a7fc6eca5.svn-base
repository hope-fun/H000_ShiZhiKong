<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script>
	document.addEventListener("keydown",function() {
		if(event.keyCode == 13 || event.keyCode == 108)
			event.preventDefault();
	});
</script>

<input type="hidden" id="revampsuccess" value="<spring:message code='label.cg030301.revampsuccess'/>" /> 
<input type="hidden" id="teamname" value="<spring:message code='label.cg030301.teamname'/>" /> 
<input type="hidden" id="teamnamecondition" value="<spring:message code='label.cg030301.teamnamecondition'/>" /> 
<input type="hidden" id="notnull" value="<spring:message code='label.cg030301.cannotnull'/>" /> 
<input type="hidden" id="notblank" value="<spring:message code='label.cg030301.cannotblank'/>" />
<div class="content cg03030201">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg03030201.title"></spring:message></span>
	</div>
	
	<div class="borderPanel"  >
		<div class="panelB-header"></div>
		<div class="panelB-body panelB01-height"></div>
		<div class="panelB-footer"></div>
		<div class="border-content-noleft">
			<div class="information">
				<div class="div1">
					<img src='<p:localurl value="/resources/images/npc-2.png"/>' />
				</div>
				<div class="div2">
					<span class='fc-normal-05-m'><spring:message code='label.cg03030201.npc_msg'></spring:message></span>
				</div>
				<div></div>	
			</div>
		</div>
	</div>
	<div class="println">
		<span><spring:message code="label.cg03030201.println"></spring:message></span>
	</div>
	<form id="namespace" method="POST"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
	<div class="change-cardgroupname">
		<div class="div1">
			<input type="text" name="changedName" class="nametextarea" value="${playerCardGroupVO.name }"/>
		</div>		
		<div class="div2">
			<input type="hidden" id="urlPath" value='<p:fullurl value="/cg0303/cg03030201/index/${playerCardGroupVO.id}"/>'/>
		<a onclick="doHandle('<p:fullurl value="/cg0303/cg03030201/clickFinish/${playerCardGroupVO.id}"/>')">
			<img  src='<p:localurl value="/resources/images/buttons/wancheng.png"/>' class='finish-button clickTone1'>
		</a>
		</div>
		<div></div>
	</div>
	</form>
	<div class="check-group">
		<img alt="" src="<p:localurl value="/resources/images/buttons/chakanzhenrong-green-z.png"/>" class='clickTone1' onclick='location.href="<p:fullurl value="${urlPath }"/>"'>
	</div>
	<div class="gbutton-03">
		<img src="<p:localurl value="/resources/images/buttons/tishengzhenrongyouxiandu-green-z.png"/>"
			onclick='location.href="<p:fullurl value="/cg0303/${urlId }/raiseordernumber/${playerCardGroupVO.id }/${playerCardGroupVO.orderNumber }/${playerCardsGroupVO2.orderNumber}"/>"'
			class='clickTone1' />
	</div>
	<input id="revampsuccess" type="hidden" value="<spring:message code='label.cg030301.revampsuccess'/>"/>
	<input id="teamname" type="hidden" value="<spring:message code='label.cg030301.teamname'/>"/>
	<input id="teamnamecondition" type="hidden" value="<spring:message code='label.cg030301.teamnamecondition'/>"/>
	<input id="cannotnull" type="hidden" value="<spring:message code='label.cg030301.cannotnull'/>"/>
	<input id="cannotblank" type="hidden" value="<spring:message code='label.cg030301.cannotblank'/>"/>
	
</div>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0303/cg030301.js"/>"></script>