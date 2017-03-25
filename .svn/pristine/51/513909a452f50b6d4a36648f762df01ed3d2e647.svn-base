
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld" %>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<%@attribute name="targetMirror" type="java.util.List" required="true" rtexprvalue="true" description="The targetMirror" %>

	<div class="animation-activity" >
		<div class="center-site ani-style">

			<div class="card-group-div">
			
				<c:if test='${targetMirror[0].defence>0}'>
			
					<div  style="display:none" id="imgdiv_${targetMirror[0].id}" >
						<img class="targetMirrorImg" id ="img_${targetMirror[0].id}" src="<p:localurl value="/resources/images/union/a.png"/>" onclick="getTargetMirror(this);"/>
					</div>
					<div  style="display:block" id="img1div_${targetMirror[0].id}">
						<img class="union-sate1" id ="img1_${targetMirror[0].id}" src="<p:localurl value="/resources/images/union/a1.png"/>" />
					</div>
				
				</c:if>
					<div name ="imgdivgary" id="imgdivgary_${targetMirror[0].id}" style="display: <c:if test='${targetMirror[0].defence<=0}'>block</c:if><c:if test='${targetMirror[0].defence>0}'>none</c:if>" >
						<img class="button_gray"  src="<p:localurl value="/resources/images/union/a.png"/>" />
						<div>
							<span class="destory-font" class="fc-normal-targetMirror-m"><spring:message code="label.cg120122.esatelliteName.destroy"/></span>
						</div>
					</div>
				<div>
					<span><spring:message code="label.cg120122.asatelliteName"/></span>
				</div>
				<div>
					<span><spring:message code="label.cg120113.union.build.level"/>:</span><span>${targetMirror[0].level }</span>
				</div>
			</div>
	      

			<div class="system-content-bold union-sate2">
				<div class="target-mirror">
					<div style="display:<c:if test='${targetMirror[1].defence>0}'>block</c:if><c:if test='${targetMirror[1].defence<=0}'>none</c:if>" id="imgdiv_${targetMirror[1].id}">
						<img class="targetMirrorImg" id ="img_${targetMirror[1].id}" src="<p:localurl value="/resources/images/union/b.png"/>" onclick="getTargetMirror(this);"/>
					</div>
					
					<div style="display:none" id="img1div_${targetMirror[1].id}">
						<img class="union-sate1" id ="img1_${targetMirror[1].id}" src="<p:localurl value="/resources/images/union/b1.png"/>" />
					</div>
					<div name ="imgdivgary" id="imgdivgary_${targetMirror[1].id}" style="display: <c:if test='${targetMirror[1].defence<=0}'>block</c:if><c:if test='${targetMirror[1].defence>0}'>none</c:if>" >
						<img  class="button_gray"  src="<p:localurl value="/resources/images/union/b.png"/>" />
						<div>
						<span class="destory-font" class="fc-normal-targetMirror-m"><spring:message code="label.cg120122.esatelliteName.destroy"/></span>
						</div>
					</div>
					<div>
						<span class="fc-normal-01-m"><spring:message code="label.cg120122.bsatelliteName"/></span>
					</div>
					<div>
						<span><spring:message code="label.cg120113.union.build.level"/>:</span><span>${targetMirror[1].level }</span>
					</div>
				</div>

				<div class="target-mirror-right">
					<div style="display:<c:if test='${targetMirror[2].defence>0}'>block</c:if><c:if test='${targetMirror[2].defence<=0}'>none</c:if>" id="imgdiv_${targetMirror[2].id}">
						<img class="targetMirrorImg" id ="img_${targetMirror[2].id}" src="<p:localurl value="/resources/images/union/c.png"/>" onclick="getTargetMirror(this);"/>
					</div>
					<div style="display:none" id="img1div_${targetMirror[2].id}">
						<img class="union-sate1" id ="img1_${targetMirror[2].id}" src="<p:localurl value="/resources/images/union/c1.png"/>" />
					</div>
					<div name ="imgdivgary" id="imgdivgary_${targetMirror[2].id}" style="display: <c:if test='${targetMirror[2].defence<=0}'>block</c:if><c:if test='${targetMirror[2].defence>0}'>none</c:if>" >
						<img  class="button_gray"  src="<p:localurl value="/resources/images/union/c.png"/>" />
						<div>
						<span class="destory-font" class="fc-normal-targetMirror-m"><spring:message code="label.cg120122.esatelliteName.destroy"/></span>
						</div>
					</div>
					<div>					
						<span class="fc-normal-02-m"><spring:message code="label.cg120122.csatelliteName"/></span>
					</div>
					<div>
						<span><spring:message code="label.cg120113.union.build.level"/>:</span><span>${targetMirror[2].level}</span>
					</div>
				</div>
			</div>

			<div class="system-content-bold union-sate3">
				<div class="union-d-style">
					<div style="display:<c:if test='${targetMirror[3].defence>0}'>block</c:if><c:if test='${targetMirror[3].defence<=0}'>none</c:if>" id="imgdiv_${targetMirror[3].id}">
						<img class="targetMirrorImg" id ="img_${targetMirror[3].id}" src="<p:localurl value="/resources/images/union/d.png"/>" onclick="getTargetMirror(this);"/>
					</div>
					<div style="display:none" id="img1div_${targetMirror[3].id}">
						<img class="union-sate1" id ="img1_${unionWarTargetMirrorViewDataList[3].id}" src="<p:localurl value="/resources/images/union/d1.png"/>" />
					</div>
					<div  name ="imgdivgary" id="imgdivgary_${targetMirror[3].id}" style="display: <c:if test='${targetMirror[3].defence<=0}'>block</c:if><c:if test='${targetMirror[3].defence>0}'>none</c:if>" >
						<img  class="button_gray"  src="<p:localurl value="/resources/images/union/d.png"/>" />
						<div>
						<span class="destory-font" class="fc-normal-targetMirror-m"><spring:message code="label.cg120122.esatelliteName.destroy"/></span>
						</div>
					</div>
					<div>
						<span class="fc-link"><spring:message code="label.cg120122.dsatelliteName"/></span>
					</div>
					<div>
						<span><spring:message code="label.cg120113.union.build.level"/>:</span><span>${targetMirror[3].level}</span>
					</div>
				</div>
				<div class="union-d-style">
					<div style="display:<c:if test='${targetMirror[4].defence>0}'>block</c:if><c:if test='${targetMirror[4].defence<=0}'>none</c:if>" id="imgdiv_${targetMirror[4].id}">
						<img class="targetMirrorImg" id ="img_${targetMirror[4].id}" src="<p:localurl value="/resources/images/union/e.png"/>" onclick="getTargetMirror(this);"/>
					</div>
					<div style="display:none" id="img1div_${targetMirror[4].id}">
						<img class="union-sate1" id ="img1_${targetMirror[4].id}" src="<p:localurl value="/resources/images/union/e1.png"/>" />
					</div>
					<div name ="imgdivgary" id="imgdivgary_${targetMirror[4].id}" style="display: <c:if test='${targetMirror[4].defence<=0}'>block</c:if><c:if test='${targetMirror[4].defence>0}'>none</c:if>" >
					<img  class="button_gray"  src="<p:localurl value="/resources/images/union/e.png"/>" />
						<div>
							<span class="destory-font"class="fc-normal-targetMirror-m"><spring:message code="label.cg120122.esatelliteName.destroy"/></span>
						</div>
					</div>
					<div>
						<span class=" fc-normal-06-m"><spring:message code="label.cg120122.esatelliteName"/></span>
					</div>
					<div>
						<span><spring:message code="label.cg120113.union.build.level"/>:</span><span>${targetMirror[4].level}</span>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	
	<div class="pro-bars clearfix">
		<div>
			<div class="menu-medium vip-sys-defence" ><spring:message code="label.cg120302.vipsystem.defence"/>:</div>
			<div class="pro-bars-width">
				<div id = "divgrowingPercent" class="processing-bar-blue fc-normal-01-m" processbar="${targetMirror[0].growingPercent}"></div>
				<div class="pro-bar-num clearfix">
					<span id="defence">${targetMirror[0].defence}</span> <span>/</span> <span id="defenceMax">${targetMirror[0].defenceMax}</span>
				</div>
			</div>
		</div>
	</div>
	


