<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Foot Bazzar Register Form</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- 
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="shortcut icon" href="assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
 -->
</head>

<body>
	<form:form>
		<div class="content">
			<fieldset>
				<legend>
					<center>You can login here!!! To become our valuable
						customer...</center>
				</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<div class="alert alert-info">
					<center>
						<strong> Info! </strong>Please fill your details rightfully
					</center>
				</div> 
			<!--<div style="margin-bottom: 25px" class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
          <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                </div> -->
                <div>
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i>
				<sf:form modelAttribute="userBean">
					<br />
					<sf:label path="userId">UserName:</sf:label>
					<sf:input path="userId" />
					<br />
					<!-- to display validation messages -->
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('userId')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
					
					<sf:label path="email">Email Id: </sf:label>
					<sf:input path="email" />
					<br />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
					<sf:label path="age">Age: </sf:label>
					<sf:input path="age" />
					<br />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('age')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
					<sf:label path="pass">Password: </sf:label>
					<sf:input path="pass" />
					<br />
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('pass')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
					<sf:label path="mobile">Mobile Number: </sf:label>
					<sf:input path="mobile" />
					<br />
					
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br />
					 
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_submit" type="submit" value="Submit" />
					<br>
					<button type="submit" class="btn"
						onclick="javascript:history.back()" /></button>
					<br />
				</sf:form>
			</fieldset>
			</span>
		</div>
		
	</form:form>
	<%@include file="footer.jsp"%>
	
</body>
</html>