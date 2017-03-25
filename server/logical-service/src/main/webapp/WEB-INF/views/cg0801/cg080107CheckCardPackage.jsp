<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>

<script type="text/javascript"
	src="<c:url value="/resources/js/cg0801/cg080107.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/CG0801/CG080102.css?v=1"/>">

<script type="text/javascript" language="javascript">
	var packagetype = {
		typeEnum : {
			"general" : "GENERAL",
			"hero" : "HERO",
			"king" : "KING",
			"myth" : "MYTH"
		},
		"activetype" : "${activetype}"
	};

	var tabchange = "<p:fullurl value ="/cg0801/cg080107/tabchange/"/>"
</script>

<c:set var="requestType" value="${header['requestType']}"></c:set>
<div class="content">
	<div class="panel-npc">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="npc-message">
					<div>
						<div class="npc-pic-style">
							<img alt="" src='<p:localurl value="/resources/images/npc-2.png"></p:localurl>'>
						</div>
					</div>
					<div class='npc-info fc-normal-05-m'>
						<c:if test="${packageType eq 'GENERAL' }">
							<span><spring:message code="label.cg080107.general.npcmessage"></spring:message></span>
						</c:if>
						<c:if test="${packageType eq 'HERO' }">
							<span><spring:message code="label.cg080107.hero.npcmessage"></spring:message></span>
						</c:if>
						<c:if test="${packageType eq 'KING' }">
							<span><spring:message code="label.cg080107.king.npcmessage"></spring:message></span>
						</c:if>
						<c:if test="${packageType eq 'MYTH' }">
							<span><spring:message code="label.cg080107.myth.npcmessage"></spring:message></span>
						</c:if>
						
					</div>
					<div></div>
				</div>
			</div>
		</div>
	</div>

	<div class="recruit-button">
		<img class='clickTone1' src="<p:localurl value="/resources/images/buttons/zhaomuqiangliyongbing-z.png"/>" onclick="location.href='<p:fullurl value="${backbutton }"></p:fullurl>';event.preventDefault();"/>
	</div>

	<div class="tab-card-package clearfix card-package-padding02">
		<div>
			<img id="general"
					src="<p:localurl value="/resources/images/buttons/putongkabao-yellow-b.png"/>" class='clickTone1'/>
			<img id="hero"
				src="<p:localurl value="/resources/images/buttons/yingxiongkabao-blue-b.png"/>" class='clickTone1'/>

			<img id="king"
				src="<p:localurl value="/resources/images/buttons/wangzhekabao-blue-b.png"/>" class='clickTone1'/>

			<img id="myth"
				src="<p:localurl value="/resources/images/buttons/shenhuakabao-blue-b.png"/>" class='clickTone1'/>
		</div>
		<div class="split-line"></div>
	</div>



	<c:if test="${empty cards }">
		<div class="align-center">Empty</div>
	</c:if>
	<c:if test="${not empty cards }">
		<div>
			<tags:pagination items="${cards}" id="searchPlayerList" method="GET" renderAjax="false" searchData="${searchData }" paginationUrl="${searchUrl }">
				<c:forEach items="${cards }" var="cardItem">
	
					<div class="panel-02">
						<div class='<cssutils:cardCamp campType="${cardItem.camp}"></cssutils:cardCamp>'>
							<div class="panel-header">
								<span><c:out value="${cardItem.name }"></c:out></span>
								<div class="card_star">
									<c:forEach var="i" begin="1" end="${cardItem.star}"
										step="1">
										<img src="<p:localurl value="/resources/images/star-d.png"/>"></img>
									</c:forEach>
								</div>
	
							</div>
							<div class="panel-body">
								<div class="card-major-body">
									<div class="middle-card-width">
										<div class="card-major-image">
											<img class="img-action"
												src='<p:cardImg type="middle" id="${cardItem.id }"></p:cardImg>' />
										</div>
									</div>
	
	
									<div class="middle-info-width">
										<div class="card-major-desc clearfix">
											<div class="card-major-data">
												<div class="icon icon-level">
													<span><spring:message
															code="label.cg03010101.carddetail.levelMax"></spring:message></span> <span><c:out
															value="${ cardItem.levelMax}" /></span>
												</div>
												<div class="icon icon-physicalstrength">
													<span><spring:message
															code="label.cg03010101.carddetail.strengthrequire"></spring:message></span>
													<span><c:out
															value="${cardItem.strengthRequire }" /></span>
												</div>
												<div class="icon icon-total-fighting-energy">
													<span><spring:message
															code="label.cg03010101.carddetail.attack"></spring:message></span> <span><c:out
															value="${cardItem.attack }" /></span>
												</div>
												<div class="icon icon-total-shield-energy">
													<span><spring:message
															code="label.cg03010101.carddetail.defence"></spring:message></span> <span><c:out
															value="${cardItem.defence }" /></span>
												</div>
												<div></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</tags:pagination>
		</div>
	</c:if>


	<div class="recruit-button">
			<img src="<p:localurl value="/resources/images/buttons/zhaomuqiangliyongbing-z.png"/>" class='clickTone1' onclick="location.href='<p:fullurl value="${backbutton }"></p:fullurl>';event.preventDefault();"/>
	</div>


</div>

