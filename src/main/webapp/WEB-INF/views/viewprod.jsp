<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>all products & categories</title>
</head>
<body>
	<form:form>
		<h2>all product details are here...</h2>
		<div>
		<table border=1>
			<th>productId</th>
			<th>name</th>
			<th>price</th>
			<th>quantity</th>
			<th>categories</th>
			<th>description</th>
			<th>sizes</th>
			
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.productId}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.category}</td>
					<td>${product.desc}</td> 
					<td>${product.size}</td>
					<div>
					<td><a href=edit/${product.productId}>Edit</a>
					<td><a href=delete/${product.productId}>Delete</a>
					</div>
				</tr>
			</c:forEach>
		</table>
		</div>
	</form:form>
	<input type="button" value="back" onclick="javascript:history.back()" />
<%@include file="footer.jsp"%>
	
</body>
</html>
