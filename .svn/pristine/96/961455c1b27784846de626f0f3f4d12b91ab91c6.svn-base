<%@ tag pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="item" type="com.artistmobile.kpyx.server.data.service.vo.CardVO" required="true" rtexprvalue="true" description="The card object" %>
<%@attribute name="exp" type="java.lang.Long" required="true" rtexprvalue="true"%>
<div class="panel-03">	
	<div class='<cssutils:cardCamp campType="${item.camp}"/>'>
		<div class="panel-header-new">
			<div class="item-name-style">
				<span><c:out value="${item.name}"></c:out></span>
			</div>
			<div class="item-stars-style">
				<div class="card-star">
					<c:forEach begin="1" step="1" end="${item.star}" var="idx">
						<img alt=""
							src="<p:localurl value="/resources/images/star-d.png"/>" />
					</c:forEach>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="panel-body">
			<div class="card-assistant">
				<div class="card-pic-style">
					<div class="card-assistant-image">
						<img alt=""
							src="<p:cardImg type="small" id="${item.id}"></p:cardImg>" />
					</div>
				</div>
				<div class="equips-width">
					<div class="card-assistant-equipment">
						<div class="card-equipment ">
							<div class="one-equipment icon-default margin-style12">
								
									<img />
							</div>
							<div class="one-equipment icon-default margin-style12">
								
									<img />
							</div>
							<div class="one-equipment icon-default margin-style12">
								<img />
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="card-info-style">
					<div class="card-assistant-desc">
						<div class="top-right-panel">
							<div class="item-exp-style">
								<div class="archives-item icon icon-level icon-location">
									<span><c:out value="1" /></span>
								</div>
							</div>
							<div class="item-now-exp align-center">
								<div class="processing-bar-blue fc-normal-01-m"
									processbar="<c:out value="${exp}" />"></div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="middle-right-panel">
							<div>
								<div
									class="archives-item icon icon-physicalstrength icon-location">
									<span><c:out value="${item.strengthRequire }" /></span>
								</div>
							</div>
							<div>
								<div
									class="archives-item icon icon-total-fighting-energy icon-location">
									<span><c:out value="${item.attack }" /></span>
								</div>
							</div>
							<div>
								<div
									class="archives-item icon icon-total-shield-energy icon-location">
									<span><c:out value="${item.defence}" /></span>
								</div>
							</div>
							<div></div>
						</div>
						
						<div></div>
					</div>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>