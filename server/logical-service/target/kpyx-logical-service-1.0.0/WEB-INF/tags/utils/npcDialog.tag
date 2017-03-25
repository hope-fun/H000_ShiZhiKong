<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="imageType" type="java.lang.String" required="true" rtexprvalue="true" description="NPC image : 1 | 2 | 3 | 4" %>
<%@attribute name="dialogVal" type="java.lang.String" required="true" rtexprvalue="true" description="NPC message url" %>
<%@attribute name="dialogType" type="java.lang.String" required="true" rtexprvalue="true" description="NPC message type : msgVal | msgKey" %>

<div style="width: 100%;">
	<div class="borderPanel">
		<div class="panelB-header"></div>
		<div class="panelB-body panelB01-height"></div>
		<div class="panelB-footer"></div>
	
		<div class="border-content">
			<div class="npc-content">
				<div class="npcImg">
					<c:if test="${imageType eq '1' }">
						<img alt="npc1" src="<p:localurl value='/resources/images/npc-1.png' />" >
					</c:if>
					<c:if test="${imageType eq '2' }">
						<img alt="npc2" src="<p:localurl value='/resources/images/npc-2.png' />" >
					</c:if>
					<c:if test="${imageType eq '3' }">
						<img alt="npc3" src="<p:localurl value='/resources/images/npc-3.png' />" >
					</c:if>
					<c:if test="${imageType eq '4' }">
						<img alt="npc4" src="<p:localurl value='/resources/images/npc-4.png' />" >
					</c:if>
				</div>
				<div class="dialog dialog-font">
					<c:if test="${dialogType eq 'msgKey' }">
						<spring:message code="${dialogVal }" />
					</c:if>
					
					<c:if test="${dialogType eq 'msgVal' }">
						<c:out value="${dialogVal }" />
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>