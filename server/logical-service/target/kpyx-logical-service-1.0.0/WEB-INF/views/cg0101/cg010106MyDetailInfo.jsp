<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>">
<c:set var="noUnion"><spring:message code="label.cg010106.zanwu" text="暂无"></spring:message></c:set>

<div class="content">
	<div class="panelA-header"></div>
	<div class="panelA-body panelA14-height panel-mydetail-height">
		<div class="split-item-down">
			<span><spring:message code="label.cg010106.wodexiangqing" text="我的详情"></spring:message></span>
			<img class="split-down-width" src="<p:localurl value="/resources/images/line-split-down.png"/>" />
		</div>
		<div class="icon icon-jueseming">
		    <span class="fc-normal-05-l"><spring:message code="label.cg010106.jueseming" text="角色名"></spring:message>:</span>
		    <span><c:out value="${playerVO.name}"></c:out></span>
		</div>
		<div class="icon icon-union">
			<span class="fc-normal-05-l"><spring:message code="label.cg010106.lianmeng" text="联盟"></spring:message>:</span>
			<c:if test="${empty unionName }">
				<span><c:out value="${noUnion }"></c:out></span>
			</c:if>
			<c:if test="${not empty unionName }">
				<span onclick="location.href='<p:fullurl value="/cg1201/cg120112/index"/>'" style="text-decoration: underline;"><c:out value="${unionName }"></c:out></span>
			</c:if>
		</div>
		<div class="icon icon-level">
			<span class="fc-normal-05-l"><spring:message code="label.cg010106.dengji" text="等级"></spring:message>:</span>
			<span><c:out value="${playerVO.level}"></c:out></span>
			<a class="fc-normal-06-l a-upperlevel" href="<p:fullurl value="/cg0901/cg090105/index"/>"><spring:message code="label.cg010103.vipshengji"></spring:message></a>
			<c:if test="${not empty playerVO.vipLevel}">
				<img class="img-viplevel" alt="" src="<p:localurl value="/resources/images/viplevel/${playerVO.vipLevel }.png"/>">
			</c:if>
			
		</div>
		<div class="icon-mercenary icon">
			<span class="fc-normal-05-l"><spring:message code="label.cg010103.yongbingshuliang"></spring:message></span> 
			 <a href='<p:fullurl value="/cg0301/cg030101/index"/>' class="fc-normal-01-l">  
				<span class="fc-content-02 " id="a-friends">
					<c:out value="${playerVO.cardsCount }"></c:out>
				</span>
				<span>/</span> <span><c:out value="${playerVO.cardsMax }"></c:out></span>
			</a>
		</div>
		<div class="icon icon-diamond">
			<span class="fc-normal-05-l"><spring:message code="label.cg010103.zuanshi"></spring:message></span>
			<span><c:out value="${playerVO.goldCoin }"></c:out></span>
			<a class="fc-normal-06-l a-recharge" href="<p:fullurl value="/cg0901/cg090101/index"/>"><spring:message code="label.cg010103.chongzhi"></spring:message></a>
		</div>
		<div class="icon icon-crystal">
			<span class="fc-normal-05-l"><spring:message code="label.cg010103.shuijing"></spring:message></span>
			<span><c:out value="${playerVO.silverCoin }"></c:out></span>
		</div>
		<div class="icon icon-actionpower">
			<span class="fc-normal-05-l"><a class="fc-normal-04-l" style="text-decoration:none" href="<p:fullurl value="/cg0901/cg090103/index"/>"><spring:message code="label.cg010103.xingdongnengliang"></spring:message></a>:</span>
			<span><c:out
					value="${playerVO.actionPower }"></c:out></span>
					<span>/</span> <span><c:out value="${playerVO.actionPowerMax }"></c:out></span>
		</div>
		<div class="icon icon-fighting-energy">
			<span class="fc-normal-05-l"><a class="fc-normal-04-l" style="text-decoration:none" href="<p:fullurl value="/cg0901/cg090103/index"/>"><spring:message code="label.cg010103.zhandounengliang"></spring:message></a>:</span>
			<span><c:out
					value="${playerVO.attackPower }"></c:out></span>
					<span>/</span> <span><c:out value="${playerVO.attackPowerMax }"></c:out></span>
		</div>
		<div class="icon icon-shield-energy">
			<span class="fc-normal-05-l"><a class="fc-normal-04-l" style="text-decoration:none" href="<p:fullurl value="/cg0901/cg090103/index"/>"><spring:message code="label.cg010103.hudunnengliang"></spring:message></a>:</span>
			<span><c:out
					value="${playerVO.defencePower }"></c:out></span>
					<span>/</span> <span><c:out value="${playerVO.defencePowerMax }"></c:out></span>
		</div>
		<div class="icon icon-comrades">
			<span class="fc-normal-05-l"><a class="fc-normal-04-l" style="text-decoration:none" href="<p:fullurl value="/cg0501/cg050101/index"/>"><spring:message code="label.cg010106.haoyou" text="好友"></spring:message></a>:</span>
			<span><c:out value="${playerVO.friendsNum }"></c:out></span>
			<span>/</span> <span><c:out value="${playerVO.friendsMax }"></c:out></span>
		</div>
		<div class="icon icon-recruiting-points">
			<span class="fc-normal-05-l"><spring:message code="label.cg010103.zhaomudianshu"></spring:message></span>
			<span><c:out
					value="${playerVO.friendPoints }"></c:out></span>
		</div>
		<div class="icon icon-conquest-points">
			<div class="conquest-points">
				<span class="fc-normal-05-l"><spring:message code="label.cg010103.zhengfudianshu"></spring:message></span>
				<span><c:out value="${playerVO.conquestPoints }"></c:out></span>
			</div>
			<div>
				<span class="fc-normal-05-l"><spring:message code="label.cg010106.rongyubi" text="荣誉币"></spring:message>:</span>
				<span><c:out value="${empty playerVO.honorPoints ? 0 : playerVO.honorPoints}"></c:out></span>
			</div>
		</div>
		<div class="attr-text">
			<span class="fc-normal-05-l"><spring:message code="label.cg010106.paimaihangshangjiashuliang" text="拍卖行上架数量"></spring:message>:</span>
			<span><c:out value="${auctionAmount }"></c:out></span>
			<span>/</span> <span><c:out value="${maxAuctionAmount }"></c:out></span>
		</div>
		<div class="attr-text">
			<div class="attr-name"><span class="fc-normal-05-l"><spring:message code="label.cg010106.shuxingjiacheng" text="属性加成"></spring:message>:</span></div>
			<div class="attr-content">
				<div class="attr">
					<div class="attr-l">
						<span><spring:message code="label.cg010106.lianxudenglu"></spring:message></span>
						<span class="fc-normal-06-l"><c:out value="${playerVO.lastContinueRegisterDay }"></c:out></span>
						<span><spring:message code="label.cg010106.tian"></spring:message></span>
					</div>
					<div class="attr-r">
						<span><spring:message code="label.cg010106.zhandouli" text="战斗力"></spring:message><spring:message code="label.cg010106.hudunli" text="护盾力"></spring:message></span>
						<span class="fc-normal-06-l">+<c:out value="${playerVO.lastContinueRegisterDay }"></c:out>%</span>
					</div>
				</div>
				<div class="attr">
					<div class="attr-l">
						<span><spring:message code="label.cg010106.curattackpower" text="当前战斗能量"></spring:message></span>
						<span class="fc-normal-06-l"><c:out value="${playerVO.attackPower }"></c:out><spring:message code="label.cg010106.dian" text="点"></spring:message></span>
					</div>
					<div class="attr-r">
						<span><spring:message code="label.cg010106.zhandouli" text="战斗力"></spring:message></span>
						<span class="fc-normal-06-l">+<c:out value="${playerVO.attackPower / 10 }"></c:out>%</span>
					</div>
				</div>
				<div class="attr">
					<div class="attr-l">
						<span><spring:message code="label.cg010106.curdefencepower" text="当前护盾能量"></spring:message></span>
						<span class="fc-normal-06-l"><c:out value="${playerVO.defencePower }"></c:out><spring:message code="label.cg010106.dian" text="点"></spring:message></span>
					</div>
					<div class="attr-r">
						<span><spring:message code="label.cg010106.hudunli" text="护盾力"></spring:message></span>
						<span class="fc-normal-06-l">+<c:out value="${playerVO.defencePower / 10 }"></c:out>%</span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="attr-text">
			<span class="fc-normal-05-l"><spring:message code="label.cg010106.besttotalattack" text="最佳阵容总战斗力"></spring:message>:</span>
			<span><c:out value="${totalAttackAdded }"></c:out></span>
		</div>
		<div class="attr-text">
			<span class="fc-normal-05-l attr-defence"><spring:message code="label.cg010106.totaldefence" text="总护盾力"></spring:message>:</span>
			<span><c:out value="${totalDefenceAdded }"></c:out></span>
		</div>
	</div>
	<div class="panelA-footer"></div>
	
	<div class="btn-comfirm">
		<img class="clickTone1" src="<p:localurl value='/resources/images/buttons/queding-green-z.png'/>" 
			onclick="location.href='<p:fullurl value="/cg0101/cg010103/index"/>'"/>
	</div>
</div>