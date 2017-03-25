<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<script type="text/javascript">
function doJump() {
	var name = document.getElementById("playername").value.replace(/(^\s*)|(\s*$)/g, "");
	
	var verifyURL = '<p:fullurl value="/cg2001/cg200102/verify/" />';
	var url = '<p:fullurl value="/cg2001/cg200103/index/${playerCampType}/" />';
	
	if (name && name != "") {
		var reg = /^([\u4E00-\u9FA5]|[A-Za-z0-9])*$/;
		if (reg.test(name)) {
			var strlength = name.length;
			strlength = name.replace(/[\u4e00-\u9fa5]/g, "aa").length;
			if (strlength < 4 || strlength > 12) {
				alert("<spring:message code='label.cg200102.notice.font.count'></spring:message>");
				JSInterface.stopLoding();
				return false;
			} else {
				$.ajax({
					url : verifyURL,
					type : 'post',
					headers: {
				          "contentType": "application/x-www-form-urlencoded; charset=UTF-8"
				    },
					jsonType : 'json',
					data: {"name" : name},
					success : function(data) {
						data = JSON.parse(data);
						if (null != data && !data.result) {
							window.location.href = url + "?playerName="+name;
						} else {
							alert("<spring:message code='label.cg200102.notice.name.exist'></spring:message>");
							stopLoding();
							return false;
						}
					}
				});
			}
		} else {
			alert("<spring:message code='label.cg200102.notice.name.type'></spring:message>");
			JSInterface.stopLoding();
			return false;
		}
	} else {
		alert("<spring:message code='label.cg200102.notice.name.null'></spring:message>");
		JSInterface.stopLoding();
	}
}

function randomName() {
	var url = '<p:fullurl value="/cg2001/cg200102/random" />';

	$.ajax({
		url : url,
		type : 'get',
		headers: {
	          "contentType": "application/x-www-form-urlencoded; charset=UTF-8"
	    },
		jsonType : 'json',
		data: null,
		success : function(data) {
			data = JSON.parse(data);
			$("#playername")[0].blur();
			$("#playername").val(data.name);
		}
	});
}

$(document).ready(function(){		
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
			JSInterface.showUpandDown("NO");
	}, false);
});

</script>
<div id="stopLoading"></div>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg200102.newcommer.register.name"></spring:message></span>
	</div>

	<div class="center-site">
		<div class="fc-normal-08-m commonPading01 tips_cg2001">
			<span><spring:message code="label.cg200101.newcommer.reward"></spring:message></span> <span class="red-font"><spring:message
					code="label.cg200101.newcommer.reward.value"></spring:message></span> <span><spring:message code="label.cg200101.newcommer.reward.info"></spring:message></span>
		</div>
	</div>



	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img-new">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="npc-message-cg2001-new">
						<spring:message code="label.cg200102.newcommer.explore.ready"></spring:message>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="split-01"></div>

	<div class="menu-font-max center-site commonPading08">
		<span><spring:message code="label.cg200102.newcommer.hero.name"></spring:message></span>
	</div>

	<div class="center-site system-content-other">
		<span><spring:message code="label.cg200102.newcommer.control.fontsize"></spring:message></span>
	</div>

	<div class="commonPading01">
		<div class="center-site">
			<c:if test="${empty playerName }">
				<input type="text" id="playername" class="cg200102-player-name" value=""></input>
			</c:if>
			<c:if test="${not empty playerName }">
				<input type="text" id="playername" class="cg200102-player-name" value="${playerName}"></input>
			</c:if>
		</div>
	</div>
	
	<div class="conference-buttons">
		<img class="clickTone1" onclick="randomName();" src='<p:localurl value="/resources/images/buttons/suijiquming-green-z.png"/>'>		
	</div>

	<div class="split-01"></div>

	<div class="conference-buttons">
		<img class="clickTone1" onclick="doJump();" src='<p:localurl value="/resources/images/buttons/jixu-green-d.png"/>'>		
	</div>


</div>


