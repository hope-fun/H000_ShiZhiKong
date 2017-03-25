<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="<p:fullurl value="/resources/css/CG1401.css?v=1"/>">

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1401.title"/></span>
	</div>
	<div class="clearfix"></div>
	<div class="helper-info">
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#playercamp_race"/>';event.preventDefault();"><span><spring:message code="label.cg1401.playercamp_race"/></span></div>	
			</div>
		</div>
		
		<div>
			<div class="help-home01">	
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#racefeatures"/>';event.preventDefault();"><span><spring:message code="label.cg1401.racefeatures"/></span></div>			
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#mercenaryrestrain"/>';event.preventDefault();"><span><spring:message code="label.cg1401.mercenaryrestrain"/></span></div>
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#campforrace"/>';event.preventDefault();"><span><spring:message code="label.cg1401.campforrace"/></span></div>
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#cardgrouparrange"/>';event.preventDefault();"><span><spring:message code="label.cg1401.cardgrouparrange"/></span></div>
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#battlearmorrequire"/>';event.preventDefault();"><span><spring:message code="label.cg1401.battlearmorrequire"/></span></div>
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#equip"/>';event.preventDefault();"><span><spring:message code="label.cg1401.equip"/></span></div>	
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#journey_task"/>';event.preventDefault();"><span><spring:message code="label.cg1401.journey_task"/></span></div>
			</div>
		</div>
		
		<div>
			<div class="help-home01">
				<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#explorestargate"/>';event.preventDefault();"><span><spring:message code="label.cg1401.explorestargate"/></span></div>
			</div>
		</div>		
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#fightenergy"/>';event.preventDefault();"><span><spring:message code="label.cg1401.fightenergy"/></span> </div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#defendenergy"/>';event.preventDefault();"><span><spring:message code="label.cg1401.defendenergy"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#teamleader"/>';event.preventDefault();"><span><spring:message code="label.cg1401.teamleader"/> </span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#mercenaryattr"/>';event.preventDefault();"><span><spring:message code="label.cg1401.mercenaryattr"/></span></div>
		</div>	
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#compose_reincarnation"/>';event.preventDefault();"><span><spring:message code="label.cg1401.compose_reincarnation"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#reincarnation"/>';event.preventDefault();"><span><spring:message code="label.cg1401.reincarnation"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#step"/>';event.preventDefault();"><span><spring:message code="label.cg1401.step"/></span> </div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#compose"/>';event.preventDefault();"><span><spring:message code="label.cg1401.compose"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#mercenarystar"/>';event.preventDefault();"><span><spring:message code="label.cg1401.mercenarystar"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#playerlevel"/>';event.preventDefault();"><span><spring:message code="label.cg1401.playerlevel"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#exp_value"/>';event.preventDefault();"><span><spring:message code="label.cg1401.exp_value"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#actionenergy"/>';event.preventDefault();"><span><spring:message code="label.cg1401.actionenergy"/> </span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#crystal"/>';event.preventDefault();"><span><spring:message code="label.cg1401.crystal"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#diamond"/>';event.preventDefault();"><span><spring:message code="label.cg1401.diamond"/></span></div>
		</div>
		
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#conquerpoint"/>';event.preventDefault();"><span><spring:message code="label.cg1401.conquerpoint"/></span> </div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#milestone"/>';event.preventDefault();"><span><spring:message code="label.cg1401.milestone"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#recruitpoint"/>';event.preventDefault();"><span><spring:message code="label.cg1401.recruitpoint"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#attributes"/>';event.preventDefault();"><span><spring:message code="label.cg1401.attributes"/> </span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#element"/>';event.preventDefault();"><span><spring:message code="label.cg1401.element"/> </span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#pvp"/>';event.preventDefault();"><span><spring:message code="label.cg1401.pvp"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#starcraftunion"/>';event.preventDefault();"><span><spring:message code="label.cg1401.starcraftunion"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#defensesatellite"/>';event.preventDefault();"><span><spring:message code="label.cg1401.defensesatellite"/></span> </div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#unionchairman"/>';event.preventDefault();"><span><spring:message code="label.cg1401.unionchairman"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#vipgalaxy"/>';event.preventDefault();"><span><spring:message code="label.cg1401.vipgalaxy"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#unionbattle"/>';event.preventDefault();"><span><spring:message code="label.cg1401.unionbattle"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#uniontask"/>';event.preventDefault();"><span><spring:message code="label.cg1401.uniontask"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#recruitmercenary"/>';event.preventDefault();"><span><spring:message code="label.cg1401.recruitmercenary"/></span> </div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#leader"/>';event.preventDefault();"><span><spring:message code="label.cg1401.leader"/></span></div>
		</div>
		
		<div class="help-home">
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#handbookreward"/>';event.preventDefault();"><span><spring:message code="label.cg1401.handbookreward"/></span></div>
			<div class="clickTone1" onclick="location.href='<p:fullurl value="/cg1401/cg140102/index#auction"/>';event.preventDefault();"><span><spring:message code="label.cg1401.auction"/></span></div>
		</div>
	</div>
	
	
</div>


