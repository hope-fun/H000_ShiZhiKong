<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>" />
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/cg0101/cg0101.js"/>"></script>
<script>
	function styleFixer() {
		$("input[name='isLoudspeakerEnough']").val() == "true"?$("#warning").attr("style", "display:none"):$("#warning").removeAttr("style");
		document.getElementById('chatRoom').scrollTop = document
		.getElementById('chatRoom').scrollHeight;
	}

	$(function() {
		//弹出提示框 add by wujianjun 2013/8/13
		var height = document.body.offsetHeight;
		var width = $('body').width();
		$("#w-mask-dialog").css('height',height+'px');
		$(".dialogue_container").css('top', document.body.scrollTop+(window.screen.height-80)/2 + 'px');
		$(".w-mask-dialog").show();
		$(".dialogue_container").show();
		
		
		
		
		styleFixer();messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg010102/init'/>')});
	
	function doAfterPrint(obj) {
		$("input[name='time']").val(obj.refreshDate);
		$("input[name='isLoudspeakerEnough']").val(obj.isLoudspeakerEnough);
		styleFixer();
	}

	var timeInterval = 5000;
	setInterval("messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg010102/getMessages'/>')", timeInterval);
</script>
<input type="hidden" id="loudspeakernotenough" value="<spring:message code='label.cg0101.loudspeakernotenough' />"/>
<input type="hidden" id="speaktoofast" value="<spring:message code='label.cg0101.speaktoofast' />"/>
<input type="hidden" id="cg0101inputnull" value="<spring:message code='label.cg0101.inputnull' />"/>
<input type="hidden" id="illegalcharacter" value="<spring:message code='label.cg0101.illegalcharacter' />"/>
<div class="content">


	<!-- add banner div begin-->
	<div class="w-mask-dialog" id="w-mask-dialog">
	</div>
	<div class="dialogue_container" id="dialogue_container" >
		<div id="dialogue_container_header" class="banner_heard_height"></div>
	
		<div class="banner_middle_height">
			<c:forEach items="${mainBannerList}" var="mainBanner">
				<div class="banner_blank_height"></div>
				<div><a href="#" onclick="location.href = '${mainBanner.clickUrl}';event.preventDefault();" ><img class="clickTone1" src="<p:localurl value="${mainBanner.imageUrl}"/>"/></a></div>
			</c:forEach>
		</div>
		
		<div class="banner_bottom_height">
			<c:forEach items="${subBannerList}" var="subBanner">
				<div class="banner_blank_height"></div>
				<div><a href="#" onclick="location.href = '${subBanner.clickUrl}';event.preventDefault();" ><img class="clickTone1" src="<p:localurl value="${subBanner.imageUrl}"/>"/></a></div>
			</c:forEach>
		</div>
	</div>


