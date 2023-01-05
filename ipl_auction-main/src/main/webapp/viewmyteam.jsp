<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${teamname} Players</title>
</head>
<style>
body{
background-image: url(https://assets.bcci.tv/bcci/photos/7000/3cc121dd-b600-4b4e-9afd-b99d67cafa1a.jpg);
background-repeat: no-repeat;
background-size: cover;
height:100%;
}
h1{
background-color:white;
color:red;
width:738px;
padding:10px;
border-radius:25%;
text-align: center;
margin-left:150px;
}
#qew{
   background-color:white;
  border: none;
  color: black;
  padding: 10px 22px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
  border-radius: 15px;
  margin-left: 140px;
}
#qew:hover {
  background-color:mediumseagreen;
  color:white;
}
#abc{
margin-left: 140px;
}
#q{
margin-left: 140px;
color:white;
}


</style>
<body>
<h1>${teamname} Players are</h1><br>
<%String msg=(String)request.getAttribute("msg"); 
if(msg!=null){
%>
<h2 id="q">${msg}</h2>
<%}
else
{%>
<table border="1" bgcolor="lightblue" cellpadding="15px" id="abc">
<tr bgcolor="gold">
<th>Name</th>
<th>Role</th>
</tr>
<c:forEach var="player" items="${players}">
<tr>
<th>${player.getName()}</th>
<th>${player.getRole()}</th>
</tr>
</c:forEach>
</table><br><br>
<%} %>
<a href="teamhomedummy" ><button id="qew">Back</button></a>
</body>
</html>