<%@page import="dto.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Customer</title>
<link rel="stylesheet" href="bg.css" type="text/css">
</head>
<body>

		<%
		List<User> list = (List<User>) session.getAttribute("customerList");
		%>
		<h1 align="center">Customers</h1>
		<br>
		<table border="1" cellspacing="15" cellpadding="5" bgcolor="pink" align="center">
			<tr bgcolor="red">
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone Number</th>

			</tr>
			<%
			for (User user : list) {
			%>
			<tr bgcolor="yellow">
				<th><%=user.getId()%></th>
				<th><%=user.getName()%></th>
				<th><%=user.getEmail()%></th>
				<th><%=user.getPhonenumber()%></th>
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