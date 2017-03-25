<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/CG1501.css?v=1"/>">
<c:set var="msg1" ><spring:message code="label.cg1501.msg1"></spring:message></c:set>
<c:set var="msg2" ><spring:message code="label.cg1501.msg2"></spring:message></c:set>
<c:set var="msg3" ><spring:message code="label.cg1501.msg3"></spring:message></c:set>
<c:set var="fasongchenggong" ><spring:message code="label.cg1501.fasongchenggong"></spring:message></c:set>
<c:set var="fasongshibai" ><spring:message code="label.cg1501.fasongshibai"></spring:message></c:set>


<script type="text/javascript">
	var serverTime="${serverTime}";
	var msg1="${msg1}";
	var msg2="${msg2}";
	var msg3="${msg3}";
	var fasongshibai = "${fasongshibai}";
	var fasongchenggong = "${fasongchenggong}";
</script>
<script type="text/javascript" charset="utf-8" src="<p:fullurl value="/resources/js/cg1501/cg150101.js"/>"></script>

<div class="content">
	<div class=" menu-medium title-label-03">
		<span><spring:message code="label.cg1501.kefubangzhu"></spring:message></span>
	</div>
	<!-- <div class="fc-content-02 label-button-01">
		<span>联系前务必阅读</span> <span> <a href="#" class="fc-link">常见问题</a>
		</span>
	</div> -->
		<form method="post" action="<p:fullurl value="/cg1501/cg150101/send"/>" id="commit_question" name="commit_question">
			<div class="panelA-header"></div>
			<div class="service-bg panelA-body panelA-height">
			<div class="type1">
				<div class="fc-normal-03-m padding-top30">
					<span><spring:message code="label.cg1501.dai"></spring:message></span> 
					<span class="fc-normal-06-m">*</span> <span><spring:message code="label.cg1501.bitian"></spring:message></span>
				</div>
	
				<div class="sort">
					<div class="fc-normal-03-m"><spring:message code="label.cg1501.fenlei"></spring:message></div>
					<div class="fenlei">
					  <select class="selector" name="mesType">
	     					<option><spring:message code="label.cg1501.wuxuanze"></spring:message></option>
	     					<option><spring:message code="label.cg1501.guanyugoumaidaojukabao"></spring:message></option>
	     					<option><spring:message code="label.cg1501.guanyulingqudaojukabao"></spring:message></option>
	     					<option><spring:message code="label.cg1501.guanyuyouxicuowu"></spring:message></option>
	     					<option><spring:message code="label.cg1501.guanyuyouxigongneng"></spring:message></option>
	     					<option><spring:message code="label.cg1501.guanyuhuodong"></spring:message></option>
	     					<option><spring:message code="label.cg1501.zhanghaobeijin"></spring:message></option>
	     					<option><spring:message code="label.cg1501.zuobiwenti"></spring:message></option>
	     					<option><spring:message code="label.cg1501.jubao"></spring:message></option>
	     					<option><spring:message code="label.cg1501.yijianfankui"></spring:message></option>
	     					<option><spring:message code="label.cg1501.qitawenti"></spring:message></option>
	     				</select>
					</div>
					<div class="clearfix"></div>
				</div>
	
				<div class="fc-normal-03-m clearfix">
					<span class="fc-normal-06-m">*</span> <span><spring:message code="label.cg1501.nindeyouxiang"></spring:message></span>
				</div>
				<div>
					<div class="input-box-bg">
					   <input type="text" name="customerEmail" value="" id="email">
					   <input type="text" name="noautosubmit" style="display:none;" />
					</div>
				</div>
				<div class="fc-normal-03-m"><spring:message code="label.cg1501.wentifashengshijian"></spring:message></div>
				<input type="hidden" value="" id="btn_question_time" name="questionTime">
				<div class="problem-time ">
	
					<div>
						<div class="pane">
						    <select class="select" id="sel_month">
						    </select>
						</div>
						<div class="fc-normal-03-m service-font"><spring:message code="label.cg1501.yue"></spring:message></div>
					</div>
					<div>
						<div class="pane">
							<select class="select" id="sel_day">
						    </select>
						</div>
						<div class="fc-normal-03-m service-font"><spring:message code="label.cg1501.ri"></spring:message></div>
					</div>
					<div>
						<div class="pane">
							<select class="select" id="sel_hour">
						    </select>
						</div>
						<div class="fc-normal-03-m service-font"><spring:message code="label.cg1501.dian"></spring:message></div>
					</div>
					<div>
						<div class="pane">
							<select class="select" id="sel_minute">
						    </select>
						</div>
						<div class="fc-normal-03-m service-font"><spring:message code="label.cg1501.fen"></spring:message></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="type2" style="width: 100%">
					<div class="sort">
						<div class="fc-normal-03-m"><spring:message code="label.cg1501.wentifashengweizhi"></spring:message></div>
						<div class="fenlei">
						    <select class="selector" name="questionSituation">
	     						<option><spring:message code="label.cg1501.wuxuanze"></spring:message></option>
	     						<option><spring:message code="label.cg1501.zhuye"></spring:message></option>
	     						<option><spring:message code="label.cg1501.wodeyemian"></spring:message></option>
	     						<option><spring:message code="label.cg1501.renwu"></spring:message></option>
	     						<option><spring:message code="label.cg1501.zhandou"></spring:message></option>
	     						<option><spring:message code="label.cg1501.qianghua"></spring:message></option>
	     						<option><spring:message code="label.cg1501.jinhua"></spring:message></option>
	     						<option><spring:message code="label.cg1501.kabao"></spring:message></option>
	     						<option><spring:message code="label.cg1501.shangdian"></spring:message></option>
	     						<option><spring:message code="label.cg1501.daoju"></spring:message></option>
	     						<option><spring:message code="label.cg1501.bianjikazu"></spring:message></option>
	     						<option><spring:message code="label.cg1501.jiaoyi"></spring:message></option>
	     						<option><spring:message code="label.cg1501.xiangyaowupin"></spring:message></option>
	     						<option><spring:message code="label.cg1501.kapian"></spring:message></option>
	     						<option><spring:message code="label.cg1501.zhanyou"></spring:message></option>
	     						<option><spring:message code="label.cg1501.shengbao"></spring:message></option>
	     						<option><spring:message code="label.cg1501.sousuo"></spring:message></option>
	     						<option><spring:message code="label.cg1501.zhanji"></spring:message></option>
	     						<option><spring:message code="label.cg1501.tujian"></spring:message></option>
	     						<option><spring:message code="label.cg1501.bangzhu"></spring:message></option>
	     						<option><spring:message code="label.cg1501.zhandoupaihang"></spring:message></option>
	     						<option><spring:message code="label.cg1501.jiaoyishichang"></spring:message></option>
	     					</select>
						</div>
						<div></div>
					</div>
					<div class="sort">
						<div class="fc-normal-03-m"><spring:message code="label.cg1501.wentifashengpinlv"></spring:message></div>
						<div class="fenlei">
							<select class="selector" name="questionFrequency">
	     						<option><spring:message code="label.cg1501.wuxuanze"></spring:message></option>
	     						<option><spring:message code="label.cg1501.meici"></spring:message></option>
	     						<option><spring:message code="label.cg1501.jingchang"></spring:message></option>
	     						<option><spring:message code="label.cg1501.youshi"></spring:message></option>
	     						<option><spring:message code="label.cg1501.jinyici"></spring:message></option>
	     						<option><spring:message code="label.cg1501.meitian"></spring:message></option>
	     					</select>
						</div>
						<div></div>
					</div>
				</div>
			</div>
			<div class="type2">
				<div class="type1" style="width: 100%">
					<div class="fc-normal-03-m"><spring:message code="label.cg1501.errormsg"></spring:message></div>
					<div>
						<div class="input-box-bg">
							<textarea class="info" name="errorMes"></textarea>
						</div>
					</div>
				</div>
				<div class="type1" style="width: 100%">
					<div class="fc-normal-03-m">
						<span class="fc-normal-06-m">*</span> <span><spring:message code="label.cg1501.xiangxineirong"></spring:message></span>
					</div>
					<div class="detail-content">
						<textarea name="detailContent" id="info"></textarea>
					</div>
				</div>
				<div style="text-align: center;">
					<a style="display:inline-block;">
						<img id="btn_commit_question" class="clickTone1" src="<p:localurl value="/resources/images/buttons/fasong-green.png"/>"/>
					</a>
				</div>
			</div>
		</div>
		<div class="panelA-footer"></div>
	</form>
</div>


