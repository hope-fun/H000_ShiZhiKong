<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="treasure" tagdir="/WEB-INF/tags/treasure"%>
<script type="text/javascript">
	function goToMore(index){
		var form = document.forms[0];
		form.action = '<p:fullurl value="/cg0101/cg010104/index"/>';
		document.getElementsByName("pageIndex")[0].value=index;
		form.submit();
	}
</script>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG0101/CG0101.css?v=1"/>">
<form>
	<input type="hidden" name="id" /> <input type="hidden" name="pageIndex" />
	<input type="hidden" name="pageSize" value="10" />
	<div class="content">
		<div class=" menu-medium title-label-03">
			<span><spring:message code="label.cg010104.title"></spring:message></span>
		</div>
		<c:if test="${empty viewDatas }">
			<div class="align-center"></div>
		</c:if>
		<c:if test="${not empty viewDatas }">
			<c:forEach items="${viewDatas }" var="fightResultViewData">
				<div class="panel-03">
					<div
						class='<cssutils:cardCamp campType="${fightResultViewData.camp}"></cssutils:cardCamp>'>
						<div class="panel-header">
							<div class="div1">
								<span>${fightResultViewData.name}</span>
							</div>
							<div class="div2">
								<span class="button-large"> <c:if
										test="${fightResultViewData.playerFightResultVo.result eq 'LOSE'}">
										<spring:message code="label.cg010104.faild"></spring:message>
									</c:if> <c:if
										test="${fightResultViewData.playerFightResultVo.result eq 'WIN'}">
										<spring:message code="label.cg010104.success"></spring:message>
									</c:if>
								</span>
							</div>
							<div class="system-content-other div3">
								<!--<c:if test="${ fightResultViewData.vipLevel >0 }">
								<img src="<p:localurl value="/resources/images/viplevel/${fightResultViewData.vipLevel}.png"/>" />
							</c:if>	-->
								<c:if test="${fightResultViewData.day != 0}">
									<span>${fightResultViewData.day}<spring:message
											code="label.cg010104.day"></spring:message></span>
								</c:if>
								<c:if test="${fightResultViewData.day == 0}">
									<c:if test="${fightResultViewData.hour < 1}">
										<span><spring:message code="label.cg010104.moment"></spring:message></span>
									</c:if>
									<c:if test="${fightResultViewData.hour >= 1}">
										<span>${fightResultViewData.hour}<spring:message
												code="label.cg010104.hour"></spring:message></span>
									</c:if>
								</c:if>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-body">
							<div class="card-assistant">
								<div class="div1">
									<div class="card-assistant-image">
										<img
											src='<p:cardImg type="small" id="${fightResultViewData.playerCardVO.cardId }"></p:cardImg>' />
									</div>
								</div>
								<div class="div2">
									<div class="card-assistant-equipment">
										<div class="card-equipment ">
											<div class="one-equipment icon-location">
												<c:if
													test="${not empty fightResultViewData.playerCardVO.playerEquipmentId1}">
													<img
														src="<p:equipImg type="small" id="${fightResultViewData.playerCardVO.playerEquipment1.equipmentId }" />" />
												</c:if>
												<c:if
													test="${empty fightResultViewData.playerCardVO.playerEquipmentId1}">
													<img
														src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</c:if>
											</div>
											<div class="one-equipment icon-location">
												<c:if
													test="${not empty fightResultViewData.playerCardVO.playerEquipmentId2}">
													<img
														src="<p:equipImg type="small" id="${fightResultViewData.playerCardVO.playerEquipment2.equipmentId}" />" />
												</c:if>
												<c:if
													test="${empty fightResultViewData.playerCardVO.playerEquipmentId2}">
													<img
														src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</c:if>
											</div>
											<div class="one-equipmenticon-location">
												<c:if
													test="${not empty fightResultViewData.playerCardVO.playerEquipmentId3}">
													<img
														src="<p:equipImg type="small" id="${fightResultViewData.playerCardVO.playerEquipment3.equipmentId }" />" />
												</c:if>
												<c:if
													test="${empty fightResultViewData.playerCardVO.playerEquipmentId3}">
													<img
														src="<p:localurl value="/resources/images/icons/default.png"/>" />
												</c:if>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="div3">
									<div class="card-assistant-desc card-assistant-desc-cg010104">
										<div class="div4">
											<div class="lose-win-message">
												<c:if
													test="${fightResultViewData.playerFightResultVo.result eq 'LOSE'}">
													<span class="fc-normal-04-m"><spring:message
															code="label.cg010104.lose"></spring:message></span>
												</c:if>
												<c:if
													test="${fightResultViewData.playerFightResultVo.result eq 'WIN'}">
													<span class="fc-normal-02-m"><spring:message
															code="label.cg010104.get"></spring:message></span>
												</c:if>
											</div>
											<div class="level-info">
												<div class="archives-item icon icon-level icon2">
													<span>${(empty
														fightResultViewData.level)?0:fightResultViewData.level }</span>
												</div>
											</div>
											<div class="icon div10 icon2">
												<span> <c:if
														test="${fightResultViewData.playerFightResultVo.isInStrive == true}">
														<spring:message code='label.cg010103.hegemony' />
											           </c:if>
												</span>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="div7">
											<div class="icon icon-crystal div8 icon2">
												<span> <c:if
														test="${fightResultViewData.playerFightResultVo.result eq 'LOSE'}">
														<c:if
															test="${not empty fightResultViewData.playerFightResultVo.loseSilverCoin}">
														${fightResultViewData.playerFightResultVo.loseSilverCoin.toString().length() > 5 ? fightResultViewData.playerFightResultVo.loseSilverCoin.toString().substring(0,5).concat('...'):fightResultViewData.playerFightResultVo.loseSilverCoin}
													</c:if>
														<c:if
															test="${empty fightResultViewData.playerFightResultVo.loseSilverCoin}">
														0
													</c:if>
													</c:if> <c:if
														test="${fightResultViewData.playerFightResultVo.result eq 'WIN'}">
														<c:if
															test="${not empty fightResultViewData.playerFightResultVo.getSilverCoin}">
														${fightResultViewData.playerFightResultVo.getSilverCoin.toString().length() > 5 ? fightResultViewData.playerFightResultVo.getSilverCoin.toString().substring(0,5).concat('...'):fightResultViewData.playerFightResultVo.getSilverCoin}
													</c:if>
														<c:if
															test="${empty fightResultViewData.playerFightResultVo.getSilverCoin}">
														0
													</c:if>
													</c:if>
												</span>

											</div>
											<div class="cg010104-fight-flag">
												<div class="div11">
													<c:if
														test="${not empty fightResultViewData.treasureFragmentVO}">
														<treasure:treasureImage
															treasureFragmentVO="${fightResultViewData.treasureFragmentVO}"
															imageSize="small"></treasure:treasureImage>
													</c:if>
												</div>
												<div class="div12 cg010104-flag-font">
													<c:if
														test="${not empty fightResultViewData.treasureFragmentVO}">
														<span>&nbsp;x1</span>
													</c:if>
												</div>
											</div>
											<div style="float: right;">
												<img class="fightResultButtons fightResultMargin clickTone1"
													src="<p:localurl value="/resources/images/buttons/chakanxiangqing-green.png"/>"													
													onclick="location.href='<p:fullurl value="/cg0101/cg010104/fightResultDetail/${fightResultViewData.id}/"/>';event.preventDefault();" />
											</div>
											<div class="clearfix"></div>
											
											<div class="clearfix"></div>
										</div>
										<div class="div13">
											<div class="icon icon-conquest-points div14 icon2">
												<span> <c:if
														test="${fightResultViewData.playerFightResultVo.result eq 'LOSE'}">${fightResultViewData.playerFightResultVo.loseCpoints.toString().length() > 5?fightResultViewData.playerFightResultVo.loseCpoints.toString().substring(0,5).concat('...'):fightResultViewData.playerFightResultVo.loseCpoints}</c:if>
													<c:if
														test="${fightResultViewData.playerFightResultVo.result eq 'WIN'}">${fightResultViewData.playerFightResultVo.getCpoints.toString().length() > 5?fightResultViewData.playerFightResultVo.getCpoints.toString().substring(0,5).concat('...'):fightResultViewData.playerFightResultVo.getCpoints}</c:if>
												</span>
											</div>
											<div class="div15 cg010104-fight-equip">
												<c:if
													test="${not empty fightResultViewData.playerFightResultVo.equipmentId}">
													<div class="cg010104-equip-img"><img 
														src="<p:equipImg type="small" id="${fightResultViewData.playerFightResultVo.equipmentId}" />" /></div>
													<div class="cg010104-equip-font"><span>&nbsp;x1</span></div>
												</c:if>
											</div>
											
											<div style="float: right;">
												<img src="<p:localurl value="/resources/images/buttons/zhandouhuifang-blue.png"/>"
													class="fightResultButtons clickTone1"
													onclick="location.href='<p:fullurl value="/cg0101/cg010104/fightReview/${fightResultViewData.playerFightResultVo.id}"/>';event.preventDefault();" />
											</div>
											<div class="clearfix"></div>
										</div>
										<div></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
		<c:if
			test="${(totalSize - fightViewData.pageSize * fightViewData.pageIndex) > 10}">
			<div class="commonPading01 button-chakangengduo">
				<div>
					<img
						src="<p:localurl value="/resources/images/buttons/chankangengduo-green-z.png"/>"
						class="clickTone1"
						onclick='goToMore(${fightViewData.pageIndex+1})' />
				</div>
			</div>
		</c:if>
	</div>
</form>