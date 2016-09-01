<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border=1>
		<th>productId</th>
		<th>name</th>
		<th>price</th>
		<th>quantity</th>
		<th>categories</th>

		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productId}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.quantity}</td>
				<td>${product.category}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>