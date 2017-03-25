<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="<p:localurl value="/resources/js/cg0801/cg080102.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080102.css?v=1"/>">
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">

<script type="text/javascript">
	var packagetype = {
		typeEnum : {
			"general" : "GENERAL",
			"hero" : "HERO",
			"king" : "KING",
			"myth" : "MYTH"
		},
		"activetype" : "${activetype}"
	};
	var buyaction = "<p:fullurl value ="/cg0801/cg080102/buyaction/"/>";
	var checkaction = "<p:fullurl value ="/cg0801/cg080102/checkaction/"/>";
	var extractaction = "<p:fullurl value ="/cg0801/cg080102/extractaction/"/>";
	var tabchange = "<p:fullurl value ="/cg0801/cg080102/tabchange/"/>"
	function jumpToItensify(){
		window.location.href="<p:fullurl value='/cg0302/cg030201/index'/>";
	}
	function jumpToEvo(){
		window.location.href="<p:fullurl value='/cg0302/cg030207/index'/>";
	}
</script>

<script type="text/javascript">


$(document).ready(function(){
	$(".countDown").each(function(){
		var a=$(this).attr("time");
		var b=$(this).attr("id");
		var SysSecond;
		var InterValObj;

		SysSecond = a/1000;
		$(document).ready(function(){
			SysSecond = a/1000;
			if(SysSecond>1) InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
			else {
				if(b=="HERO")  $("#"+b).html("今日免费"+${useFreeHeroTimes}+"/4次");
				else $("#"+b).html("已可免费抽取");
				
			}
		})
							
		function SetRemainTime() { 
		  	if (eval(SysSecond) > 1) {
			  SysSecond = SysSecond - 1; 
			  var second = Math.floor(SysSecond % 60);             // 计算秒
			  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
			  var hour = Math.floor((SysSecond / 3600));      //计算小时 
			  if(second<10) second="0"+second;
			  if(minite<10) minite="0"+minite;
			  if(hour<10) hour="0"+hour;
			  
			  $("#"+b).html(hour+":"+minite+":"+second+"后免费");
			} else {
				window.clearInterval(InterValObj);
			    window.location.href="<p:fullurl value='"+ "/cg0801/cg080101/index'/>";
				
				
			}
		} 
		
	});
						
	}); 


	  	function jumpToExtractMyth(){
	  		window.location.href="<p:fullurl value='"+ "/cg0801/cg080105/extract/1/CP14/false/false'/>";
	  	}
	  	
	  	function jumpToExtractKing(){
	  		window.location.href="<p:fullurl value='"+ "/cg0801/cg080105/extract/1/CP13/false/false'/>";
	  	}

	
</script>
<div class="content" id="fitstExtract">
	<div>
		<c:forEach items="${cardPackages}" var="item">

			<div style="float: left; width: 33.3%; text-align: center;">

				<div class="border_${item.type}">

					<div style="position: relative; top: 510px; text-align: center">

						
							<span style="font-size: 16pt;"><spring:message
									code="label.cg0801.ticket_${item.type}" arguments="${item.ticketCount}" /></span>
					

					</div>

					<div style="position: relative; top: 510px;">
						<!-- 抽取卡包  -->
						<c:if test="${item.overTopCount == false}">

							<c:if test="${item.isButtonGray == true}">

								<c:if
									test="${item.cardPackageCount == '1' && item.canFreeExtraction==false}">
									<img class="tips_popup clickTone1 zhaomu button_gray"
										message="<spring:message code="label.cg0801.ticketnotenough.${item.type }"></spring:message>"
										src="<p:localurl value="/resources/images/extract/zhaomu.PNG"/>">
								</c:if>
							</c:if>

							<c:if test="${item.canFreeExtraction==true}">
								<c:if test="${item.type eq 'HERO'}">
									<img
										src="<p:localurl value="/resources/images/extract/zhaomu.PNG"/>"
										class='clickTone1'
										onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/1/CP12/false/false"/>'">
								</c:if>
								<c:if test="${item.type eq 'KING'}">
									<img
										src="<p:localurl value="/resources/images/extract/zhaomu.PNG"/>"
										class='clickTone1'
										onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/1/CP13/false/false"/>'">
								</c:if>
								<c:if test="${item.type eq 'MYTH'}">
									<img
										src="<p:localurl value="/resources/images/extract/zhaomu.PNG"/>"
										class='clickTone1'
										onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/1/CP14/false/false"/>'">
								</c:if>
							</c:if>
							<c:if
								test="${item.isButtonGray == false && item.canFreeExtraction==false}">
								<img
									src="<p:localurl value="/resources/images/extract/zhaomu.PNG"/>"
									class='clickTone1'
									onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/${item.cardPackageCount}/${item.id}/false/false"/>'">
							</c:if>
						</c:if>

						<c:if test="${item.overTopCount == true }">
							<c:if test="${item.cardPackageCount == '1' }">
								<img class="tips_popup clickTone1 zhaomu button_gray"
									message="<spring:message code='label.cg0801.cardcountsup'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
									src="<p:localurl value="/resources/images/extract/zhaomu.PNG"/>">
							</c:if>

						</c:if>


					</div>

<!-- 倒计时 -->
               <div style="position: relative;top: 513px;height:31px;"class="countDown" time="${item.endLeftTime}" id="${item.type}">
       
					</div>
					<div style="left: -7px; position: relative; top: 535px;">

						<c:if test="${item.overTopCount == false}">

							<c:if test="${item.canUseDiamond==false}">
								<img class="tips_popup clickTone1 button_gray"
									message="<spring:message code="label.cg0801.gcoinnotenough"></spring:message>"
									src="<p:localurl value="/resources/images/extract/diamond_${item.type}.PNG"/>">
							</c:if>
							<c:if test="${item.canUseDiamond==true}">
								<c:if test="${item.type eq 'HERO'}">
									<img
										src="<p:localurl value="/resources/images/extract/diamond_HERO.PNG"/>"
										class='clickTone1'
										onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/1/CP15/false/false"/>'">
								</c:if>
								<c:if test="${item.type eq 'KING'}">
									<img
										src="<p:localurl value="/resources/images/extract/diamond_KING.PNG"/>"
										class='clickTone1'
										onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/1/CP16/false/false"/>'">
								</c:if>
								<c:if test="${item.type eq 'MYTH'}">
									<img
										src="<p:localurl value="/resources/images/extract/diamond_MYTH.PNG"/>"
										class='clickTone1'
										onclick="location.href='<p:fullurl value="/cg0801/cg080105/extract/1/CP17/false/false"/>'">
								</c:if>
							</c:if>
						</c:if>

						<c:if test="${item.overTopCount == true }">							
							<c:if test="${item.cardPackageCount == '1' }">
								<img class="tips_popup clickTone1 zhaomu button_gray"
									message="<spring:message code='label.cg0801.cardcountsup'/></br>
																						<spring:message code='label.cg0801.cardsurplus'/>
																						<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
																						<span><spring:message code='label.CG020000.or'></spring:message></span>
																						<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>"
									src="<p:localurl value="/resources/images/extract/diamond_${item.type}.PNG"/>">
							</c:if>

						</c:if>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div style="text-align: center;"> 
			<img style="padding-top:30px;"
						src="<p:localurl value="/resources/images/extract/goumaizuanshi.PNG"/>"
						onclick="location.href='<p:fullurl value="/cg0901/cg090101/index"/>'">
		
		</div>
</div>
