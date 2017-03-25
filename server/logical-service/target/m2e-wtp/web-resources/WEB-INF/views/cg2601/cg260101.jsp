<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1802.css?v=1"/>">
<script type="text/javascript" src="<p:fullurl value="/resources/js/cg1802/cg1802.js"/>"></script>
<script type="text/javascript" charset="utf-8">
function notOpen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
function closed(){
	kpyxTips("<spring:message code='label.closed'/>");
}
function levelnotenough(){
	kpyxTips("等级过低，无法开启");
}
</script>
<div class="content">
	<div><img src='<p:fullurl value="/resources/images/activity/deathsea_top.png"/>'></div>
	<c:if test="${beforeActivty }">
	<div class="text-center clickTone1 button_gray" onclick="notOpen()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${inActivity && playerVO.level>=20 }">
	<div class="text-center clickTone1" onclick="window.location.href='<p:fullurl value="/cg2601/cg260102/index"/>'"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${inActivity && playerVO.level<20 }">
	<div class="text-center clickTone1 button_gray" onclick="levelnotenough()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${afterActivity }">
	<div class="text-center clickTone1 button_gray" onclick="closed()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<div class="text-center clickTone1" style="padding-top:20px;" onclick="window.location.href='<p:fullurl value="/cg2601/cg260111/index"/>'"><img src='<p:fullurl value="/resources/images/activity/introduce.PNG"/>'></div>
	<div class="text-center" style="padding-top:20px;">
	<c:if test="${ not empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/></span><span style="color:white;vertical-align: top;">${playerVO.beadsCount }</span>
	</c:if>
	<c:if test="${empty playerVO.beadsCount }">
	<img  src='<p:fullurl value="/resources/images/activity/beads.PNG"/>'><span style="vertical-align: 30%;font-size: 22pt;color: rgb(136,181,238);font-weight: bold;padding-top: -5px;">&nbsp;<spring:message code="label.cg260102.collectbeads"/><span style="color:white;vertical-align: top;">0</span></span>
	</c:if>
	</div>
	<div style="margin-top: 50px;">
	    <div class="panelE-header" style="height:10px;"></div>
		<div class="panelE-body panelA08-height" style="height:1530px;"></div>
		<div class="panelE-footer" style="height:10px;"></div>
		<div>
		<div class="text-center" style="margin-top: -1570px;"><img src='<p:fullurl value="/resources/images/activity/word.PNG"/>'></div>
		<div class="text-center"  onclick="window.location.href='<p:fullurl value="/cg2601/cg260110/index/s0361" />'">
		<div><img src='<p:fullurl value="/resources/images/activity/bossbanner05.PNG"/>'></div>
		<div class="duihuanrenshu-left">${count1 }</div>
		</div>
		<div class="clearfix"></div>
		<div class="text-center" style="margin-top: -30px;" onclick="window.location.href='<p:fullurl value="/cg2601/cg260110/index/c0191" />'">
		<div><img src='<p:fullurl value="/resources/images/activity/bossbanner04.PNG"/>'></div>
		<div class="duihuanrenshu-right">${count2}</div>
		</div>
		<div class="clearfix"></div>
		<div class="text-center"  style="margin-top: -30px;"onclick="window.location.href='<p:fullurl value="/cg2601/cg260110/index/c0391" />'">
		<div><img src='<p:fullurl value="/resources/images/activity/bossbanner03.PNG"/>'></div>
		<div class="duihuanrenshu-left">${count3}</div>
		</div>
		<div class="clearfix"></div>
		<div class="text-center"  style="margin-top: -30px;" onclick="window.location.href='<p:fullurl value="/cg2601/cg260110/index/s0331" />'">
		<div>
		
		<img src='<p:fullurl value="/resources/images/activity/bossbanner02.PNG"/>'>	</div>
		<div class="duihuanrenshu-right">${count4}</div>
		</div>
		<div class="clearfix"></div>
		<div class="text-center" style="margin-top: -30px;" onclick="window.location.href='<p:fullurl value="/cg2601/cg260110/index/c0211" />'">
		<div>
		<img src='<p:fullurl value="/resources/images/activity/bossbanner01.PNG"/>'></div>
		<div class="duihuanrenshu-left">${count5 }</div>
		</div>
		<div class="clearfix"></div>
		<div class="text-center" style="margin-top: -30px;" >
		<div><img src='<p:fullurl value="/resources/images/activity/bossbanner00.PNG"/>'></div>
		</div>
		</div>
	</div>
	<div style="height: 50px;"></div>
	<c:if test="${beforeActivty }">
	<div class="text-center clickTone1 button_gray" onclick="notOpen()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${inActivity && playerVO.level>=20 }">
	<div class="text-center clickTone1" onclick="window.location.href='<p:fullurl value="/cg2601/cg260102/index"/>'"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${inActivity && playerVO.level<20 }">
	<div class="text-center clickTone1 button_gray" onclick="levelnotenough()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<c:if test="${afterActivity }">
	<div class="text-center clickTone1 button_gray" onclick="closed()"><img src='<p:fullurl value="/resources/images/activity/startsearch.PNG"/>'></div>
	</c:if>
	<div class="text-center clickTone1" style="padding-top:30px;" onclick="window.location.href='<p:fullurl value="/cg2601/cg260111/index"/>'"><img src='<p:fullurl value="/resources/images/activity/introduce.PNG"/>'></div>
	<div style="overflow: hidden;height:50px;width:720px;"></div>
	
</div>
