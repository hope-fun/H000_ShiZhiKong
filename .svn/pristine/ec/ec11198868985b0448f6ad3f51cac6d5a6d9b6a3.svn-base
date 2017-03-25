<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<%@attribute name="items"
	type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"
	required="true" rtexprvalue="true"
	description="The paged list of player cards"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search player cards list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.data.service.vo.SearchPlayerConsumablesVO"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
<script>
	document.addEventListener("keydown", function() {
		if (event.keyCode == 13 || event.keyCode == 108)
			event.preventDefault();
	});
	
	function tishi(){
		kpyxTips("<spring:message code='label.cg060101.weidadengjixingji'></spring:message>");
	}
	function tishi1(){
		kpyxTips("<spring:message code='label.cg060101.qingdaohuodong'></spring:message>");
	}
	
	function notOpen(){
		kpyxTips("<spring:message code='label.cg060101.notopen'></spring:message>");
	}
	
	function useConsumable(obj){		
		
		var cardsCount = "${playerVO.cardsCount}";
		var cardsMax = "${playerVO.cardsMax}";
			//新手礼包 内均有1张卡牌
		if(cardsCount +1 > cardsMax){
			kpyxTips(document.getElementById("cardsmax-message-cg0601").innerHTML);
		}else{
			var self = obj;
			$(document.forms[0]).children('input').each(function() {
					self.parentNode.appendChild(this.cloneNode());
			});
			self.parentNode.submit();
		}
	}
	
	
</script>
<script type="text/javascript">
var SysSecond;
var InterValObj;
$(document).ready(function(){
			SysSecond = ${endleftTime}/1000;
			InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
	}); 

	function SetRemainTime() { 
	  	if (eval(SysSecond) > 1) {
		  SysSecond = SysSecond - 1; 
		  var second = Math.floor(SysSecond % 60);             // 计算秒
		  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
		  var hour = Math.floor((SysSecond / 3600));      //计算小时 
		  $("#endleftTime").html(
				  "<spring:message code='label.cg090106.julixiaci'></spring:message>"+'</br><span style="color:red;">'
				   + hour + '</span>'+"<spring:message code='label.cg120112.union.hour'/>"+ '<span style="color:red;">'
				   + minite + '</span>'+"<spring:message code='label.cg120112.union.minutes'/>"+ '<span style="color:red;">' 
				   +second + '</span>'+ "<spring:message code='label.cg120112.union.seconds'/>");
		} else {//剩余时间小于或等于0的时候，就停止间隔函数 
			$("#endleftTime").html("");
		}
	}
</script>
<div id="cardsmax-message-cg0601" style="display:none;">
	<spring:message code='label.cg0801.cardcountsupten'/></br>
	
	<spring:message code='label.cg0801.cardsurplus'/>
	<img class='imgIntensifyEvo' onclick='jumpToItensify()'src='<p:localurl value="/resources/images/hechengnew.png" />'/>
	<span><spring:message code='label.CG020000.or'></spring:message></span>
	<img class='imgIntensifyEvo' onclick='jumpToEvo()'src='<p:localurl value="/resources/images/zhuanshengnew.png" />'/>
