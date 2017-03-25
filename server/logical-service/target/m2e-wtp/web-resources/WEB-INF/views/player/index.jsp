<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld" %>
<div class="content">
	<form action="<p:fullurl value="/player/register"/>" method="POST">
		<table>
			<tr>
				<td><spring:message code="label.player.name"></spring:message></td>
				<td><input type="text" name="name" value="Tester"></td>
			</tr>
			<tr>
				<td><spring:message code="label.player.camp"></spring:message></td>
				<td>
					<select name="camp">
						<option value="">--Please Select--</option>
						<option value="HUMAN">HUMAN</option>
						<option value="TAITAN">TAITAN</option>
						<option value="LINGYI">LINGYI</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Register my account" onclick="validate(this.form); return false;"></td>
			</tr>
		</table>
	</form>
</div>
<script type="text/javascript">
function validate(form) {
	var name = form.name.value;
	var camp = form.camp.value;
	
	if(name && camp) {
		form.submit();
	} else {
		kpyxConfirm("<spring:message code='label.player.notice' />");
	}
}
</script>
