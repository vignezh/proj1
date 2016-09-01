<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Database</title>
<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>

</head>
<body>
<div class="container">
	<h1>Product Data</h1>
<div class="row">
	<form:form action="products" method="POST" modelAttribute="ob" enctype="multipart/form-data" >
		
		
  
  <div class = "btn-group">
  <button type = "button" class = "btn btn-default dropdown-toggle" data-toggle = "dropdown">
  
     <td>CATEGORY</td>
			<form:select path="category" name="Category">
			 	<span><form:option value="NONE" class="caret" label="-SELECT-" /></span> 
				<form:option value="Formals">F0rmals</form:option>
				<form:option value="Casuals">CaSUaLS</form:option>
				<form:option value="Sports">Sp0rts</form:option>
			 </form:select> 
      
   </button>
			<ul class = "dropdown-menu" role = "menu"></ul>
			</div>
		
		<table border="5" class="table" >

			<tr>
				<td>Product ID</td>
				<td><form:input path="productId" /></td>
			</tr>

			<tr>
				<td>Name</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><form:input path="price" /></td>
			</tr>

			<tr>
				<td>Quantity</td>
				<td><form:input path="quantity" /></td>
			</tr>
			<tr>
				<td>Size</td>
				<td><form:input path="size" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:input path="desc" /></td>
			</tr>
			 <tr>
				<td>Image Name</td>
				<td>
				<form:input path="imagename" type="text" />
				<form:input path="filename" type="file" />
				</td> 
			</tr> 

	
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Save" />
					<input type="submit" name="action" value="Update" /> <input
					type="submit" name="action" value="Delete" /> <input type="submit"
					name="action" value="Search" /></td>
			</tr>
		</form:form>
	
</table>
	<input type="button" value="back" onclick="javascript:history.back()" />
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	
</body>
<%@include file="footer.jsp"%>
</html>