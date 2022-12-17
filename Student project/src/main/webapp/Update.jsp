<%@page import="dao.Productdao"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<link
	href="https://fonts.googleapis.com/css?family=Indie+Flower|Overpass+Mono"
	rel="stylesheet">
<link rel="stylesheet" href="helooo.css">
</head>
<body>

	<main>

		<div class="page">
			<div class="header">

				<img
					src="https://tse3.mm.bing.net/th?id=OIP.eu59Hb-4Ivj6lc5W4CKCgAAAAA&pid=Api&P=0" />

			</div>
			<%int id=Integer.parseInt(request.getParameter("id"));
			Productdao dao=new Productdao();
			Product product=dao.fetchproduct(id);
			%>
			
			<h1>Edit Product</h1>
			<br>
			<br>
			<div class="container">
				<form action="updateproduct" method="post">
					Id: <input type="text" name="id" value="<%=product.getId()%>" readonly="readonly"><br>
					<br> Name: <input type="text" name="name" value="<%=product.getName()%>"><br>
					<br> Category: <input type="text" name="category" value="<%=product.getCategory()%>"><br>
					<br> prize: <input type="text" name="prize" value="<%=product.getPrize()%>"><br>
					<br>
					<button>Update</button>
					<button>Cancel</button>


				</form>

			</div>
		</div>
		<div class="option">
			<p>
				 <a href="fetchProducts.html"><button>Back</button></a>

			</p>

		</div>
	</main>



</body>
</html>