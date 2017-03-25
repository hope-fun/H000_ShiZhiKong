<%@ tag pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@attribute name="item"
	type="com.artistmobile.kpyx.server.data.service.vo.CardVO"
	required="true" rtexprvalue="true" description="The card object"%>
<%@attribute name="exp" type="java.lang.Long" required="true" rtexprvalue="true"%>
<div class="cardInfo">
	<div class="borderPanel">
		<div class="panelA-header"></div>
		<div class="panelA-body panelA08-height new-height"></div>
		<div class="panelA-footer"></div>
		<div class="border-content">
			<div class="image-pic">
				<img alt=""
					src='<p:cardImg type="big" id="${item.id }"></p:cardImg>'>
			</div>
			<div class="wordsDescription">
				<div class="firstRow">
					<div class="row-left ">

						<div class="gitem icon icon-level move-from-left">
							<span class="fc-normal-01-m"><spring:message
									code="label.cg030102.carddetail.level"></spring:message>:</span> <span>1</span>
						</div>
					</div>

					<div>
						<div class="processing-bar-blue fc-normal-01-m process-bar"
							processbar="${exp}">
							<div class="item-now-exp">
								<table class="process-bar">
									<tbody>
										<tr>
											<td></td>
											<td class=""></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div></div>
				</div>
				<div class="down-list-image"></div>
				<div class="secondRow">
					<div>

						<div class="gitem icon icon-total-fighting-energy move-from-left">
							<span class="fc-normal-02-m"><spring:message
									code="label.cg030102.carddetail.attack"></spring:message>:</span> <span>${item.attack}</span>
						</div>
					</div>

					<div>

						<div class="gitem icon icon-total-shield-energy move-from-left">
							<span class="fc-link"><spring:message
									code="label.cg030102.carddetail.defence"></spring:message>:</span> <span>${item.defence}</span>
						</div>
					</div>
					<div></div>
				</div>
				<div class="up-list-image"></div>
				<div class="defenseNeeded">
					<div class="row-zhxq">
						<div class="gitem icon icon-physicalstrength move-from-left">
							<span class="fc-normal-01-m"><spring:message
									code="label.cg030102.carddetail.strengthrequire"></spring:message>:</span>
							<span>${item.strengthRequire}</span>
						</div>
					</div>

				</div>
				<div class="down-list-image"></div>
				<div class="textDescription  fc-title-02 commonPading03">
					<span>${item.getDescription()}</span>
				</div>

				<div class="fixedPrompt">
					<div class="up-list-image"></div>
					<div class="description-1 fc-withwild ">
						<span>*<spring:message
								code="label.cg030102.carddetail.maincardtips"></spring:message></span>
					</div>
					<div class="down-list-image"></div>
				</div>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

