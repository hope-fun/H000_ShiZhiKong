<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1802.css?v=2"/>">
<script>
	$(function() {
		$(".btn-action")
				.click(
						function(el){
						var userKey = parseInt($("#keyCount").val());
						var userLevel = parseInt($("#playerLevel").val());
						var requireKey = parseInt($(this).attr("requireKey"));
						var requireLevel = parseInt($(this).attr("requireLevel"));
						var jumpurl = $(this).attr("href");
						var options = {
								url : jumpurl+"/needTickets",
								data : {
									id : $(".btn-action").attr("id"),
									type : $(".btn-action").attr("type")
								},
								dataType : 'json',
								showMask : true,
								success : function(json) {
							if (userKey < requireKey && userLevel < requireLevel&&json.needTickets=="true") {
								kpyxTips('<spring:message code="label.cg180202.level_and_key"></spring:message>');
								return false;
							} else if (userKey < requireKey&&json.needTickets=="true") {		
								
								kpyxTips(document.getElementById("link-buy-consumble-cg180202").innerHTML);
								
								return false;
							} else if (userLevel < requireLevel&&json.needTickets=="true") {
								kpyxTips('<spring:message code="label.cg180202.level"></spring:message>');
								return false;
							} else {
								location.href = jumpurl;
							}
							}
						}
						$.ajax(options);
						});
						
	})
</script>
<input id="playerLevel" type="hidden" value="${player.level}" />
<input id="keyCount" type="hidden" value="${keyCount}" />
<div id="link-buy-consumble-cg180202" style="display: none;">
	<div><spring:message code='label.cg180202.key'></spring:message></div>
	<div class="buy-consumble"><span style='color:yellow' onclick='location.href="<p:fullurl value="/cg0901/cg090103/index"/>"' ><spring:message code='label.cg180202.buykey'/></span></div>
</div>


