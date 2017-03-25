<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg0201/cg0201.js"/>"></script>
<script>
	$(function(){
		$(".buy_btn").click(function(){
			window.location.href = "<p:fullurl value="/cg0901/cg090103/index" />";			
		});
		
		$(".use_btn").click(function(){
			window.location.href = "<p:fullurl value="/cg0201/cg020000/use" />";
		});
		
		var errorMsg = ${error};
		
		if (errorMsg) {
			kpyxTips('<spring:message code="label.cg020000.error"></spring:message>');
		}
	});
	
</script>
<div class="content">
<!--  -->
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020000.title"></spring:message></span>
	</div>
	<div class="use-con-style" style="">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="card-assistant npc-padding">
					<div class="npc-pic-width" style="">
						<div>
							<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
						</div>
					</div>
					<div class="npc-message-width npc-message-width-cg020000">
						<div class="prompt-message fc-content-03 prompt-message-cg020000">
							<c:choose>
								<c:when test="${used}">
									<div><spring:message code="label.cg020000.used"></spring:message></div>
								</c:when>
								<c:otherwise>
									<div>
										<span><spring:message code="label.CG020000.notenough"></spring:message></span>
									</div>
									<div class="fc-normal-01-m">
										<span><spring:message code="label.CG020000.usecomsuble"></spring:message></span>
										<span><spring:message code="label.CG020000.zhandinengliang"></spring:message></span>
										<span class="fc-content-03"><spring:message code="label.CG020000.or"></spring:message></span> 
										<span><spring:message code="label.CG020000.zhengjinengyuan"></spring:message></span>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="use-con-style">
		<div>
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB07-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="split-down-style">
						<div class="split-item-down"></div>
					</div>
					<div class="infomation">
						<div>
							<div>
								<img src="<p:localurl value="/resources/images/icons/dengji.png"/>" />
							</div>
							<div>
								<span class="fc-normal-05-l"><spring:message code="label.CG020000.level"></spring:message>：</span> <span class="fc-normal-01-l">${player.level}</span>
							</div>
						</div>
						<div>
							<div>
								<img src="<p:localurl value="/resources/images/icons/xingdongnengliang.png"/>" />
							</div>
							<div class="fc-content-02">
								<span class="fc-normal-05-l"><spring:message code="label.CG020000.actionpower"></spring:message>：</span> <span class="fc-normal-02-l">${player.actionPower}</span> <span>/</span> <span>${player.actionPowerMax}</span>
							</div>
						</div>
					</div>
					<div class="progress-info">
						<div>
							<div class="processing-bar-blue fc-normal-01-m"
								processbar="<fmt:formatNumber type='number' value='${(player.exp)/player.expNextLevel*100}' maxFractionDigits='0'/>"></div>
						</div>
						<div>
							<div class="processing-bar-green fc-normal-01-m"
								processbar="<fmt:formatNumber type='number' value='${player.actionPower/player.actionPowerMax*100}' maxFractionDigits='0'/>"></div>
						</div>
					</div>
					<div>
						<div class="split-item-up"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="buy-vip-style">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/goumaiVIP-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0901/cg090105/index' />')" />
	</div>
	<div class="center-site font-weight-style fc-normal-06-l"><spring:message code="label.CG020000.vipinfo"></spring:message></div>
	<div>
		<div class="split-01"></div>
	</div>
	<div class="menu-medium title-label-02">
		<span><spring:message code="label.CG020000.recover"></spring:message></span>
	</div>
	<div class="use-con-style">
		<div>
			<div class="borderPanel">
				<div class="panelC-header"></div>
				<div class="panelC-body panelC02-height"></div>
				<div class="panelC-footer"></div>
				<div class="border-content-noleft">
					<div class="consumer-list">
						<div class="consumer-list-title">
							<span class="fc-content-01">${d1.name}</span>
						</div>
						<div class="consumer-list-image"></div>
						<div class="con-large-padding">
							<div class="bottomPart_line_image">
								<img src="<p:localurl value="/resources/images/consumable/large/D1.png"/>" />
							</div>
							<div class="bottomPart_line_info con-large-des">
								<div class="consumer-list-function">
									<span class="fc-normal-05-m">${d1.description}</span>
								</div>
								<div>
									<div class="own-num">
										<span class="fc-normal-05-m"><spring:message code="label.CG020000.ownnumber"></spring:message>：</span><span class="fc-content-03">${d1.count}</span>
									</div>
									<div class="buy-button-height">
										<c:choose>
											<c:when test="${d1.count eq 0}">
												<img class="buy_btn" src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" />
											</c:when>
											<c:otherwise>
												<a href="<p:fullurl value='/cg0201/cg020000/use/D1/${playerTaskSectionId}' />"><input type="image" class="use_button"src="<p:localurl value="/resources/images/buttons/shiyong-green.png"/>"></a>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="use-con-style">
		<div>
			<div class="borderPanel">
				<div class="panelC-header"></div>
				<div class="panelC-body panelC02-height"></div>
				<div class="panelC-footer"></div>
				<div class="border-content-noleft">
					<div class="consumer-list">
						<div class="consumer-list-title">
							<span class="fc-content-01">${d2.name}</span>
						</div>
						<div class="consumer-list-image"></div>
						<div class="con-large-padding">
							<div class="bottomPart_line_image">
								<img src="<p:localurl value="/resources/images/consumable/large/D2.png"/>" />
							</div>
							<div class="bottomPart_line_info con-large-des">
								<div class="consumer-list-function">
									<span class="fc-normal-05-m">${d2.description}</span>
								</div>
								<div>
									<div class="own-num">
										<span class="fc-normal-05-m"><spring:message code="label.CG020000.ownnumber"></spring:message>：</span><span class="fc-content-03">${d2.count}</span>
									</div>
									<div class="buy-button-height">
										<c:choose>
											<c:when test="${d2.count eq 0}">
												<img class="buy_btn" src="<p:localurl value="/resources/images/buttons/goumai-green.png"/>" />
											</c:when>
											<c:otherwise>
												<a href="<p:fullurl value='/cg0201/cg020000/use/D2/${playerTaskSectionId}' />"><input type="image" class="use_button clickTone1" src="<p:localurl value="/resources/images/buttons/shiyong-green.png"/>"></a>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="buy-vip-style">
		<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/fanhui-green-z.png"/>' onclick="doJump('<p:fullurl value='/cg0201/cg020104/index/${playerTaskSectionId}' />')" />
	</div>
</div>