</div>
<c:if test="${empty items }">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }">
	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData }"
		paginationUrl="${searchUrl }">
		<c:forEach items="${items}" var="item">
			<div class="paddign-style15">
				<div class="borderPanel">
					<div class="panelB-header"></div>
					<div class="panelB-body panelB03-height panelB03-height-new" style="height: 210px;"></div>
					<div class="panelB-footer"></div>
					<div class="border-content-noleft">
						<div class="item-name-style">
						
						
							<div class="propsName system-title">
								<span>${item.name }</span>
							</div>
							<div class="split-item-down-060102">
								<img class="split-down-width"
									src="<p:localurl value="/resources/images/line-split-down.png"/>" />
							</div>

							<div class="propsImagesDiv">
								<div class="propsImageStyle04">
									<c:if test="${item.consumableType eq 'GIFT_PACKAGE' }">
										<img src='<p:localurl value="/resources/images/giftpackage/large/${item.consumableId }.png"/>' />
									</c:if>
									<c:if test="${item.consumableType ne 'GIFT_PACKAGE' }">
										<img src="<p:consumImg type="large" id="${item.consumableId }"></p:consumImg>" />
									</c:if>
								</div>
							</div>
							<div class="propsDetailinfo03">
								<div class="fc-title-02">
									<span><spring:message code="lable.cg0901.chiyoushuliang" />:</span>
									<span class="fc-normal-03-m">${item.count }&emsp;</span>
									<span class="fc-normal-05-m">
										(<spring:message code="lable.cg0901.canAuction" />:${item.buyCount},
										 <spring:message code="lable.cg0901.canNotAuction" />:${item.count-item.buyCount})
									</span>
								</div>
								<div class="fc-title-02 function-height function-height02">														
									<span><spring:message code="lable.cg0601.gongneng" />:</span> 
									<c:if test="${item.consumableType eq 'UBOX' }">
										<span class="fc-normal-03-m"><spring:message code="lable.cg0601.des1.ub" />${DiamondUB}<spring:message code="lable.cg0601.des2.ub" /></span>
									<div style="margin-top: 10px; margin-left: 250px">
											<span id="endleftTime" class="fc-normal-06-s endlefttime"></span>
										</div>
									</c:if>
									<c:if test="${item.consumableType ne 'UBOX' }">
										<span class="fc-normal-03-m">${item.description }</span>
									</c:if>								
								</div>
								<div class="cg060101-button-style">
									<c:choose>
										<c:when test="${item.count == 0 }">
											<c:choose>										
												
												<c:when test="${item.saleInShop && item.consumableId !='D4'}">													
													<a href="<p:fullurl value="/cg0901/cg090103/index"/>">
														<input type="image"
														src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>' style="padding-top: 70px;"/>
													</a>
												</c:when>
												<c:when test="${item.consumableId =='D4'}">													
													
												</c:when>
											</c:choose>
										</c:when>
										<c:when test="${item.count != 0 }">
											<form action="<p:fullurl value="/cg0601/cg060101/use" />">

												<input type="hidden" name="consumableId" value="${item.consumableId}" /> 
												<c:choose>
													<c:when test="${item.consumableId =='D6'}">
													 	<img class="clickTone1 img-use img-use02" onclick="var self = this;$(document.forms[0]).children('input').each(function() {self.parentNode.appendChild(this.cloneNode())});self.parentNode.submit();"
														src='<p:localurl value="/resources/images/buttons/shiyong-green.png"/>' />
													 </c:when>	
													 
													
													 <c:when test="${item.consumableId =='D7'}">
													 	<img class="clickTone1 img-use img-use02 button_gray" onclick="notOpen()"
														src='<p:localurl value="/resources/images/buttons/shiyong-green.png"/>' />
													 </c:when>		
													 										
													<c:when
														test="${item.consumableId eq 'D9' && playerVO.level<20}">
														<img
															class="clickTone1 img-use img-use02 img-use03 button_gray"
															onclick="tishi()"
															src='<p:localurl value="/resources/images/buttons/shiyong-green.png"/>' />
													</c:when>
													<c:when
														test="${item.consumableId eq 'YIND' ||item.consumableId eq 'JD'||item.consumableId eq 'YUAND'}">
														<img
															class="clickTone1 img-use img-use02 img-use03 button_gray"
															onclick="tishi1()"
															src='<p:localurl value="/resources/images/buttons/shiyong-green.png"/>' />
													</c:when>
													<c:when test="${item.consumableId eq 'GP1'}">
														<img class="clickTone1 img-use img-use02 img-use03" value="${item.consumableId}"
															onclick="useConsumable(this)"
															src='<p:localurl value="/resources/images/buttons/shiyong-green.png"/>' />
													</c:when>
													<c:otherwise>
														<img class="clickTone1 img-use img-use02 img-use03"
															onclick="var self = this;$(document.forms[0]).children('input').each(function() {self.parentNode.appendChild(this.cloneNode())});self.parentNode.submit();"
															src='<p:localurl value="/resources/images/buttons/shiyong-green.png"/>' />
													</c:otherwise>
												</c:choose>

												<c:if test="${not empty backUrl}">
													<input type="hidden" name="backUrl" value="${backUrl }"/>
												</c:if>
											</form>
										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</tags:pagination>
</c:if>
