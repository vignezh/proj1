<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COnfirm DEtails</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details to become our customer</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<br /> <br />
			<sf:form modelAttribute="userBean">
				<sf:label path="userId">UserName:</sf:label>${userBean.userId}
					<br />
				<br />
				<sf:label path="email">Email Id:</sf:label>${userBean.email}
					<br />
				<br />
				<sf:label path="age">Age:</sf:label>${userBean.age}
					<br />
				<br />
				<sf:label path="pass">Password:</sf:label>${userBean.pass}
					<br />
				<br />
				<sf:label path="mobile">Mobile:</sf:label>${userBean.mobile}
				
				
				
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>