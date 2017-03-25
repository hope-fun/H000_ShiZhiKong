<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1201/CG1201.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1204.union.title" /></span>
	</div>
	<div class="panelXuanChuan">
		<img src="<p:localurl value="/resources/images/xuanchuan/gonghuixuanchuan.png"/>" />
	</div>
	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelA-header"></div>
			<div class="panelA-body panelA10-height"></div>
			<div class="panelA-footer"></div>
			<div class="border-content-noleft">
				
					<div class="search-uniion-style">
						<div class="search-union-button">
								<img class="clickTone1"
									src="<p:localurl value="/resources/images/buttons/xunzhaolianmeng-green.png"/>" 
									onclick="location.href = '<p:fullurl value="/cg1201/cg120105/index" />';event.preventDefault();" />
						</div>
					</div>
					<div class="create-union-style">
						<div class="create-union-button clickTone1">
							<c:if test="${canCreate ne 'YES'}">
								<img class="button_gray" src="<p:localurl value="/resources/images/buttons/chuangjianlianmeng-blue.png"/>"/>
							</c:if>
							<c:if test="${canCreate eq 'YES'}">
									<img class="clickTone1" 
										src="<p:localurl value="/resources/images/buttons/chuangjianlianmeng-blue.png"/>" 
										onclick="location.href = '<p:fullurl value="/cg1201/cg120101/goCreatePage" />';event.preventDefault();" />
							</c:if>
						</div>
					</div>
					<div class="clearfix"></div>
				
				<div class="split-item-up"></div>
				<div class="commonPading02 ifcreate-union">
					<c:if test="${canCreate ne 'YES'}">
						<span class="fc-normal-01-l"><spring:message code="label.cg1204.union.create.no" /></span>
					</c:if>
					<c:if test="${canCreate eq 'YES'}">
						<div class="create-union-yes">
							<span class="fc-content-02"><spring:message code="label.cg1204.union.create.yes" /></span>
							<span class="fc-normal-06-m system-content-other panleText">${consumeGoldCoin }</span>
						</div>
					</c:if>
				</div>
				<div class="split-item-down"></div>
				<div class="commonPading02 create-union-condition">
					<span class="panleText"><spring:message code="label.cg1204.union.create.condition" />: </span> <span
						class="fc-normal-06-m system-content-other panleText">${needLevelAndFriend }</span>
					<span class="fc-normal-06-m system-content-other panleText">${ownGoldCoin }</span>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>