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
										
										bridge.send("ddd:"+data);
									  
									    });
									}
							}
							$$.ajax(options);
						
						});
					});
			});
		});
		
		$(function() {
			if($.os.android)
				$("input[name='buy_button']").each(
					function(){
						$(this).bind("click",function() {
							
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
	<div>
		<div class="cg0901IterCotainer">
				<div class="borderPanel">
					<div class="panel-header-cg090101"></div>
					<div class="panel-body-cg090101 panel-cg090101-height"></div>
					<div class="panel-footer-cg090101"></div>
					<div class="border-content-noleft">
						<div class="cg090101-info">
							<div class="cg090101-title"><img src="<p:localurl value="/resources/images/buydiamond/buyDiamond.PNG" />" /></div>
							<div class="player-diamond-count">
								<div class="diamond-pic"><img src="<p:localurl value="/resources/images/buydiamond/diamondBig.PNG" />" /></div>
								<div><span>${playerVO.goldCoin}</span></div>
							</div>
							<div class="player-vip-des">
								<div class="vip-des-style" style="width:70%;float:left;"><span><spring:message code="label.cg090101.vip.privilege"></spring:message></span></div>
								<div style="width:25%;float:left;"><img onclick="location.href='<p:fullurl value="/cg0901/cg090107/index"/>'" src="<p:localurl value="/resources/images/buydiamond/vipPrivilege.PNG" />" /></div>
							</div>
							<div class="diamond-buy-info">
								<c:forEach items="${goods}" var="item">
									<div class="diamond-buy-pic">										
										<div id="log">
											<input class="clickTone1" name="buy_button" type="image" goodsid="${item.id }"
												count="1"
												value="<spring:message code="label.cg0901.shopgoods.name"></spring:message>:${item.name }<spring:message code="lable.cg0901.zuanshi"></spring:message><br><spring:message code="lable.cg0901.jiage"></spring:message>:${item.price } <spring:message code="label.cg0901.shopgoods.priceunit"></spring:message><br><spring:message code="label.cg0901.shopgoods.num"></spring:message>:1"
												src='<p:localurl value="/resources/images/buydiamond/${item.id }.png"/>'/>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>						
					</div>
				</div>
			</div> 
		
	</div>
</div>