<div class="content">
	<div class="main-title menu-medium">
		<span><spring:message code="label.cg180202.title"></spring:message></span>
	</div>
	<div class="padding-top text-center">
		<span><spring:message
				code="label.cg180202.the_count_of_card_ticket"></spring:message>${keyCount}</span>
	</div>
	<!--1级  入场券3张-->
	<div class="raid-list">
		<div class="borderPanel padding-top-style10">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB03-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="raid-section">
					<div class="raid-type-name fc-normal-03-m">
						<div class="raid-type">
							<spring:message code="label.cg180202.raid_type_a"></spring:message>
						</div>
						<div class="raid-require-level">
							<span><img class="arrow-img"
								src="<p:localurl value='/resources/images/Arrow02.png' />" /></span> <span
								class="fc-normal-06-m"><spring:message
									code="label.cg180202.require_level_a"></spring:message></span>
						</div>
						<div class="split-item-down split-item-down-cg1802 clearfix"></div>
					</div>
					<div class="raid-reward">
						<div class="reward-desc">
							<spring:message code="label.cg180202.raid_reward"></spring:message>
						</div>
						<div class="reward-list">
							<div class="reward-section reward-white"></div>
							<div class="reward-section reward-blue"></div>
							<div class="reward-section reward-zhengfudianshu"></div>
						</div>
					</div>
					<div>
						<div class="raid-require-ticket fc-normal-06-m">
							<spring:message code="label.cg180202.require_ticket" arguments="${requireKeyA }"></spring:message>
						</div>
						<div class="raid-btn-action">
							<img
								src="<p:localurl value='/resources/images/buttons/zhixing-green.png'/>"
								class="btn-action clickTone1" requireLevel="20" requireKey="${requireKeyA }"
								href="<p:fullurl value='/cg1802/cg180203/index/A' />" />
						</div>
						<div class="raid-clear-count clear-count">
							<spring:message code="label.cg180202.clear_count"></spring:message>
							${clearCountA}
						</div>
					</div>
				</div>
			</div>
			<!--18级  入场券5张-->
			<div class="borderPanel padding-top-style10">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB03-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="raid-section">
						<div class="raid-type-name fc-normal-03-m">
							<div class="raid-type">
								<spring:message code="label.cg180202.raid_type_b"></spring:message>
							</div>
							<div class="raid-require-level">
								<span><img class="arrow-img"
									src="<p:localurl value='/resources/images/Arrow02.png' />" /></span>
								<span class="fc-normal-06-m"><spring:message
										code="label.cg180202.require_level_b"></spring:message></span>
							</div>
							<div class="split-item-down split-item-down-cg1802 clearfix"></div>
						</div>
						<div class="raid-reward">
							<div class="reward-desc">
								<spring:message code="label.cg180202.raid_reward"></spring:message>
							</div>
							<div class="reward-list">
								<div class="reward-section reward-white"></div>
								<div class="reward-section reward-blue"></div>
								<div class="reward-section reward-purple"></div>
								<div class="reward-section reward-zhengfudianshu"></div>
							</div>
						</div>
						<div>
							<div class="raid-require-ticket fc-normal-06-m">
								<spring:message code="label.cg180202.require_ticket" arguments="${requireKeyB }"></spring:message>
							</div>
							<div class="raid-btn-action">
								<img
									src="<p:localurl value='/resources/images/buttons/zhixing-green.png'/>"
									class="btn-action clickTone1" requireLevel="40" requireKey="${requireKeyB }"
									href="<p:fullurl value='/cg1802/cg180203/index/B' />" />
							</div>
							<div class="raid-clear-count clear-count">
								<spring:message code="label.cg180202.clear_count"></spring:message>
								${clearCountB}
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--48级  入场券8张-->
			<div class="borderPanel padding-top-style10">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB03-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="raid-section">
						<div class="raid-type-name fc-normal-03-m">
							<div class="raid-type">
								<spring:message code="label.cg180202.raid_type_c"></spring:message>
							</div>
							<div class="raid-require-level">
								<span><img class="arrow-img"
									src="<p:localurl value='/resources/images/Arrow02.png' />" /></span>
								<span class="fc-normal-06-m"><spring:message
										code="label.cg180202.require_level_c"></spring:message></span>
							</div>
							<div class="split-item-down split-item-down-cg1802 clearfix"></div>
						</div>
						<div class="raid-reward">
							<div class="reward-desc">
								<spring:message code="label.cg180202.raid_reward"></spring:message>
							</div>
							<div class="reward-list">
								<div class="reward-section reward-blue"></div>
								<div class="reward-section reward-purple"></div>
								<div class="reward-section reward-orange"></div>
								<div class="reward-section reward-zhengfudianshu"></div>
							</div>
						</div>
						<div>
							<div class="raid-require-ticket fc-normal-06-m">
								<spring:message code="label.cg180202.require_ticket" arguments="${requireKeyC }"></spring:message>
							</div>
							<div class="raid-btn-action">
								<img
									src="<p:localurl value='/resources/images/buttons/zhixing-green.png'/>"
									class="btn-action clickTone1" requireLevel="60" requireKey="${requireKeyC }"
									href="<p:fullurl value='/cg1802/cg180203/index/C' />" />
							</div>
							<div class="raid-clear-count clear-count">
								<spring:message code="label.cg180202.clear_count"></spring:message>
								${clearCountC}
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 70级	入场券15张 -->
			<div class="borderPanel padding-top-style10">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB03-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="raid-section">
						<div class="raid-type-name fc-normal-03-m">
							<div class="raid-type">
								<spring:message code="label.cg180202.raid_type_d"></spring:message>
							</div>
							<div class="raid-require-level">
								<span><img class="arrow-img"
									src="<p:localurl value='/resources/images/Arrow02.png' />" /></span>
								<span class="fc-normal-06-m"><spring:message
										code="label.cg180202.require_level_d"></spring:message></span>
							</div>
							<div class="split-item-down split-item-down-cg1802 clearfix"></div>
						</div>
						<div class="raid-reward">
							<div class="reward-desc">
								<spring:message code="label.cg180202.raid_reward"></spring:message>
							</div>
							<div class="reward-list">
								<div class="reward-section reward-blue"></div>
								<div class="reward-section reward-purple"></div>
								<div class="reward-section reward-orange"></div>
								<div class="reward-section reward-zhengfudianshu"></div>
							</div>
						</div>
						<div>
							<div class="raid-require-ticket fc-normal-06-m">
								<spring:message code="label.cg180202.require_ticket" arguments="${requireKeyD }"></spring:message>
							</div>
							<div class="raid-btn-action">
								<img
									src="<p:localurl value='/resources/images/buttons/zhixing-green.png'/>"
									class="btn-action clickTone1" requireLevel="80" requireKey="${requireKeyD }"
									href="<p:fullurl value='/cg1802/cg180203/index/D' />" />
							</div>
							<div class="raid-clear-count clear-count">
								<spring:message code="label.cg180202.clear_count"></spring:message>
								${clearCountD}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
