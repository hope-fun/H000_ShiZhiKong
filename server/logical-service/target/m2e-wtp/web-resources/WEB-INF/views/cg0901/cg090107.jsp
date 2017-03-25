<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0901/CG0901.css?v=1"/>"> 

<script type="text/javascript">
function getRebate(obj) {
	var $a = $(obj);
	$a.attr("onclick", "");

	var options = {
		url : "<p:fullurl value='/cg0901/cg090107/getRebate' />",
		data : {
			id : $(obj).attr("id"),
			type : $(obj).attr("type")
		},
		dataType : 'json',
		showMask : true,
		success : function(json) {
			updatePlayerInfo();
			;
			if (json.succeed == "true") {
				if (json.isDiamond) {
					var data = "{\"number\":" + json.diamondCount
							+ ",\"consumableId\":ÏµÍ³ÔùËÍ×êÊ¯" + "}";
					JSInterface.getDiamondFromSystem(data);
				}
				updatePlayerInfo();
				var st = "<p:fullurl value='"+ "/cg0901/cg090107/index'/>";
				kpyxTips("<spring:message code='label.cg090107.success' />"+'<br></br>'+"<spring:message code='label.cg090107.yigong' />"+'<span style="color:red">'+${diamondsNum}+'</span>'+"<spring:message code='label.cg1001.zuanshi' />",function(){window.location.href =st});
			} else {					
					kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
			}
		}
	}
	$.ajax(options);
}
</script>



<input type="hidden" id="vip_display" value="${vipLevelNow}" />

