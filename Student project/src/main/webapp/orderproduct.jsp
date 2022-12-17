<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bg.css" type="text/css">
<title>Order Product</title>
</head>
<body>

	<%
	List<Product> list = (List<Product>) session.getAttribute("productlist");
	%>
	<%
	char ch = 'a';
	%>
	<h1 align="center">Products List</h1>
	<form action="placeorder">
		<table border="1" cellspacing="15" cellpadding="5" bgcolor="pink" align="center">
			<tr bgcolor="red">
				<th>Name</th>
				<th>Prize</th>
				<th>Category</th>
				<th>Select</th>
			</tr>
			<%
			for(Product p:list){
			%>
			<tr bgcolor="yellow">

				<td><%=p.getName()%></td>
				<td><%=p.getPrize()%></td>
				<td><%=p.getCategory()%></td>
				<td><input type="checkbox" name="<%=ch++%>" value="<%=p.getId()%>"></td>
			</tr>
			<%
			}
			%>
		</table>
		</form>
		<br> 
		<h2 align="center">
		<a href="bill.jsp" ><button>Order</button></a>
		<a href="customer.html"><button>Back</button></a>
		</h2>








</body>
</html>