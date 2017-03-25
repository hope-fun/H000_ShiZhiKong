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
		$(".cg200136-element1").css("height", maxHeight+"px");
		$(".cg200136-element2").css("height", maxHeight+"px");
		
		$(".changeElement").css("top", "0px");
		$(".changeElement").css("height", maxHeight+"px");
		
		
		$(".fightChooseElement").css("top","0px");
		$(".fightChooseElement").css("height", maxHeight+"px");
		
		
			
});

function changeElement(){
	$(".cg200136-element1").css("display", "none");
	$(".cg200136-element2").css("display", "block");
}

function startFight(){	
	//抢夺元素碎片页面
	window.location.href = '<p:fullurl value="/cg2001/cg200144/index" />';
}


</script>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200136-element1" style="display:block;">		
		<div class="changeElement" onClick="changeElement()"></div>		
	</div>
	<div class="cg200136-element2" style="display:none;">
		<div class="fightChooseElement" onClick="startFight()"></div>
	</div>
</div>


