<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script>
		var InterValObjUpdate = window.setInterval(updatePlayerInfo, 3000); //间隔函数，3秒执行 
		document.addEventListener('WebViewJavascriptBridgeReady', function (event) {
		    bridge = event.bridge;
		   
		    $(function() {
				$("input[name='buy_button']").each(
					function(){
						$(this).bind("click",function() {
							
							var msg = $(this).val();
							var id = $(this).attr("goodsid");
							var count = $(this).attr("count");
							var options = {
									url:'<p:fullurl value="/cg0901/cg090101/confirmOrder" />'+"/"+id+"/"+count,
									type:"GET",
									dataType:"html",
									success:function(data) {
										data += '<spring:message code="lablel.raidtype.GCOIN"></spring:message>';
										kpyxConfirm(msg, function() {
											//alert("dddd");
										bridge.send("ddd:"+data);
									   // window.location.href="<p:fullurl value='/cg0901/cg090101/index/'/>";
									    });
									}
							}
							$$.ajax(options);
						//	kpyxTips("抱歉,支付功能暂时禁用");
						//	event.preventDefault();
						});
					});
		});
		});
		
		$(function() {
			if($.os.android)
				$("input[name='buy_button']").each(
					function(){
						$(this).bind("click",function() {
							/*
							var msg = $(this).val();
							var id = $(this).attr("goodsid");
							var count = $(this).attr("count");
							var options = {
									url:'<p:fullurl value="/cg0901/cg090101/confirmOrder" />'+"/"+id+"/"+count,
									type:"GET",
									dataType:"html",
									success:function(data) {
										data += '<spring:message code="lablel.raidtype.GCOIN"></spring:message>';
										kpyxConfirm(msg, function() {
											var dataArray = data.split(',');
											var responseStr = Android.startBuyActivity(dataArray[0],dataArray[1],dataArray[2]);
											showTips(responseStr);
									    }, null);
									}
							}
							$$.ajax(options);
							*/
							kpyxTips("<spring:message code='lable.cg090101.cannotpay'/>");
							event.preventDefault();
						});
					});
		});
		
		function showTips(resStr){
			$.ajax({
				url : '<p:fullurl value="/cg0901/cg090101/payResult" />',
				async : true,
				dataType : 'json',
				contentType : "application/json; charset=utf-8",
				headers : {
					"Content-Type" : "application/json"
				},
				type : 'POST',
				data : resStr,
				success:function(resp) {
					if (resp != null) {
						if (resp.value == 'success')
							alert('<spring:message code="lable.cg0901.zhifuchenggong"/>');
						else if (resp.value == 'failed')
							alert('<spring:message code="lable.cg0901.zhifushibai"/>');
						else if (resp.value == 'orderUpdated')
							alert('<spring:message code="lable.cg0901.cidingdanyigengxin"/>');
						else if (resp.value == 'distrust') 
							alert('<spring:message code="lable.cg0901.bukexinrendezhifujieguo"/>');
					}
				}
			});
		}
		
</script>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>">
<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg0901.buydiamond"></spring:message></span>
	</div>
	<div class="cg0901IterCotainer">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content-noleft">
				<div class="card-assistant commonPading01">
					<div class="npc-img">
						<div class="">
							<img src='<p:localurl value="/resources/images/npc-2.png"/>'/>
						</div>
					</div>
					<div class="npc-message">
						<div class="npc-message">
							<div class="paddingStyle50 center-site">
								<span><spring:message code="lable.cg0901.npc.info"></spring:message></span>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div>
		<c:forEach items="${goods}" var="item">
		 	<div class="cg0901IterCotainer">
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB03-height"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
						<div class="clearfix"></div>
						<div class="buy-diamond">
							<div >
								<div>
									<img src='<p:localurl value="/resources/images/buydiamond/${item.id }.png"/>'/>
								</div>
							</div>
							<div class="paddingStyle20 diamond-style"><span class="diamond_font"> ${item.name }<spring:message code="lable.cg0901.zuanshi"></spring:message> = ${item.price } <spring:message code="label.cg0901.shopgoods.priceunit"></spring:message></span></div>
							<div class="buy-diamond-button">
								<div id="log">
									<input class="clickTone1" name="buy_button" type="image" goodsid="${item.id }"
										count="1"
										value="<spring:message code="label.cg0901.shopgoods.name"></spring:message>:${item.name }<spring:message code="lable.cg0901.zuanshi"></spring:message><br><spring:message code="lable.cg0901.jiage"></spring:message>:${item.price } <spring:message code="label.cg0901.shopgoods.priceunit"></spring:message><br><spring:message code="label.cg0901.shopgoods.num"></spring:message>:1"
										src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>' />
								</div>
							</div>				
						</div>			
					</div>
				</div>
			</div> 
		</c:forEach>
	</div>
</div>