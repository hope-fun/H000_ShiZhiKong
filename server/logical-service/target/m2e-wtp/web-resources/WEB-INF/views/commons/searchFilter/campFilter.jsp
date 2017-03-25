<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="race-all">
	<div ${searchFilterCamp eq "NONE" ? "" : ""}>
		<img class="clickTone1" searchUrl='<p:fullurl value="${searchFilterAction}?selectInfo=NONE_${orderSelectValue}&detailUrl=${detailAction}" />' onclick="location.href=this.getAttribute('searchUrl');" 
			src='<p:localurl value="/resources/images/quan-zhong-zu-button.png"/>'>
	</div>
</div>
<div class="gbutton-02" style="width:100%">
	<div ${searchFilterCamp eq "HUMAN" ? "" : ""}>
		<img class="clickTone1" searchUrl="<p:fullurl value="${searchFilterAction}?selectInfo=HUMAN_${orderSelectValue}&detailUrl=${detailAction}" />" onclick="location.href=this.getAttribute('searchUrl');" 
			src='<p:localurl value="/resources/images/sort-renlei.png"/>'>
	</div>
	<div ${searchFilterCamp eq "TAITAN" ? "" : ""}>
		<img class="clickTone1" searchUrl='<p:fullurl value="${searchFilterAction}?selectInfo=TAITAN_${orderSelectValue}&detailUrl=${detailAction}" />' onclick="location.href=this.getAttribute('searchUrl');" 
			src='<p:localurl value="/resources/images/sort-taitan.png"/>'>
	</div>
	<div ${searchFilterCamp eq "LINGYI" ? "" : ""}>
		<img class="clickTone1" searchUrl='<p:fullurl value="${searchFilterAction}?selectInfo=LINGYI_${orderSelectValue}&detailUrl=${detailAction}" />' onclick="location.href=this.getAttribute('searchUrl');" 
			src='<p:localurl value="/resources/images/sort-yiling.png"/>'>
	</div>
	<div></div>
</div>