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
	
	$(".cg200142-pve1").css("height", maxHeight+"px");
	$(".cg200142-pve2").css("height", maxHeight+"px");
	$(".cg200142-pve3").css("height", maxHeight+"px");
	
	
	$(".gotoTask").css("top", "0px");
	$(".gotoTask").css("height", maxHeight+"px");
	
	
	$(".continueTask").css("top","0px");
	$(".continueTask").css("height", maxHeight+"px");
	
	$(".attakNow").css("top","0px");
	$(".attakNow").css("height", maxHeight+"px");
	
	
		
});

function gotoTask(){
	$(".cg200142-pve1").css("display", "none");
	$(".cg200142-pve2").css("display", "block");
}

function continueTask(){
	$(".cg200142-pve2").css("display", "none");
	$(".cg200142-pve3").css("display", "block");
}


function attakNow(){		
window.location.href = '<p:fullurl value="/cg2001/cg200150/index" />';
}



</script>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200142-pve1" style="display:block;">		
		<div class="gotoTask" onClick="gotoTask()"></div>		
	</div>
	<div class="cg200142-pve2" style="display:none;">
		<div class="continueTask" onClick="continueTask()"></div>
	</div>
	<div class="cg200142-pve3" style="display:none;">
		<div class="attakNow" onClick="attakNow()"></div>
	</div>
</div>


