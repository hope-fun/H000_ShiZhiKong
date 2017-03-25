<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1802.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript">
	function myClick() {
		doSubmit()
	}

	function doSubmit() {
		var codeForm = document.forms.codeForm
		var value = codeForm.code.value
		codeForm.code.value = ''
		codeForm.code.blur()
		if(value != null && value != "") {
			$$.ajax({
			    url: codeForm.action + "?code=" + value,
		      	type: "POST",
		      	data: null,
		      	dataType: 'json',
		      	showMask: false,
		      	success: function(resp) {
						if (resp.playerCodeFeedback != null) {
							msg(resp.playerCodeFeedback, resp.count);
						} else {
							alert("兑换失败!")
						}
		      	}
			})
		}else {
			alert("请输入有效的兑奖码!")
			return false
		}
	}

	function msg(feedback, count) {
		switch(parseInt(feedback)) {
		case 0 :
			alert("请输入有效兑奖码!")
			return false;
		case 1 :
			alert("您的兑奖码已过期!")
			return false;
		case 2 :
			alert("您的兑奖码已被使用!")
			return false;
		case 3 :
			alert("该平台无法使用此兑奖码!")
			return false;
		case 4 :
			alert("您无法使用此特权兑奖码!")
			return false;
		case 5 :
			alert("您已经兑奖过此码!")
			return false;
		case 6 : 
			alert("您的兑奖码已超过最大使用次数!")
			return false;
		case 7 :
			alert("兑奖码兑换成功，请到礼物页领取奖品!")
			JSInterface.setMsgCount(count);
			return false;
		case 8 :
			alert("兑奖码兑换失败!")
			return false;
		case 9 :
			alert("该兑奖码对指定联盟有效!")
			return false;
		}
	}
</script>


<div class="content">
	<div class="main-title menu-medium">
		<span><spring:message code="label.cg190101.title"></spring:message></span>
	</div>
	<div class="tab-panelButton">
		<div>
			<div class="tabbutton25">
				<img class="clickTone1" width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/xingjiPVP-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg1901/cg190101/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/ciyuanPVE-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg1901/cg190102/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/taikongCLUB-yellow-b.png"/>" onclick="location.href='<p:fullurl value="/cg1901/cg190103/index/"/>';event.preventDefault();"/>
			</div>
			<div class="tabbutton25">
				<img class="clickTone1" width="100%" height="100%" src="<p:localurl value="/resources/images/buttons/panduolazhuanqu-blue-b.png"/>" onclick="location.href='<p:fullurl value="/cg1901/cg190104/index/"/>';event.preventDefault();"/>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="split-line"></div>

		<div class="tip-style">
			<span class="fc-normal-06-m">*<spring:message code="label.cg190103.tip"></spring:message></span>
		</div>
		
		<div class="menu-medium title-label-02 ">
			<span>兑奖码领奖</span>
		</div>
		
		<div class="story-list">
				<div class="borderPanel">
					<div class="panelC-header" style="text-align: center;">
						<span class="fc-content-01 convert-info">请输入您的兑奖码领取奖品</span>
					</div>
					<div class="panelC-body panelC02-height convert-style">
						<form action="<p:fullurl value="/cg1901/cg190103/action"/>" name="codeForm">
							<input type="text" name="code" value="" id="code" class="text-style"
								autocomplete="off">
							<input type="text" name="notautosubmit" style="display:none"/> 
						</form>
						<div style="text-align: center;">
							<img class="clickTone1" alt="" src="<p:localurl value="/resources/images/buttons/duihuan-green.png"/>" onclick="myClick()"/>
						</div>
					</div>
					<div class="panelC-footer"></div>
				</div>
			</div>
		
		<div class="split-01"></div>
	</div>
</div>
