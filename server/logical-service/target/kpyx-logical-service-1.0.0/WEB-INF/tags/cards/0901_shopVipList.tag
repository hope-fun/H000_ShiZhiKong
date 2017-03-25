<%@ tag pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0801/CG080105.css?v=1"/>">
<%@attribute name="items"
	type="com.artistmobile.kpyx.server.framework.service.impl.PagedList"
	required="true" rtexprvalue="true"
	description="The paged list of player cards"%>
<%@attribute name="searchUrl" type="java.lang.String" required="true"
	rtexprvalue="true"
	description="The default search player cards list url"%>
<%@attribute name="searchData"
	type="com.artistmobile.kpyx.server.data.service.vo.SearchVipVO"
	required="true" rtexprvalue="true"
	description="It should be simply object, each property would be taken as search condition."%>
<c:if test="${empty items }">
	<div class="align-center"></div>
</c:if>
<c:if test="${not empty items }">
	<tags:pagination items="${items}" id="searchPlayerList" method="GET"
		renderAjax="false" searchData="${searchData }"
		paginationUrl="${searchUrl }">
		
		<div class="twobuttondiv">
			<a href="<p:fullurl value="/cg0901/cg090101/index"/>">
				<img alt="" class="clickTone1" src="<p:localurl value="/resources/images/buttons/goumaizuanshi-green-z.png" />">
			</a>
		</div>
		
		<c:forEach items="${items}" var="item">
			<div class="panel-01">
				<div class="panel-gmdj-header">
					<span>VIP ${item.level}  <spring:message code="lable.cg0901.yinchuo"/></span>
				</div>
						
			<div class="borderPanel" style="width:100%">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB06-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="center-text">
						<span class="item-level">VIP&nbsp;${item.level}</span>
					</div>
					<div class="split-down-style">
						<img src='<p:localurl value="/resources/images/line-split-down.png"/>'/>
					</div>
					<div class="padding-style15">
						<div class="consumable-pic">
							<div class="consumable-pic-style"">
								<img src='<p:fullurl value="/resources/images/consumable/large/${fn:substring(item.id, 1, 3) > 9 ? fn:replace(item.id, 'V', 'vip') : fn:replace(item.id, 'V0', 'vip') }.png"/>'/>
							</div>
						</div>
						<div class="consumable-info">
							<div class="system-content" >
								<div class="left-style"><span class="fc-normal-05-m"><spring:message code="lable.cg0901.jiage"/>:</span><span>${item.discountPrice}<spring:message code="lable.cg0901.zuanshi"/></span></div>
								<div class="right-style"><span class="fc-normal-05-m"><spring:message code="lable.cg0901.validity"/>:</span><span>${item.expiry}<spring:message code="lable.cg0901.month"/></span></div>
								<div class="clearfix"></div>
								<div><span class="fc-normal-05-m"><spring:message code="lable.cg0901.nenglianghuifu"/>:</span><span>${item.propertiesResume}<spring:message code="lable.cg0901.pointpermin"/></span></div>
								<!-- <div><span class="fc-normal-05-m"><spring:message code="lable.cg0901.wanjiaewaijingyan"/>:</span><span>${item.playerExp}%</span></div> -->
								<div><span class="fc-normal-05-m"><spring:message code="lable.cg0901.zengsongzhaomudian"/>:</span><span>${item.FPoints}/<spring:message code="lable.cg0901.day"/></span>
								<div><span class="fc-normal-05-m"><spring:message code="lable.cg0901.kapaiewaijingyan"/>:</span><span>${item.cardExp}%</span></div>
								<div class="clearfix"></div>
								<div><span class="fc-normal-05-m"><spring:message code="lable.cg0901.zengjiahanghuirenwu"/>:</span><span>${item.unionTaskCount}<spring:message code="lable.cg0901.time"/>/<spring:message code="lable.cg0901.day"/></span></div>
								<div class="left-style"><span class="fc-normal-05-m"><spring:message code="lable.cg0901.zengjishangpinpaimaigeshu"/>:</span><span>${item.auctionMax}<spring:message code="lable.cg0901.body"/></span></div>
								<div class="right-style"><span class="fc-normal-05-m"><spring:message code="lable.cg0901.paimaishangpinshijian"/>:</span><span>${item.auctionTime}<spring:message code="lable.cg0901.hour"/></span></div>
								<div class="clearfix"></div>
							</div>
							<div><span class="system-content"><span class="fc-normal-05-m"><spring:message code="lable.cg0901.keyconsumetimes"/></span>${item.freeConsumeTimes}</span></div>
							<div class="scfm-button-goumai-green">
									<input type="image" class="clickTone1" onclick="buy.call(this,'${item.level}');"
									 src='<p:localurl value="/resources/images/buttons/goumai-green.png"/>'/>
							</div>
						</div>		
						<div class="clearfix"></div>
					</div>
				  </div>
				  </div>
				</div>
			</div>	
		</c:forEach>
	</tags:pagination>
</c:if>
