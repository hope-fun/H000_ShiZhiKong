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
		
		$(".cg200140-fight1").css("height", maxHeight+"px");
		$(".cg200140-fight2").css("height", maxHeight+"px");
		
		
		$(".chooseEnemy").css("top", "0px");
		$(".chooseEnemy").css("height", maxHeight+"px");
		
		
		$(".startFight").css("top","0px");
		$(".startFight").css("height", maxHeight+"px");
		
		
			
});

function chooseEnemy(){
	$(".cg200140-fight1").css("display", "none");
	$(".cg200140-fight2").css("display", "block");
}

function startFight(){		
	window.location.href = '<p:fullurl value="/cg2001/cg200148/index" />';
}


</script>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200140-fight1" style="display:block;">		
		<div class="chooseEnemy" onClick="chooseEnemy()"></div>
	</div>
	<div class="cg200140-fight2" style="display:none;">
		<div class="startFight" onClick="startFight()"></div>
	</div>
</div>


