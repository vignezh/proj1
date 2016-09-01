<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Webflow completed</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="content">
		<fieldset>
			<legend>NEw user joined page</legend>
			<!-- here the href's value will be used to decide the 
					 controller to be executed on click of this link.
					 here "home" is mapped in spring mvc controller-->
			 <br />
			<br />
			<h2>
				<!-- display the userId just entered -->
				Welcome ${userBean.userId }
			</h2>
			<br />
		</fieldset>
	</div>
	<h2>Congrats!</h2>
  <div class="alert alert-success">
    <strong>Success!</strong> From now, you are one of our valuable customer!!! Keep in touch...
   
  </div>
  <%@include file="footer.jsp"%>
  
</body>
</html>