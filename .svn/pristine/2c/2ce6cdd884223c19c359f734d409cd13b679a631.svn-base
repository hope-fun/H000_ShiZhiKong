<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>

<!-- 当请求中不含requestType时，更新此段 -->
<c:if test="${empty header['requestType']}">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG0101/CG01010301.css?v=1"/>" />
		<script type="text/javascript">
		$(function(){
			 $("#gotoGame").click(function(){
				 window.location.href="<p:fullurl value='/cg0101/cg010103/index'/>";
			 });		
			//弹出提示框 add by wujianjun 2013/8/13
						var width = $('body').width();
						$(".dialogue_container").css('top', (window.screen.height-370)/2 + 'px');
						$(".w-mask-dialog").show();
						$(".dialogue_container").show();
						 document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
				                JSInterface.clickTone(200);
				                }, false);
		});
		</script>
</c:if>
<c:if test="${empty header['requestType']}">
<!-- add banner div begin-->
	<div class="w-mask-dialog" id="w-mask-dialog">
	</div>
    <div class="dialogue_container" id="dialogue_container" > 
		<div id="dialogue_container_header" class="banner_heard_height"></div>
	
		<div class="banner_middle_height">
			<c:forEach items="${mainBannerList}" var="mainBanner">
				<!--  <div class="banner_blank_height"></div>-->
				<div><a href="#" onclick="location.href = '<p:fullurl value="${mainBanner.clickUrl}" />';event.preventDefault();" ><img src="<p:fullurl value="${mainBanner.imageUrl}"/>"/></a></div>
			</c:forEach>
			
			<c:forEach items="${subBannerList }" var="subBanner">
			    <div style="height:0px;"></div>
				<c:choose>
				<c:when test="${fn:startsWith(subBanner.clickUrl,'/') }">
				<a href="#" onclick="location.href = '<p:fullurl value="${subBanner.clickUrl}" />';event.preventDefault();" >
				<img src='<p:fullurl value="${subBanner.imageUrl}"/>'>
				</a>
				</c:when>
				<c:otherwise>
				<a href="#" onclick="location.href = '${subBanner.clickUrl}';event.preventDefault();" >
				<span class="menu-large">${subBanner.title } [${subBanner.resume }]${subBanner.content }</span>
				</a>
				</c:otherwise>
				</c:choose>
				
			</c:forEach>
			
		</div>
		<div class="clearfix"></div>
		<div id="gotoGame" style="text-align: center;margin-top: 40px;" class="clickTone1">
         <img  src="<p:localurl value="/resources/images/banner/jinruyouxi-green-z.png"/>"/>
        </div>
	 </div>
     
<!-- add banner div end -->
</c:if>
