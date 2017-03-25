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
		
		$(".cg200136-cardGroup1").css("height", maxHeight+"px");
		$(".cg200136-cardGroup2").css("height", maxHeight+"px");
		$(".cg200136-cardGroup3").css("height", maxHeight+"px");
		
		
		$(".cardGroupFight").css("top", "0px");
		$(".cardGroupFight").css("height", maxHeight+"px");
		
		
		$(".addCardGroup").css("top","0px");
		$(".addCardGroup").css("height", maxHeight+"px");
		
		$(".requireInfo").css("top","0px");
		$(".requireInfo").css("height", maxHeight+"px");
		
			
});

function cardGroupFight(){
	$(".cg200136-cardGroup1").css("display", "none");
	$(".cg200136-cardGroup2").css("display", "block");
}

function addCardGroup(){	
	$(".cg200136-cardGroup2").css("display", "none");
	$(".cg200136-cardGroup3").css("display", "block");
}

function requireInfo(){
	window.location.href = '<p:fullurl value="/cg2001/cg200145/index" />';
}


</script>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200136-cardGroup1" style="display:block;">		
		<div class="cardGroupFight" onClick="cardGroupFight()"></div>		
	</div>
	<div class="cg200136-cardGroup2" style="display:none;">
		<div class="addCardGroup" onClick="addCardGroup()"></div>
	</div>
	<div class="cg200136-cardGroup3" style="display:none;">
		<div class="requireInfo" onClick="requireInfo()"></div>
	</div>
</div>