<!-- add banner div end -->

	<input type="hidden" name="isLoudspeakerEnough"
		value="${initData.isLoudspeakerEnough}">
	<div class="NoticePublisher">
		<img
			src="<p:localurl value="/resources/images/xuanchuan/cg010101.png"/>"
			onclick="javascript: JSInterface.startWeixin();" /> <img
			src="<p:localurl value="/resources/images/xuanchuan/cg010102.png"/>"
			onclick="location.href='<p:fullurl value='/cg2101/cg210103/index'/>'" />
		<img
			src="<p:localurl value="/resources/images/xuanchuan/cg010103.png"/>"
			onclick="location.href='<p:fullurl value='/cg2101/cg210101/index'/>'" />
		<img
			src="<p:localurl value="/resources/images/xuanchuan/cg010104.png"/>"
			onclick="location.href='<p:fullurl value='/cg2101/cg210102/index'/>'" />
		<img
			src="<p:localurl value="/resources/images/xuanchuan/cg010105.png"/>"
			onclick="location.href='<p:fullurl value='/cg2101/cg210104/index'/>'" />
	</div>

	<div class="padding-style-10">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA02-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div>
					<div>
						<span><spring:message code="label.cg010102.notice"></spring:message></span>
					</div>
					<div class="fc-gonggao"
						style="text-align: left">
						<span><spring:message code="label.cg010102.notice.content"></spring:message></span>
						<span class="fc-normal-04-m system-content-other"
							style="font-weight: bold;"><spring:message
								code="label.cg010102.notice.info"></spring:message></span>
					</div>
					<%-- <div class="chankangengduo">
						<img
							src="<p:localurl value="/resources/images/buttons/chankangengduo.png"/>"
							class="clickTone1"
							onclick="location.href='<p:fullurl value='/cg2101/cg210105/index'/>'" />

					</div> --%>
				</div>
			</div>
		</div>
	</div>

	<%-- 

	<div class="panelA02 ">
		<div class="commonPading01" style="width: 90%; text-align: center;">
			<div>
				<span><spring:message code="label.cg010102.notice"></spring:message></span>
			</div>
			<div class="fc-content-02 system-content-other"
				style="text-align: left">
				<span><spring:message code="label.cg010102.notice.content"></spring:message></span>
				<span class="fc-normal-04-m system-content-other"
					style="font-weight: bold;"><spring:message
						code="label.cg010102.notice.info"></spring:message></span>
			</div>
			
		</div>
	</div> --%>


	<div id="gotoHomePage" class="commonPading02 clickTone1"
		onclick="location.href = '<p:fullurl value='/cg0101/cg010103/myHomePage'/>';">
		<img
			src="<p:localurl value="/resources/images/buttons/dianijkaishi-green-d.png"/>" />
	</div>
	<div class="split-01"></div>
	<div class="tab-view">
		<div class="clickTone1"
			onclick="window.location.href = '<p:fullurl value="/cg0101/cg010102/index" />'">
			<img width="100%" height="100%"
				src="<p:localurl value="/resources/images/buttons/shijieliaotian-yellow-b.png" />" />
		</div>
		<div class="clickTone1"
			<c:if test="${canGuildChat}">onclick="window.location.href = '<p:fullurl value='/cg0101/cg01010201/index'/>'"</c:if>
			<c:if test="${not canGuildChat}">onclick="alert('您还没有加入联盟')"</c:if>>
			<img width="100%" height="100%"
				src="<p:localurl value="/resources/images/buttons/lianmengliaotian-blue-b.png" />" />
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<div class="panelD-header"></div>
	<div class="panelD-body">
		<div class="chatRoom" id="chatRoom">
			<c:forEach items="${initData.data}" var="data">
				<div>${data.playerName.trim()}:${data.messageBody.trim()}</div>
			</c:forEach>
		</div>
		<div class="fc-normal-02-m commonPading05 char" >
			<span><spring:message code="label.cg010102.message.head"></spring:message></span>
			<span id="charLeft"></span> <span><spring:message
					code="label.cg010102.message.middle"></spring:message></span> <span
				id="dCharLeft"></span> <span><spring:message
					code="label.cg010102.message.tail"></spring:message></span> <span>(</span>
			<span id="nowChar"></span> <span>/</span> <span id="maxChar"></span>
			<span>)</span>
		</div>
		<div class="button-fasong">
			<form method="POST" id="Message"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
				<textarea name="message" rows="2" maxLength="280"></textarea>
				<input type="hidden" name="time" value="${initData.refreshDate}" />
			</form>
			<div 
				class="clickTone1"
				onclick="messagePublisher.DoPublish('<p:fullurl value='/cg0101/cg010102/publishMessage'/>')">
				<img
					src='<p:localurl  value="/resources/images/buttons/fasong-green.png"/>'>
			</div>
		</div>
		<div id="warning" class="commonPading01">
			<div class="link">
				<div style="float: left;">
					<img src='<p:consumImg type="middle" id="D6" />'>
				</div>
				<a href="#" id="BoughtLink"
					class="fc-link clickTone1"
					onclick="location.href = '<p:fullurl value="/cg0901/cg090103/index" />';event.preventDefault();"><spring:message
						code="label.cg010102.message.warning"></spring:message>!!!</a>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="panelD-footer"></div>
	<div class="commonPading02 clickTone1 button-changjianwenti"
		onclick="location.href='<p:fullurl value='/cg2101/cg210106/index'/>'">
		<img
			src='<p:localurl value="/resources/images/buttons/changjianwenti-blue-d.png"/>'>
	</div>
</div>