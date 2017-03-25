<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>"> 

<script>
	function buy(level) {
		var target = this;
		if(${vipLevelNow}>level){
			kpyxConfirm("<spring:message code='label.cg0901.vip.down'/>",function (){
				goBuy.call(target,level);
			},null);
		}else{
			if(${vipLevelNow}==0){
				kpyxConfirm("<spring:message code='label.cg0901.vip.in'/>",function (){
					goBuy.call(target,level);
				},null);
			}else if(${vipLevelNow} == level) {
				kpyxTips("<spring:message code='label.cg0901.vip.same' arguments='${vipLevelNow}' />");
			}
			else{
				kpyxConfirm("<spring:message code='label.cg0901.vip.up'/>"+ level +"?",function (){
					goBuy.call(target,level);
				},null);
			}
		}
	}
	
	function goBuy(level){
		var func = this.onclick;
		this.onclick = "";
		$.ajax({
		    url: '<p:fullurl value="/cg0901/cg090105/buy" />' +"?vipLevel=" + level,
	      	type: 'GET',
	      	data: null,
	      	dataType: 'json',
	      	showMask: false,
	      	success: function(resp) {
	      				if(resp.result){
	      					console.log(resp.data)
	      					json = JSON.parse(resp.data);
	      					//音效   ma_li 2013_11_7  
	    					JSInterface.clickTone(113);
		      				//判断是否购买成功，购买成功后向客户端发送消息   add by ma_li   talking game数据分析
		      				var info = "{\"consumableId\":\""+json.goodsName+"\",\"number\":"+ json.buyCount +",\"cost\":"+ json.totalCost +"}";		      			
		    				JSInterface.buyGoodsFromShop(info);
		    				kpyxTips(json.message,function() {
								window.location.href = '<p:fullurl value="/cg0901/cg090105/index" />' +"?pageIndex="+$("input[name='pageIndex']").val()+"&pageSize="+$("input[name='pageSize']").val();
							}); 
	      				}else{
							kpyxTips(resp.data,function() {
								window.location.href = '<p:fullurl value="/cg0901/cg090105/index" />' +"?pageIndex="+$("input[name='pageIndex']").val()+"&pageSize="+$("input[name='pageSize']").val();
							}); 
	      				}
			}
	     });
	}
	</script>

<div class="content" >
	<div class=" menu-medium title-label-03">
		<span><spring:message code="lable.cg0901.shangdian"/></span>
	</div>
		<div class="tab-shop">
			<div class="clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0901/cg090103/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/daoju-blue-b.png" />" />
			</div>
			<%-- <div class="clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0901/cg090104/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/kaquan-blue-b.png" />" />
			</div> --%>
			<div class="tab-active clickTone1"
				onclick="window.location.href = '<p:fullurl value="/cg0901/cg090105/index" />'">
				<img src="<p:localurl value="/resources/images/buttons/viphuiyuan-yellow-b.png" />" />
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="split-line"></div>
		<div>
			<div>
				<div>
				<cards:0901_shopVipList searchData="${searchVIPVO }"
						searchUrl="/kpyx-logical-service/cg0901/cg090105/index"
						items="${vipList}"></cards:0901_shopVipList>
				</div>
			</div>
		</div>
	</div>
 