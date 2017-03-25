<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="task" tagdir="/WEB-INF/tags/task"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<!-- 
<script type="text/javascript" src="<<p:fullurl value="/resources/js/common/jquery-1.7.2.js"/>"></script>
 -->
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/third-party/jquery/jquery-1.9.1.min.js" />"></script>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>
<script>
$(document).ready(function(){	
	document.addEventListener('WebViewJavascriptBridgeReady', function(event) {	
		//音效  ma_li  开始PVE背景音乐
		JSInterface.clickTone(108);
	}, false);
});

$(function(){
	var dialogs = null;
	var isFirst = ${isFirst};
	if (isFirst) {
		$.ajax({
			url : '<p:fullurl value='/cg0201/cg020102/dialogues/${taskChapter.id}' />',
			type : 'POST',
			success : function(data) {
				var height = $('body').height();
				var width = $('body').width();
				//document.getElementById("w-mask-dialog").style.height = height + "px";
				$("#w-mask-dialog").height(height);
				//$(".dialogue_container_parent").css('top', ($(window).height()-150)/2 + 'px');				
				$(".dialogue_container").css('left', '50px');
				//dialogs = JSON.parse(data).data;
				dialogs = data.data;
				//var firstDialog = JSON.parse(data).data[0];
				var firstDialog = data.data[0];
				if (firstDialog.roleType == 'A') {
					$(".dialogue_role").addClass('npc-a');
				} else if (firstDialog.roleType == 'B') {
					$(".dialogue_role").addClass('npc-b');
				} else if (firstDialog.roleType == 'C') {
					$(".dialogue_role").addClass('npc-c');
				} else if (firstDialog.roleType == 'D') {
					$(".dialogue_role").addClass('npc-d');
				}
				
				$(".w-mask-dialog").show();
				$(".dialogue_container").show();
				$(".dialogue_content").text(firstDialog.content);
				$(".next").attr('id', firstDialog.orderNumber + 1);
			},
			error : function(e) {
				console.log(e);
			}
		});
	}
	
	$(".next").click(function(){
		var targetOrder = $(this).attr('id');
		var maxOrder = 0;
		$(dialogs).each(function(index, dialog){
			if(dialog.orderNumber == targetOrder) {
				$(".dialogue_content").text(dialog.content);
				$(".dialogue_role").removeClass('npc-a').removeClass('npc-b').removeClass('npc-c').removeClass('npc-d');
				$(".next").attr('id', dialog.orderNumber + 1);
				if (dialog.roleType == 'A') {
					$(".dialogue_role").addClass('npc-a');
				} else if (dialog.roleType == 'B') {
					$(".dialogue_role").addClass('npc-b');
				} else if (dialog.roleType == 'C') {
					$(".dialogue_role").addClass('npc-c');
				} else if (dialog.roleType == 'D') {
					$(".dialogue_role").addClass('npc-d');
				}
				maxOrder = maxOrder < dialog.orderNumber ? dialog.orderNumber : maxOrder;
			}
			
		});
		if(parseInt(targetOrder) > maxOrder) {
			$(".w-mask-dialog").hide();
			$(".dialogue_container").hide();
		}
		
	});
});
</script>
<div class="content">
	<div class="menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020102.di"></spring:message>${taskChapter.orderNumber}<spring:message code="label.CG020102.zhang"></spring:message>：${taskChapter.name}</span>
	</div>
	<div>
		<img alt="" src="<p:localurl value='/resources/images/scene/${taskChapter.id}.png' />">
	</div>
	<!-- 故事预告列表 -->
	<div class="menu-medium title-label-02">
		<span><spring:message code="label.CG020102.list"></spring:message></span>
	</div>
	<div>
		<task:storyList searchData="${PlayerTaskStoryViewData}" searchUrl="/kpyx-logical-service/cg0201/cg020102/index" items="${playerTaskStoryPagedList}"></task:storyList>
	</div>
	<div class="goto-button-style" style="">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/qianwangdazhangliebiao-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020101/index2'/>')" />
	</div>
</div>
<div class="w-mask-dialog" id="w-mask-dialog" style="display:none;">
</div>
<div class="dialogue_container_parent" style="margin:0 auto; position: absolute;">
<div id="" class="dialogue_container next" style="display:none;">
	<div class="dialog-height" style="display: table;">
		<div class="dialogue_role"></div>
		<div class="dialogue_content npc-message"></div>
	</div>
	<div class="goto-next-padding">
		<a id="" class="next" href='#'>
			<img class="clickTone1" src='<p:localurl value="/resources/images/sanjiao2.png"/>'>
		</a> 
	</div>
</div>
</div>