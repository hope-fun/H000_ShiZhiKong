<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG2001/CG2001.css?v=1"/>">
<script>
	function doPost(url){
		var changeName = $(".nametextarea").val();
		
	}
	function backTo(){
		 var name="${playerName}";
		 var url = '<p:fullurl value="/cg2001/cg200102/back/${playerCampType}/"/>';
		 window.location.href = url + "?playerName="+name;
	}
	
	function confirmPlayer(){
		var url = '<p:fullurl value="/cg2001/cg200103/confirm"/>';
		$.get(url,function(response) {
			json = JSON.parse(response);
			console.log(json)
			console.log(json.succeed)
			if(json.succeed){
				if(json.isDiamond){					
					var data = "{\"number\":"+ json.diamondCount +",\"consumableId\":\"新手教程赠送钻石\""+"}";
					JSInterface.getDiamondFromSystem(data);
				}
				location.href = '<p:fullurl value="/cg2001/cg200104/index"/>';
			}
		})
	}
	$(document).ready(function(){		
		document.addEventListener('WebViewJavascriptBridgeReady', function(event) {			
				JSInterface.showUpandDown("NO");		
		}, false);
	});

</script>
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message
				code="label.cg200103.newcommer.makesure.name"></spring:message></span>
	</div>

	<div class="commonPading01" style="width: 100%;">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img-new">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="npc-message-cg2001-new">
						<span class="fc-normal-06-l">${playerName}</span> <span class="menu-medium"><spring:message
								code="label.cg200103.newcommer.name.ok"></spring:message></span>


					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>


		<div class="conference-buttons commonPadding-top03">
			<img class="clickTone1" onClick="confirmPlayer()"				
				src='<p:localurl value="/resources/images/buttons/queding-green-z.png"/>'>
		</div>

		<div class="conference-buttons">
			<img class="clickTone1" onclick="backTo();"				
				src='<p:localurl value="/resources/images/buttons/chongxinquming-blue-z.png"/>'>
		</div>
	</div>
</div>