<div class="content">

	<div class="borderPanel" style="width: 100%; text-align: center;">
		<div class="vip-up-border"></div>
		<div class="vip-middle-border" style="height: 900px;"></div>
		<div class="vip-down-border"></div>
		<div class="vip-border-content">
			<div>
				<img src='<p:localurl value="/resources/images/vip/biaoti.PNG"/>'>
			</div>
			<div class="vip-duxian">
				<div style="float: left;">
					<img src='<p:localurl value="/resources/images/vip/vip.PNG"/>'>
				</div>
				<div style="float: left;">
					<img
						src='<p:localurl value="/resources/images/vip/${vipLevelNow}.PNG"/>'>
				</div>
				<div class="hasCharge_rate">

					<div style="text-align: right;">
						<span style="color: red;">${mPoints}</span><span>/${nextVip.accumDiamonds}<spring:message
								code='label.cg1001.zuanshi' /></span>

					</div>
					<div class="graph">
						<c:choose>
							<c:when test="${mPoints > nextVip.accumDiamonds}">
								<div class="orange" style="width: 100%; margin-left: -3px;"></div>
							</c:when>
							<c:otherwise>
								<div class="orange"
									style="width: ${mPoints/nextVip.accumDiamonds*100}%; margin-left: -4px;"></div>
							</c:otherwise>
						</c:choose>

						<div style="height: 118px;">
							<c:if test="${displayPercent>0}">
								<div
									style="float: left; position: relative; top: -34px; left: ${displayPercent*100}%">
									<img
										src='<p:localurl value="/resources/images/vip/zhishixian_green.PNG"/>'>

								</div>
								<c:if test="${canGetRebate==true}">
									<img
										style="position: relative; float: left; left: ${displayPercent*100-15}%;"
										onclick="getRebate(this)"
										src='<p:localurl value="/resources/images/vip/lingqufanli.PNG"/>'>
								</c:if>
								<c:if test="${canGetRebate==false}">
									<img
										style="position: relative; float: left; left: ${displayPercent*100-15}%;"
										src='<p:localurl value="/resources/images/vip/lingqufanlihui.PNG"/>'>
								</c:if>

							</c:if>
						</div>

					</div>
				</div>
			</div>
			<div class="current-level">

				<div>
					<span><spring:message code='label.cg090107.levelcurrent' /></span>
				</div>
				<div style="margin-top: 20px;">
					<span><spring:message code='label.cg090107.yichong'></spring:message></span><span style="color: red;">${mPoints}</span><span><spring:message code='label.cg1001.zuanshi' /></span>
				</div>

			</div>
			<div
				style="text-align:center;width:100%;height:104px;background:url('<p:fullurl value='/resources/images/vip/zaichongzhidi.png'/>') center bottom no-repeat;background-size:100% 100%;">


				<div class="charge-tishi1">
					<c:choose>
						<c:when test="${empty nextRebate}">

							<span style="color: red;"><spring:message
									code='label.cg090107.suoyou' /></span>
						</c:when>
						<c:otherwise>

			<span><spring:message code='label.cg090107.zaichong'></spring:message><span style="color: red;">${nextRebate.diamondTarget-mPoints}</span><spring:message code='label.cg090107.zuanshiling' /><span style="color: red;">20</span><spring:message code='label.cg1001.zuanshi' /></span>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="shengjiVip">
					<c:choose>
						<c:when test="${vipLevelNow<12}">
			<span><spring:message code='label.cg090107.zaichong'></spring:message><span style="color: red;">${nextVip.accumDiamonds-mPoints}</span><spring:message code='label.cg090107.zuanshishengji'></spring:message></span>
							<div class="next_vipImg">
								<img
									src='<p:localurl value="/resources/images/vip/vip${nextVip.level}.PNG"/>'>
							</div>
						</c:when>
						<c:otherwise>
							<div class="vip_fulllevel">
								<span style="color: red;"><spring:message
										code='label.cg090107.levelmax'></spring:message></span>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="vip-chanrge">
				<img src='<p:localurl value="/resources/images/vip/chongzhi.PNG"/>'
					onclick='location.href="<p:fullurl value="/cg0901/cg090101/index"/>"'>

			</div>

			<div class="vipInfo-up-border"></div>
			<div class="vipInfo-middle-border"></div>
			<div class="vipInfo-down-border"></div>
			<div class="vip-border-content" style="top: 520px;">
				<div style="padding-top: 20px;">
					<img
						src='<p:localurl value="/resources/images/vip/VIPshuomingditiao.PNG"/>'>
				</div>
				<div class="clearfix"></div>
				<div class="vip-imgLeft">
					<img src='<p:localurl value="/resources/images/vip/xiangzuo.PNG"/>'
						onclick="preVip()">
				</div>


				<div class="vip_briefIntro">
					<c:forEach items="${vipList}" var="item" varStatus="k">
						<marquee style="display: none; height: 100%;" id="vip_${k.index}"
							scrollamount="80" behavior="slide" direction="left">
							<div>
								<div class="jieshao-vip">
									<img
										src='<p:localurl value="/resources/images/vip/vip${k.index+1}.PNG"/>'>
								</div>
								<div class="jieshao-zi">
									<span><spring:message
											code="label.cg090107.leijichongzhi" /> </span><span>${item.accumDiamonds}<spring:message
											code='label.cg1001.zuanshi' /></span>
								</div>



								<div class="vip-left" id="wordsVip_${k.index}">
									<div>
										<span class="fc-normal-05-m"><spring:message
												code="label.cg0901.nenglianghuifu" />:</span><span>${item.propertiesResume}<spring:message
												code="lable.cg0901.pointpermin" /></span>
									</div>
									<div>
										<span class="fc-normal-05-m"><spring:message
												code="lable.cg0901.zengsongzhaomudian" />:</span><span>${item.FPoints}/<spring:message
												code="lable.cg0901.day" /></span>
										<div>
											<span class="fc-normal-05-m"><spring:message
													code="lable.cg0901.kapaiewaijingyan" />:</span><span>${item.cardExp}%</span>
										</div>
										<div class="clearfix"></div>
										<div>
											<span class="fc-normal-05-m"><spring:message
													code="lable.cg0901.zengjiahanghuirenwu" />:</span><span>${item.unionTaskCount}<spring:message
													code="lable.cg0901.time" />/<spring:message
													code="lable.cg0901.day" /></span>
										</div>
										<div class="left-style">
											<span class="fc-normal-05-m"><spring:message
													code="lable.cg0901.zengjishangpinpaimaigeshu" />:</span><span>${item.auctionMax}<spring:message
													code="lable.cg0901.body" /></span>
										</div>
										<div class="right-style">
											<span class="fc-normal-05-m"><spring:message
													code="lable.cg0901.paimaishangpinshijian" />:</span><span>${item.auctionTime}<spring:message
													code="lable.cg0901.hour" /></span>
										</div>
										<div class="clearfix"></div>
									</div>
									<div>
										<span class="system-content"><span
											class="fc-normal-05-m"><spring:message
													code="lable.cg0901.keyconsumetimes" /></span><span
											style="font-size: 20pt;">${item.freeConsumeTimes}</span></span>
									</div>
								</div>
							</div>
						</marquee>
					</c:forEach>
				</div>
				<div class="clearfix"></div>
				<div class="vip-imgRight">
					<img src='<p:localurl value="/resources/images/vip/xiangyou.PNG"/>'
						onclick="nextVip()">


				</div>

			</div>
		</div>
	</div>
</div>

<script>
function  nextVip(){
	
	var current=$("#vip_display").val();
	
	var ss=parseInt($("#vip_display").val(),10);
	var obj=document.getElementById("vip_"+current);
	obj.style.display="none";
	var nextDis=ss+1;
	if(nextDis>11) nextDis=0;
	//alert(nextDis);
	var objNext=document.getElementById("vip_"+nextDis);
	objNext.style.display="block";
	objNext.direction="left";
	var needDis=document.getElementById("wordsVip_"+nextDis);
	needDis.style.left="30px";
	$("#vip_display").attr("value",nextDis);
}

function  preVip(){
	
	var current=$("#vip_display").val();
	
	var ss=parseInt($("#vip_display").val(),10);
	var obj=document.getElementById("vip_"+current);
	obj.style.display="none";
	var preDis=ss-1;
	if(preDis<0) {
		preDis=11;
	}
	var objPre=document.getElementById("vip_"+preDis);
	var needDis=document.getElementById("wordsVip_"+preDis);
	needDis.style.left="-100px";
	objPre.direction="right";
	objPre.style.display="block";
	

	$("#vip_display").attr("value",preDis);
}

$(function(){
	var s1=${vipLevelNow};
	if(s1>11) s1=11;
	var objid=document.getElementById("vip_"+s1);
	objid.style.display="block";
	
});





</script>