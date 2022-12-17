<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<link rel="stylesheet" href="bg.css" type="text/css">
</head>
<body>
<main class="main">

	<h1 align="center">Billing</h1>
	<%
	List<Product> list = (List<Product>) session.getAttribute("product");
	%>
	<%
	double sum = 0;
	%>
	
	<table style="border: 1px solid black" cellspacing="15" cellpadding="5"" align="center">
		<tr>
			<th><h2>Your Order is</h2/></th>
		</tr>
		<%
		for (Product product : list) {
		%>
		<tr>
			<td><%=product.getName()%></td>
			<td><%=product.getPrize()%></td>
		</tr>
		<%
		sum = sum + product.getPrize();
		%>
		<%
		}
		%>
		<tr>
			<td>Total Bill amount is : <%=sum%></td>
		</tr>
	</table><br><br>
	<h1 align="center">
	<button onclick="window.print()">Print</button>
	<a href="addorder"><button>Back</button></a>
	</h1>
	
</body>
</html>