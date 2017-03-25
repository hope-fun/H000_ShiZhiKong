<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">
function orderSelectSubmit(form, value) {
	form.selectInfo.options[form.selectInfo.selectedIndex].value = "${searchFilterCamp}_" + value;
	form.submit();
}
</script>
<div class="select-condition selection-info-style">
  	<form action="<p:fullurl value="${searchFilterAction}"/>" method="get">
		<select class="select-order-style" name="selectInfo" onchange="orderSelectSubmit(this.form, this.value)">
			<!-- <option value="NONE" ${orderSelectValue eq "NONE"?"selected":""}><spring:message code="label.orderselect.default"></spring:message></option> -->
			<option value="TOTAL_DESC" ${orderSelectValue eq "TOTAL_DESC"?"selected":""} ><spring:message code="label.orderselect.total_desc"></spring:message></option>
			<option value="TOTAL_ASC" ${orderSelectValue eq "TOTAL_ASC"?"selected":""} ><spring:message code="label.orderselect.total_asc"></spring:message></option>
			<option value="CARDLEVEL_DESC" ${orderSelectValue eq "CARDLEVEL_DESC"?"selected":""} ><spring:message code="label.orderselect.cardlevel_desc"></spring:message></option>
			<option value="CARDLEVEL_ASC" ${orderSelectValue eq "CARDLEVEL_ASC"?"selected":""}><spring:message code="label.orderselect.cardlevel_asc"></spring:message></option>
			<option value="STAR_DESC" ${orderSelectValue eq "STAR_DESC"?"selected":""} ><spring:message code="label.orderselect.star_desc"></spring:message></option>
			<option value="STAR_ASC" ${orderSelectValue eq "STAR_ASC"?"selected":""} ><spring:message code="label.orderselect.star_asc"></spring:message></option>
			<option value="ATTACK_DESC" ${orderSelectValue eq "ATTACK_DESC"?"selected":""} ><spring:message code="label.orderselect.attack_desc"></spring:message></option>
			<option value="ATTACK_ASC" ${orderSelectValue eq "ATTACK_ASC"?"selected":""} ><spring:message code="label.orderselect.attack_asc"></spring:message></option>
			<option value="DEFENCE_DESC" ${orderSelectValue eq "DEFENCE_DESC"?"selected":""} ><spring:message code="label.orderselect.defence_desc"></spring:message></option>
			<option value="DEFENCE_ASC" ${orderSelectValue eq "DEFENCE_ASC"?"selected":""} ><spring:message code="label.orderselect.defence_asc"></spring:message></option>
		</select>
		<input type="hidden" name="detailUrl" value="${detailAction}" />
	</form>
</div>