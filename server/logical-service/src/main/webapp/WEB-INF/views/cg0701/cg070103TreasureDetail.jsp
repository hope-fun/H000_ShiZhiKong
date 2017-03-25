<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>

<%@ taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0701.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0701/CG0701.css?v=1"/>">
<p:fullurl value="/cg0901/cg090103/index" var="shopUrl"/>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg0701.detail_title" /></span>
	</div>
	<!-- 是否使用防御矩阵 -->
	<div id="div_defenseMatrix" class="font-div-style fc-normal-06-m center-site"
	 style="display:<c:if test="${not empty fragmentViewData.magicCircleCount && fragmentViewData.magicCircleCount>=1 }">block;</c:if>
	 		<c:if test="${empty fragmentViewData.magicCircleCount || fragmentViewData.magicCircleCount < 1 }">none;</c:if>">
		<span class=""><spring:message code="label.cg0701.info_defensematrix" /></span>
	</div>
	<div class=" font-div-style fc-content-02 center-site">
		<span id="sp_fragmentName">${fragmentViewData.name }</span><span> * </span>
		<span id="sp_fragmentCount"><c:out value="${fragmentViewData.count }" /></span>
	</div>
	<div class="font-div-style">
		<div class="element-bg">
			<c:if test="${not empty fragmentViewData.treasureFragmentId }" >
				<div id="img_treasure"
					style="background: url(<p:imgPath folder="treasureFrag" type="large" id="${fragmentViewData.treasureId}" />) center center no-repeat;">
					<img id="img_treasureFragment_magic" class="fragmentImg frg-img-style"
						src="<p:imgPath folder="treasureFrag" type="large" id="${fragmentViewData.orderNumber}" />" />
					
					<img id="img_treasureFragment" class="fragmentImg" style="display: block;"
						src="<p:imgPath folder="treasureFrag" type="large" id="${fragmentViewData.orderNumber}" />" />
				</div>
			</c:if>
		</div>
	</div>
	<div class="font-div-style fc-title-02 center-site">
		<span><spring:message code="label.cg0701.defensematrix_usecount" /></span>
		<span id="sp_magicCircleCount" class="fc-content-03">
			<c:if test="${not empty fragmentViewData.magicCircleCount }"><c:out value="${fragmentViewData.magicCircleCount }" /></c:if>
			<c:if test="${empty fragmentViewData.magicCircleCount }">0</c:if>
		</span>
	</div>
	<div class="font-div-style fc-title-02 center-site">
		<span><spring:message code="label.cg0701.defensematrix_havecount" /></span>
		<span id="sp_defenseMatrixCount" class="fc-content-03 ">
			<c:if test="${not empty fragmentViewData.defenseMatrixCount}"><c:out value="${fragmentViewData.defenseMatrixCount }" /></c:if>
			<c:if test="${empty fragmentViewData.defenseMatrixCount}">0</c:if>
		</span>
	</div>
	<!-- 拥有防御矩阵，跳转至确认页 -->
	<div class="button-large link_hand text-center padding-style" onclick="go_useDefense();"
			 style="display:<c:if test="${not empty fragmentViewData.defenseMatrixCount && fragmentViewData.defenseMatrixCount>=1 }">block;</c:if>
	 		<c:if test="${empty fragmentViewData.defenseMatrixCount || fragmentViewData.defenseMatrixCount < 1 }">none;</c:if>">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/qidongfangyujuzhen-green-z.png"/>"/>
	</div>
	<!-- 没有防御矩阵，跳转至商店页 -->
	<div class="button-large link_hand button_gray text-center padding-style" onclick="window.location.href='${shopUrl }'"
		 style="display:<c:if test="${not empty fragmentViewData.defenseMatrixCount && fragmentViewData.defenseMatrixCount>=1 }">none;</c:if>
 		<c:if test="${empty fragmentViewData.defenseMatrixCount || fragmentViewData.defenseMatrixCount < 1 }">block;</c:if>">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/qidongfangyujuzhen-green-z.png"/>"/>
	</div>
	<div class="button-large link_hand text-center padding-style" onclick="go_fight();">
		<img class="clickTone1" src="<p:localurl value="/resources/images/buttons/zhengduozhemeiyuansu.png"/>"/>
	</div>
	<div class="split-01 clearfix"></div>
	<div class="center-site">
		<div class="panelA-header"></div>
		<div class="panelA-body panelA16-height">
			<div>
				<span class="fc-content-02"><c:out value="${treasure.name }" /></span>
				<span class="fc-content-02 frg-padding-left"><c:out value="${fragmentTypeCount }" /></span><span class="fc-normal-05-l">/6</span>
			</div>
			<div class="fragmentList">
				<c:forEach items="${fragmentList }" var="frag">
					<div class="fragClick" id="${frag.id }_${frag.treasureFragmentId }">
						<c:if test="${not empty frag.id  && 0 < frag.count}">
							<a class="link_hand"><treasure:playerFragmentImage treasureFragmentVO="${frag}" imageSize="large" showFragmentCount="true" /></a>
						</c:if>
						<c:if test="${empty frag.id || 1 > frag.count}">
							<img class="fragmentImg link_hand clickTone1" src="<p:localurl value='/resources/images/large-equipment.png' />" onclick="go_fightById('${frag.treasureFragmentId }');" />
						</c:if>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="panelA-footer"></div>
	</div>
	<input id="detailUrl" type="hidden" value="<p:fullurl value='/cg0701/cg070103/loadFragmentDetail/'/>" />
	<input id="useDefenseConfirmUrl" type="hidden" value="<p:fullurl value="/cg0701/cg070104/index/${fragmentViewData.matrixConcumableId }/${fragmentViewData.id }"/>" />
	<input id="useDefenseUrl" type="hidden" value="<p:fullurl value='/cg0701/cg070104/index/${fragmentViewData.matrixConcumableId }/'/>" />
	<input id="allFightUrl" type="hidden" value="<p:fullurl value="/cg0401/cg040102/index/${fragmentViewData.playerTreasureId }/${fragmentViewData.treasureFragmentId }/0"/>" />
	<input id="fightUrl" type="hidden" value="<p:fullurl value="/cg0401/cg040102/index/${fragmentViewData.playerTreasureId }/"/>" />
	
	<input id="ImgTreasureUrl" type="hidden" value="<p:localurl value="/resources/images/treasureFrag/large/"/>" />
	<input id="ImgFragmentUrl" type="hidden" value="<p:localurl value="/resources/images/treasureFrag/large/"/>" />
	
</div>
<script type="text/javascript">
<!--
$(function() {
	//初始化展示碎片是否启动了防御矩阵
	if(${not empty fragmentViewData.magicCircleCount && 0 < fragmentViewData.magicCircleCount }){
		$("#img_treasureFragment_magic").css("display", "block");
		$("#img_treasureFragment").css("display", "none");
		$("#img_treasure").addClass('img-trea-height01');
	} else {
		$("#img_treasureFragment_magic").css("display", "none");
		$("#img_treasureFragment").css("display", "block");
		$("#img_treasure").addClass('img-trea-height02');
	}
})
//-->
</script>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value='/resources/js/cg0701/cg070104.js'/>"></script>