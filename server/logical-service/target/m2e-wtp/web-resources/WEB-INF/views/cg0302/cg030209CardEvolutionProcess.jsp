<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="<p:fullurl value="/resources/css/main.css?v=1"/>">

<div class="content">
	<script type="text/javascript">
		function myrefresh() {
			window.location.replace('<p:fullurl value="/cg0302/cg030210/index"/>');
		}
		setTimeout('myrefresh()', 0);
	</script>
	<div class="panel-05">
		<div></div>
	</div>
	<div class="panel-04 ">
		<div class="centerFont">
			<span class="fc-normal-02-m"><spring:message
					code="label.cg030209.cardevolutionprocess.zhuansheng"></spring:message></span>
			<span class="fc-normal-03-m"><spring:message
					code="label.cg030209.cardevolutionprocess.info"></spring:message></span>
		</div>
	</div>

</div>

