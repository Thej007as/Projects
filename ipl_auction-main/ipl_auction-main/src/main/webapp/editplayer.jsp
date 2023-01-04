<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<style>

h2{

color:#990099;
text-decoration:blink;
width:238px;
padding:1px;
margin-left:150px;

}
h1{
background-color:white;
color:red;
width:338px;
padding:10px;
border-radius:25%;
text-align: center;
margin-left:150px;

}
body{
background-image: url(https://assets.bcci.tv/bcci/photos/495/95ae5c09-13e9-42e9-b7af-ad5faabd0074.jpg);
background-repeat: no-repeat;
background-size: cover;
height:100%;
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
  margin-left:160px;
  
}

#qew:hover {
  background-color:mediumseagreen;
  color:white;
}
#zxc{
font-size:19px;
padding: 10px 10px;
border-radius: 10px;
background-color:#e6e6e6;
}
#xc{
font-size:20px;
border-radius: 10px;
background-color:#e6e6e6;
margin-left: 160px;
}
</style>
<body>
<h1>Edit Player</h1>
<form:form action="updateplayer" modelAttribute="player">
<h2>Name :<form:input path="name" id="zxc"/></h2>
<h2>Username :<form:input path="username" id="zxc"/></h2>
<h2>Role :</h2><form:select path="role" id="xc">
<form:option value="">Select</form:option>
<form:option value="Batsman">BatsMan</form:option>
<form:option value="Bowler">Bowler</form:option>
<form:option value="AllRounder">All Rounder</form:option>
<form:option value="Wicketkeeper">Wicket keeper</form:option>
</form:select><br>
<h2>Price :<form:input path="price" readonly="true"  id="zxc"/></h2><br>
<button id="qew">Update</button>
</form:form><br><br>
<a href="playerhome.jsp"><button id="qew">Back</button></a>
</body>
</html>