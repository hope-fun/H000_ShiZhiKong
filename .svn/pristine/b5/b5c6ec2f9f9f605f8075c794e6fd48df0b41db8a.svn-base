<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<script>

$(function(){
	$(".css-label").click(function(){
		var testId = $(this).attr("value");
		var isChecked = $("#sell_out_" + testId).attr('checked');
		if(isChecked == 'false'){
			$(this).removeClass('checkbox-pic-style').addClass('checkbox-checked-pic-style');
			$("#sell_out_" + testId).attr('checked', "true");
		}else{				
			$(this).removeClass('checkbox-checked-pic-style').addClass('checkbox-pic-style');
			$("#sell_out_" + testId).attr('checked', "false");
		}
		
		
	});
});

var isSelectedAll = false;

function selectAll(){
	var chs = $(".sell_out");
	
	chs.each(function(i, ch){
		if(isSelectedAll){
    		$(ch).attr("checked", "false");
    	}else{
    		$(ch).attr("checked", "true");
    	}
	});
	
	if(isSelectedAll){
		$(".checkbox-checked-pic-style").each(function(){
			$(this).removeClass('checkbox-checked-pic-style').addClass('checkbox-pic-style');
		});
	} else {
		$(".checkbox-pic-style").each(function(){
			$(this).removeClass('checkbox-pic-style').addClass('checkbox-checked-pic-style');
		});
	}

	
    isSelectedAll = !isSelectedAll;
}

function sellEquipments(){
	
	var choiceCount = 0;
	var sos= $(".sell_out");
	var sp = $(".sell_price");
	var sc = $(".sell_count");
	var checkedInfo = "sell/";
	var silverCoin = 0;
	sos.each(function(i, so){
    	if($(so).attr('checked') == "true"){
			var consumableId = $(so).val();
			var itemCount = sc[i].value;
			if (itemCount < 1){
				itemCount = 1;
			}
			checkedInfo = checkedInfo + consumableId +"-" + itemCount +"|";
    		silverCoin = silverCoin + eval(sp[i].value * itemCount);
    		choiceCount ++;
    	}
	});
    
	if(choiceCount==0){
		kpyxTips("<spring:message code="lable.cg0601.qingxianxuanzeyaochushoudewupin"/>!");
	}else{
	    kpyxConfirm("<spring:message code="lable.cg0601.jianghuode"/>"+silverCoin+"<spring:message code="lable.cg0601.shuijingniquedingyaochushouma"/>?", function() {
	    	
	    	var url =  "<p:fullurl value='/cg0601/cg060102/' />" + checkedInfo;	    		
	    	$.get(url,function(response) {
				json = JSON.parse(response);
				console.log(json)
				if(json.succeed){
					if(json.consumableNames!=null){
						var names = json.consumableNames;
						var counts = json.consumableCounts; 
						for(var i=0;i<names.length;i++)
						{
						   for(var j=0;j<counts.length;j++){
							   if(i==j){
								   var info = "{\"consumableId\":\""+ names[i] +"\",\"number\":" + counts[j] +"}";
								   JSInterface.useConsumble(info);
								  
							   }
						   }
						} 
					}
					kpyxTips("<spring:message code="lable.cg0601.chushouchenggong"/>",function (){
						window.location.href = "<p:fullurl value='/cg0601/cg060102/index'/>";
					});
					
				}else{
					kpyxTips("<spring:message code="lable.cg0601.chushoushibai"/>");
				}
	    	
		});
	    	
	    	//location.href = "sell/" + checkedInfo;
	    }, null);
	}

}
function notopen(){
	kpyxTips("<spring:message code='label.notopen'/>");
}
</script>

<div class="content">
	<div class="menu-medium title-label-03"><span><spring:message code="lable.cg0601.wupin"/></span></div>
	
	<div class="twobuttondiv">
		<a href="<p:fullurl value="/cg0601/cg060101/index"/>" class="top-button btn_img_daoju leftbuttonStyle clickTone1"></a>
		<a href="<p:fullurl value="/cg0602/cg060201/index"/>" class="top-button btn_img_zhuangbei rightbuttonStyle clickTone1"></a>
		<div style="clear: both;"></div>
	</div>
	
	 <div class="commonPading01" style="width: 100%;">
		<div class="borderPanel" style="width:100%;">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="commonPading01">
					<div class="npc-img">
						<img src='<p:localurl value="/resources/images/npc-2.png"/>'>
					</div>
					<div class="fc-normal-05-l npc-message">							
						<spring:message code='lable.cg0601.msg_npc'></spring:message>						
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div> 
		
	<div class="tab-panel02">
		<div class="tab-shop">
			<div class="clickTone1" 
				onclick="window.location.href = '<p:fullurl value="/cg0601/cg060101/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/daojuyilan-blue-b.png" />" />
			</div>
			<div class="tab-active clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0601/cg060102/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/chushou-yellow--b.png" />" />
			</div>
			<!-- <div class="clickTone1" onclick="window.location.href = '<p:fullurl value="/cg0601/cg060103/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png" />" />
			</div> -->
			<div><img src="<p:localurl value="/resources/images/buttons/paimai-blue-b.png" />" class="button_gray" onclick="notopen()"/></div>
			<div></div>
		</div>
		<div class="split-line"></div>
		
		<c:choose>
			<c:when test="${not empty playerConsumable }">
				<div class="twobuttondiv select-allequip">
					<div class="top-button btn_img_dangyequanxuan leftbuttonStyle clickTone1" onclick="selectAll();"></div>
					<div class="top-button btn_img_chushou rightbuttonStyle clickTone1"  onclick = "sellEquipments();"></div>
					<div style="clear: both;"></div>
				</div>
			
				<div>
					<cards:0601_salePlayerConsList searchData="${searchConsumablesVO }"
								searchUrl="/kpyx-logical-service/cg0601/cg060102/index"
								items="${playerConsumable}"></cards:0601_salePlayerConsList>
				</div>	
				
				<div class="twobuttondiv select-allequip">
					<div class="top-button btn_img_dangyequanxuan leftbuttonStyle clickTone1" onclick="selectAll();"></div>
					<div class="top-button btn_img_chushou rightbuttonStyle clickTone1"  onclick = "sellEquipments();"></div>
					<div style="clear: both;"></div>
				</div>
			</c:when>
			<c:when test="${empty playerConsumable }">
				<span><spring:message code="lable.cg0601.ninhaimeiyoukechushoudedaoju"/>!</span>
	        </c:when>
		</c:choose>
			
	</div>
</div>

