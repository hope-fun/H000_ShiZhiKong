<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@taglib prefix="cards" tagdir="/WEB-INF/tags/cards" %>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG0301/CG030102.css?v=1" />">
<script type="text/javascript">
function download(){
	
		JSInterface.downloadResources("download");

}
</script>


<div class="content cg030102CardDetail">	
	<div class="pageTitle menu-large" >
		<span><spring:message code="label.cg030102.carddetail.title"></spring:message></span>
	</div>
	<div style="margin-top:-20px;"><span class="tipsOfdownload"><spring:message code="label.cg030102.downloadTips"></spring:message></span>
	<span  onclick="download()"class="fc-download fs-underline"><spring:message code="label.cg030102.download"></spring:message></span>
	</div>
	<cards:detail item="${playerCard }"></cards:detail>
	<c:if test="${empty comeFromCG1301}">
	<div class="cardListed">
		<div class="panelA-header"></div>
		<div class="panelA-body panelA13-height">
		<div class="name"><spring:message code="label.cg030102.carddetail.cardequipment"></spring:message></div> 
		<div class="threeSpace threeSpaceHeight">
			<div class="cardOne ">
				<c:if test="${not empty playerCard.playerEquipment1}" >
					<div class="imageBackground">
						<img class ="headPicture" alt="" src="<p:equipImg type="large" id="${playerCard.playerEquipment1.equipmentId}" />"/>
					</div>
					
					<div class="font-height">
						<span>${playerCard.playerEquipment1.name}</span>
					</div>
				
					<a href="<p:fullurl value="/cg0301/cg030102/removeEquipment/${playerCard.id}/${playerCard.playerEquipment1.id}/1"/>" class="confirm_popup" message="<spring:message code="label.cg030102.carddetail.equipmentconfirm"/>">
						<div class="imageButton-xc clickTone1" ></div>
					</a>
					<div class="card-row-upper-space color-orange fc-withwild card-detail-margin">
						<spring:message code="label.cg030102.carddetail.${playerCard.playerEquipment1.additionType}add${playerCard.playerEquipment1.calcMode}" arguments="${playerCard.playerEquipment1.additionValue}" />
					</div>
				</c:if>
				<c:if test="${empty playerCard.playerEquipment1}" >
					<div class="imageBackground">
						<img class ="headPicture" src="<p:localurl value="/resources/images/large-equipment.png"/>" class='clickTone1' onclick='location.href="<p:fullurl value="/cg0301/cg030102/cardDetail/${playerCard.id}" />";event.preventDefault();'>
					</div>
					<div class="font-height">
						<span></span>
					</div>
					<div class="imageButton-xq clickTone1"  onclick='location.href="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCard.id}"/>";event.preventDefault();'></div>
				</c:if> 
			</div>
	
			<div class="cardTwo ">					
				<c:if test="${not empty playerCard.playerEquipment2}" >
					<div class="imageBackground">
						<img class ="headPicture" alt="" src="<p:equipImg type="large" id="${playerCard.playerEquipment2.equipmentId}" />"/>
					</div>
					
					<div class="font-height">
						<span>${playerCard.playerEquipment2.name}</span>
					</div>
				
					<a href="<p:fullurl value="/cg0301/cg030102/removeEquipment/${playerCard.id}/${playerCard.playerEquipment2.id}/2"/>" class="confirm_popup" class='clickTone1' message="<spring:message code="label.cg030102.carddetail.equipmentconfirm"/>">
						<div class="imageButton-xc"></div>
					</a>
					<div class="additionTwo color-orange fc-withwild card-detail-margin">
						<spring:message code="label.cg030102.carddetail.${playerCard.playerEquipment2.additionType}add${playerCard.playerEquipment2.calcMode}" arguments="${playerCard.playerEquipment2.additionValue}" />
					</div>
				</c:if>
				<c:if test="${empty playerCard.playerEquipment2}" >
					<div class="imageBackground">
						<img class ="headPicture" src="<p:localurl value="/resources/images/large-equipment.png"/>">
					</div>
					<div class="font-height">
						<span></span>
					</div>
					<a href="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCard.id}"/>" class='clickTone1'>
					<div class="imageButton-xq"></div>
					</a>
				</c:if>
			</div>
	
			<div class="cardThree">			
				<c:if test="${not empty playerCard.playerEquipment3}" >
					<div class="imageBackground">
						<img class ="headPicture" alt="" src="<p:equipImg type="large" id="${playerCard.playerEquipment3.equipmentId}" />"/>
					</div>
					
					<div class="font-height">
						<span>${playerCard.playerEquipment3.name}</span>
					</div>
				
					<a href="<p:fullurl value="/cg0301/cg030102/removeEquipment/${playerCard.id}/${playerCard.playerEquipment3.id}/3"/>" class="confirm_popup clickTone1" message="<spring:message code="label.cg030102.carddetail.equipmentconfirm"/>">
						<div class="imageButton-xc"></div>
					</a>
					<div class=" card-row-upper-space color-orange fc-withwild card-detail-margin">
						<spring:message code="label.cg030102.carddetail.${playerCard.playerEquipment3.additionType}add${playerCard.playerEquipment3.calcMode}" arguments="${playerCard.playerEquipment3.additionValue}" />
					</div>
				</c:if>
				<c:if test="${empty playerCard.playerEquipment3}" >
					<div class="imageBackground">
						<img class ="headPicture" src="<p:localurl value="/resources/images/large-equipment.png"/>">
					</div>
					<div class="font-height">
						<span></span>
					</div>
					<a href="<p:fullurl value="/cg0602/cg060201/index?playerCardId=${playerCard.id}"/>" class='clickTone1'>
					<div class="imageButton-xq"></div>
					</a>
				</c:if>
			</div>
			<div class="clearfix"></div>
		</div>
	
		<div class="clearfix"></div>
		<div class="neededStrength">
				<div class= "row-xq">
					<div class="labelOne" > 
						<div class="gitem icon icon-physicalstrength">
							<span class= "fc-normal-01-m "><spring:message code="label.cg030102.carddetail.strengthrequire"></spring:message>:</span>
							<span>${playerCard.strengthRequire}</span>
						</div>
					</div>
			
					<div class= "labelTwo"> 
						<div class="gitem icon icon-level-arrow1">
							<span>${playerCard.strengthRequireAdded}</span>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			
				 <div class= "row-xq">
					<div class="labelOne" > 
						<div class="gitem icon icon-total-fighting-energy">
							<span class= "fc-normal-02-m "><spring:message code="label.cg030102.carddetail.attack"></spring:message>:</span>
							<span>${playerCard.attack}</span>
						</div>
					</div>
			
					<div class= "labelTwo"> 
						<div class="gitem icon icon-level-arrow2">
							<span>${playerCard.attackAdded}</span>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="row-xq">
					<div class="labelOne"> 
						<div class="gitem icon icon-total-shield-energy">
							<span class= "fc-normal-04-m "><spring:message code="label.cg030102.carddetail.defence"></spring:message>:</span>
							<span>${playerCard.defence}</span>
						</div>
					</div>
			
					<div class= "labelTwo"> 
						<div class="gitem icon icon-level-arrow3">
							<span>${playerCard.defenceAdded}</span>
						</div>
					</div>
					<div class="clearfix"></div>	
				</div> 
			</div>
			<div class="clearfix"></div>
			<div>
				<div class="div1">
					<span class="fc-content-01"><spring:message code="label.cg030102.suitadded"></spring:message></span>
				</div>
				<img src="<p:localurl value="/resources/images/line-split-down.png"/>"/>
				<div class="div2">
					<c:if test="${mountSuit }">
						<span class="fc-normal-06-l">${suitDescription }</span>
					</c:if>
					<c:if test="${not mountSuit }">
						<span class="fc-normal-06-l">&nbsp;</span>
					</c:if>
				</div>
			</div>
			</div>
			<div class="panelA-footer"></div>
	</div>

	<div class="borderImage">
		<img src="<p:localurl value="/resources/images/panel-split.png"/>"></img>
	</div>

	<div class="buttons">
		<c:if test="${playerCard.isMain == true}" >
			<div class= "buttonOne button_gray">
				<span><spring:message code="label.cg030102.carddetail.setmaincard"></spring:message></span>
			</div>
		</c:if>
		<c:if test="${playerCard.isMain == false}" >
			<div class= "buttonOne clickTone1" onclick="location.href='<p:fullurl value="/cg0301/cg030102/setMainCard/${playerCard.id}"/>';">
				<span><spring:message code="label.cg030102.carddetail.setmaincard"></spring:message></span>
			</div>
		</c:if>
		<a href="<p:fullurl value="/cg0301/cg030101/index"/>">
			<div class= "buttonOne clickTone1">
				<span><spring:message code="label.cg030102.carddetail.switchcard"></spring:message></span>
			</div>
		</a>
		
		<c:if test="${not empty playerCard.playerEquipmentId1 or not empty playerCard.playerEquipmentId2 or not empty playerCard.playerEquipmentId3 or playerCard.step == 4}" >
		<div class= "buttonOne gray-button button_gray" class="tips_popup" message="<spring:message code="label.cg030102.carddetail.equipmenttips"/>">
			<span><spring:message code="label.cg030102.carddetail.evolvecard"></spring:message></span>
		</div>
		</c:if>
		<c:if test="${empty playerCard.playerEquipmentId1 and empty playerCard.playerEquipmentId2 and empty playerCard.playerEquipmentId3 and playerCard.step != 4}" >
		<div class= "buttonOne clickTone1" onclick="location.href='<p:fullurl value="/cg0302/cg030207/index?evolutionCardId=${playerCard.id}"/>';">
			<span><spring:message code="label.cg030102.carddetail.evolvecard"></spring:message></span>
		</div>
		</c:if>
		<div class= "buttonOne clickTone1" onclick="location.href='<p:fullurl value="/cg0302/cg030201/index?playerCardId=${playerCard.id}"/>';">
			<span><spring:message code="label.cg030102.carddetail.upgradecard"></spring:message></span>
		</div>
	</div>
	</c:if>
</div>
