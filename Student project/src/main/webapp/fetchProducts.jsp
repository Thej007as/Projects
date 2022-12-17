<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bg.css" type="text/css">
<title>Fetch</title>
</head>
<body>
	<%
	List<Product> list = (List<Product>) session.getAttribute("productlist");
	%>
	<
	<h1 align="center">Products</h1>
	<br>
	<table border="1" cellspacing="15" cellpadding="5" bgcolor="pink"
		align="center">
		<tr bgcolor="red">
			<th>Id</th>
			<th>Name</th>
			<th>Prize</th>
			<th>Category</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
		for (Product p : list) {
		%>
		<tr bgcolor="yellow">
			<th><%=p.getId()%></th>
			<th><%=p.getName()%></th>
			<th><%=p.getPrize()%></th>
			<th><%=p.getCategory()%></th>
			<th><a href="Update.jsp?id=<%=p.getId()%>"><button>Edit</button></a></th>
			<th><a href="deleteproduct?id=<%=p.getId()%>"><button>Delete</button></a></th>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<h1 align="center">
		<a href="admin.html"><button>Back</button></a>
	</h1>
</body>
</html>