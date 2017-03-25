<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript" charset="utf-8">
	
$(document).ready(function() {
	
	var maxWidth = 720;
	var maxHeight = 720 / window.screen.availWidth * window.screen.availHeight;
	
	$(".cg200143-union1").css("height", maxHeight+"px");
	$(".cg200142-pve2").css("height", maxHeight+"px");
	
	
	$(".createUnion").css("top", "0px");
	$(".createUnion").css("height", maxHeight+"px");
	
	
	$(".applyUnion").css("top","0px");
	$(".applyUnion").css("height", maxHeight+"px");
		
});

function createUnion(){
	$(".cg200143-union1").css("display", "none");
	$(".cg200143-union2").css("display", "block");
	var maxHeight = 720 / window.screen.availWidth * window.screen.availHeight;
	$(".cg200143-union2").css("height", maxHeight+"px");
}

function applyUnion(){		
	window.location.href = '<p:fullurl value="/cg2001/cg200151/index" />';
}



</script>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200143-union1" style="display:block;">		
		<div class="createUnion" onClick="createUnion()"></div>		
	</div>
	<div class="cg200143-union2" style="display:none;">
		<div class="applyUnion" onClick="applyUnion()"></div>
	</div>
	
</div>


