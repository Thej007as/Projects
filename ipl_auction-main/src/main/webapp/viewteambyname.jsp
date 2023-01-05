<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Team</title>
</head>
<style>
body{
background-image: url(https://assets.bcci.tv/bcci/photos/7000/3cc121dd-b600-4b4e-9afd-b99d67cafa1a.jpg);
background-repeat: no-repeat;
background-size: cover;
height:100%;
}
h1{
color:red;
width:738px;
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
}
#qew:hover {
  background-color:mediumseagreen;
  color:white;
}
#qw{
 border: none;
  padding: 10px 15px;
  text-align: center;
  font-size: 15px;
  margin: 4px 2px;
  transition: 0.3s;
  border-radius: 15px;
  margin-left: 40px;
}

#qw:hover {
  background-color:dodgerblue;
}

#abc{
margin-left:150px;
border-radius: 15px;
font-size: 20px;
margin: 4px 2px;
}
</style>
<body><br><br><br>
<h1>Select Team :</h1>
<div id="abc">
<form action="fetchusingteam" >

<select name="name">
<c:forEach var="team" items="${teams}">
<option value="${team.getName()}">${team.getName()}</option>
</c:forEach>
</select>
<button id="qw">Search</button>
</form>
</div><br>
<a href="teamhomedummy"><button id="qew">Back</button></a>
</body>
</html>