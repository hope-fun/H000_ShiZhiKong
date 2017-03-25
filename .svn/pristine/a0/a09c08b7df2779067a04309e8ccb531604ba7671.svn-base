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
		
		$(".cg200138-equip1").css("height", maxHeight+"px");
		$(".cg200138-equip2").css("height", maxHeight+"px");
		
		
		$(".changeCard").css("top", "0px");
		$(".changeCard").css("height", maxHeight+"px");
		
		
		$(".resolveEquip").css("top","0px");
		$(".resolveEquip").css("height", maxHeight+"px");
		
		
			
});

function changeCard(){
	$(".cg200138-equip1").css("display", "none");
	$(".cg200138-equip2").css("display", "block");
}

function resolveEquip(){		
	window.location.href = '<p:fullurl value="/cg2001/cg200146/index" />';
}





</script>


<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">

<div class="content">
	<div class="cg200138-equip1" style="display:block;">		
		<div class="changeCard" onClick="changeCard()"></div>
	</div>
	<div class="cg200138-equip2" style="display:none;">
		<div class="resolveEquip" onClick="resolveEquip()"></div>
	</div>
</div>


