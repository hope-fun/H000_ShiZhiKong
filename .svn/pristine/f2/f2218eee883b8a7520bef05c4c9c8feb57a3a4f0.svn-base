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
	href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>">
<script type="text/javascript" charset="utf-8"
	src="<p:fullurl value="/resources/js/cg0101/cg0101.js"/>"></script>
<script>
	function styleFixer(){
		document.getElementById('chatRoom').scrollTop = document.getElementById('chatRoom').scrollHeight;
	}
	
	$(function() {styleFixer();messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg01010201/init'/>')});

	function doAfterPrint(obj) {
		$("input[name='time']").val(obj.refreshDate);
		styleFixer();
	}
	
	var timeInterval = 5000;
	setInterval("messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg01010201/getMessages'/>')", timeInterval);
</script>
<input type="hidden" id="loudspeakernotenough" value="<spring:message code='label.cg0101.loudspeakernotenough' />"/>
<input type="hidden" id="speaktoofast" value="<spring:message code='label.cg0101.speaktoofast' />"/>
<input type="hidden" id="cg0101inputnull" value="<spring:message code='label.cg0101.inputnull' />"/>
<input type="hidden" id="illegalcharacter" value="<spring:message code='label.cg0101.illegalcharacter' />"/>
<div class="content">
	<div class="NoticePublisher">
		<img
			src="<p:localurl value="/resources/images/xuanchuan/cg010101.png"/>" />
		<img
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
					<!-- <div class="chankangengduo">
						<img
							src="<p:localurl value="/resources/images/buttons/chankangengduo.png"/>"
							class="clickTone1"
							onclick="location.href='<p:fullurl value='/cg2101/cg210105/index'/>'" />

					</div> -->
				</div>


			</div>
		</div>
	</div>



	<%-- <div class="panelA02 ">
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
			<div class="chankangengduo">
				<img
					src="<p:localurl value="/resources/images/buttons/chankangengduo.png"/>"
					class="clickTone1"
					onclick="location.href='<p:fullurl value='/cg2101/cg210105/index'/>'" />

			</div>
		</div>
	</div> --%>


	<div id="gotoHomePage" class="commonPading02 clickTone1" 
		onclick="location.href = '<p:fullurl value='/cg0101/cg010103/index'/>';">
		<img
			src="<p:localurl value="/resources/images/buttons/dianijkaishi-green-d.png"/>" />
	</div>
	<div class="split-01"></div>
	<div class="tab-view">
		<div class="clickTone1"
			onclick="window.location.href = '<p:fullurl value="/cg0101/cg010102/index" />'">
			<img width="100%" height="100%"
				src="<p:localurl value="/resources/images/buttons/shijieliaotian-blue-b.png" />" />
		</div>
		<div class="clickTone1"
			onclick="window.location.href = '<p:fullurl value="/cg0101/cg01010201/index" />'">
			<img width="100%" height="100%"
				src="<p:localurl value="/resources/images/buttons/lianmengliaotian-yellow-b.png" />" />
		</div>
		<div></div>
	</div>
	<div class="split-line"></div>
	<div class="panelD-header"></div>
	<div class="panelD-body panelD01-height">
		<div class="chatRoom" id="chatRoom">
			<c:forEach items="${initData.data}" var="data">
				<div>
					<c:if test="${not empty data.playerName.trim() }">${data.playerName.trim()}<c:if
							test="${data.vipLevel.trim() ne 'VIP0' and data.vipLevel.trim() ne 'VIPnull'}">
							<span class='vipColor'>${data.vipLevel}</span>
						</c:if>:</c:if>
					${data.messageBody.trim()}
				</div>
			</c:forEach>
		</div>
		<div class="fc-normal-02-m commonPading05 char">
			<span><spring:message code="label.cg01010201.message.head"></spring:message></span>
			<span id="charLeft"></span> <span><spring:message
					code="label.cg01010201.message.middle"></spring:message></span> <span
				id="dCharLeft"></span> <span><spring:message
					code="label.cg01010201.message.tail"></spring:message></span> <span>(</span>
			<span id="nowChar"></span> <span>/</span> <span id="maxChar"></span>
			<span>)</span>
		</div>
		<div class="button-fasong">
			<form method="POST" id="Message"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
				<textarea name="message" rows="2" maxLength="280"></textarea>
				<input type="hidden" name="time" value="${initData.refreshDate}" />
			</form>
			<div class="clickTone1"
				onclick="messagePublisher.DoPublish('<p:fullurl value='/cg0101/cg01010201/publishMessage'/>')">
				<img
					src='<p:localurl value="/resources/images/buttons/fasong-green.png"/>'>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
		<div class="panelD-footer"></div>
	<div class="commonPading02 clickTone1 button-changjianwenti" onclick="location.href='<p:fullurl value='/cg2101/cg210106/index'/>'">
		<img
			src='<p:localurl value="/resources/images/buttons/changjianwenti-blue-d.png"/>'>
	</div>
</div>
