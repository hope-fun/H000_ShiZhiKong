<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1204.union.title" /></span>
	</div>
	<div class="panelXuanChuan">
		<img src="<p:localurl value="/resources/images/xuanchuan/gonghuixuanchuan.png"/>" />
	</div>
	
	<div class="commonPading03 center-site" style="width: 100%;">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/jinrulianmeng-green-d.png"/>" style="cursor: pointer;" onClick="goToUnionHome()" />
	</div>
	
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA16-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				<div class="exit-search-union">
					<div class="exit-union-button">
						<div class="exit-button-style">
						<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120111/index" />';event.preventDefault();">
							<img class="clickTone1"
								src="<p:localurl value="/resources/images/buttons/tuichulianmeng-blue.png"/>" />
						</a>
						</div>
					</div>
					
					<div class="search-union-button02">
						<div class="search-button-style">
							<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120105/index" />';event.preventDefault();">
								<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/xunzhaolianmeng-green.png"/>" />
							</a>
						</div>
					</div>
					
					<div class="create-union-button02">
						<div class="create-button-style">
								<c:if test="${canCreate ne 'YES'}">
									<img class="button_gray" src="<p:localurl value="/resources/images/buttons/chuangjianlianmeng-blue.png"/>"/>
								</c:if>
							<c:if test="${canCreate eq 'YES'}">
								<a href="#" onclick="location.href = '<p:fullurl value="/cg1201/cg120101/goCreatePage" />';event.preventDefault();">
									<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/chuangjianlianmeng-blue.png"/>" />
								</a>
							</c:if>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="split-item-up split-pic"></div>
				<div class="commonPading02 create-button-no">
					<c:if test="${canCreate ne 'YES'}">
						<span class="fc-normal-01-l"><spring:message code="label.cg1204.union.create.no" /></span>
					</c:if>
					<c:if test="${canCreate eq 'YES'}">
						<div class="create-button-yes">
							<span class="fc-content-02"><spring:message code="label.cg1204.union.create.yes" /></span>
							<span class="fc-normal-06-m system-content-other panleText">${consumeGoldCoin }</span>
						</div>
					</c:if>
				</div>
				<div class="split-item-down"></div>
				<div class="commonPading02 create-con-width">
					<div><span class="panleText"><spring:message code="label.cg1204.union.create.condition" />: </span></div>
					<div><span
						class="fc-normal-06-m system-content-other panleText">${needLevelAndFriend }</span></div>
					<div><span class="fc-normal-06-m system-content-other panleText">${ownGoldCoin }</span></div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 因为js中无法解析标签，用于保存actionUrl的隐藏域 -->
<input id="unionHomeUrl" type="hidden" value="<p:fullurl value="/cg1201/cg120112/index" />" />

<script type="text/javascript">
<!--

function goToUnionHome(){
	window.location.href = $("#unionHomeUrl").val();
}

//-->
</script>