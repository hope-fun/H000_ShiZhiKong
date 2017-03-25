<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0303/CG0303.css?v=1"/>">
<script type="text/javascript">
$(document).ready(function(){	
	//音效  ma_li  112   2013_11_7   挑战BOSS失败
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {		
		JSInterface.clickTone(112);
	}, false);
	
});	
</script>	

<div class="content">
	<div class="win-pic-style">
		<img
			src='<p:localurl value="/resources/images/xuanchuan/cg020110lose.png"/>'>
	</div>
	<div class="split-padding-top">
		<div class="split-01"></div>
	</div>
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/chongxintiaozhan-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020104/index/${playerTaskSectionId}/"/>';event.preventDefault();"/>
	</div>
	<div class="continueButton">
			<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/qianwanggushiliebiao-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020101/index2"/>';event.preventDefault();"/>

	</div>
</div>