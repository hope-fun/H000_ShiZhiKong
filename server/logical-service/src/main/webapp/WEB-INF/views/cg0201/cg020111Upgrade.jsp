<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/animation.css?v=1"/>">
<script type="text/javascript">
$(document).ready(function() {	
	$(".back-pve-button").click(function() {
		var setAttrUrl = $(".setattrpoint").val();
		location.href = setAttrUrl+"YES";
	});	
});	

</script>
<div class="content">
	<div class="cg020111upgrade"></div>
	<div class=" menu-medium title-label-03">
		<span class="label-title-attack"><spring:message code="label.CG020111.title"></spring:message></span>
	</div>
	<div class="win-pic-style" >
		<img src='<p:localurl value="/resources/images/xuanchuan/cg020111Upgrade.png"/>'>
	</div>
	<div class="grade-info-style">
		<div class="borderPanel">
			<div class="panelB-header"></div>
			<div class="panelB-body panelB01-height"></div>
			<div class="panelB-footer"></div>
			<div class="border-content">
				<div class="card-assistant npc-padding">
					<div class="npc-pic-width">
						<div>
							<img src='<p:localurl value="/resources/images/npc-2.png"/>'/>
						</div>
					</div>
					<div class="npc-message-width">
						<div class="upgrade-message fc-content-03">
							<div class="grade-info">
								<div class="fc-normal-05-m">
									<span><spring:message code="label.CG020111.level"></spring:message></span><span><c:out value="${levelBefore}"></c:out></span>
								</div>
								<div class="arrow02-style">
									<img src='<p:localurl value="/resources/images/Arrow02.png"/>'>
								</div>
								<div>
									<span class="fc-content-03 ani-upgrade"><c:out value="${level}"></c:out></span>
								</div>
							</div>
							<div class="fc-content-03">
								<span class="fc-normal-05-m"><spring:message code="label.CG020111.attr"></spring:message></span>
								<span>+</span>
								<span class="ani-upgrade"><c:out value="${attValue}"></c:out></span>
							</div>
							<div class="fc-content-03">
								<span class="fc-normal-05-m"><spring:message code="label.CG020111.friendmax"></spring:message></span>
								<span>+</span>
								<span class="ani-upgrade"><c:out value="${friendAdd}"></c:out></span>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- <div>
		<div class="split-01"></div>
	</div> -->
	<c:choose> 
		<c:when test="${fn:contains(upgradeFrom,'TASKBOSS')}">
			<div class="continueButton">
				<img class="clickTone1 back-pve-button"
					src='<p:localurl value="/resources/images/buttons/shuxingdianfenpei-blue-z.png"/>'
				/>
			</div>	
		
      		<div class="continueButton">
					<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020108/index/${getCoinNum}/${getCpoint}/${getExp}/${chapterId}/"/>';event.preventDefault();"/>
			</div>
      	</c:when>
		<c:otherwise>    
			<div class="continueButton">
				<img class="clickTone1 back-pve-button" src='<p:localurl value="/resources/images/buttons/shuxingdianfenpei-blue-z.png"/>'/>
			</div>	
		     
			<div class="continueButton">
			    <c:if test="${!isCreateNext }">
					<img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020104/index/${playerTaskSectionId}/"/>';event.preventDefault();"/>
			    </c:if>
			    <c:if test="${isCreateNext&&nextStory }">
			        <img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020104/next/${isCreateNext}/${nextSection}/${nextStory}/${playerTaskSectionId}"/>';event.preventDefault();"/>
			    </c:if>
			    <c:if test="${isCreateNext&&nextSection }">
			        <img class="clickTone1" src='<p:localurl value="/resources/images/buttons/jixu-green-z.png"/>' onclick="location.href='<p:fullurl value="/cg0201/cg020104/next/${isCreateNext}/${nextSection}/${nextStory}/${playerTaskSectionId}"/>';event.preventDefault();"/>
			    </c:if>
			</div>
		</c:otherwise> 
    </c:choose>
    <input type="hidden" class="setattrpoint" value="<p:fullurl value='/cg0101/cg010105/index/'/>" />
</div>