<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Form</title>
<body>
	<a href="home" class="btn btn-info btn-lg">Back</a>
	<form:form modelAttribute="ion" action="fregister" method="POST">
		<table>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><form:input path="user_firstname" /></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><form:input path="mobile_number" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td>Retype Password :</td>
				<td><form:input path="confirm_password" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><form:input path="mail_id" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Register" /></td>
			</tr>

		</table>
	</form:form>


</body>
</html>