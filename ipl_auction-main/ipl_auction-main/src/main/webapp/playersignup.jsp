<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Player Signup</title>
</head>
<style>

h2{

color:#990099;
text-decoration:blink;
width:338px;
padding:5px;
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
#qw{
   background-color:white;
  border: none;
  color: black;
  padding: 10px 22px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
  border-radius: 15px;
  margin-left:50px;
  
}
#qw:hover {
  background-color:mediumseagreen;
  color:white;
}
#zxc{
font-size:20px;
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
<h1>Player Signup</h1>
<form:form action="playersignup" modelAttribute="player" method="post" >
<h2>Name : <form:input path="name" id="zxc"/></h2>
<h2>Username : <form:input path="username" id="zxc"/></h2>
<h2>Password : <form:password path="password" id="zxc"/></h2>
<h2>Role : </h2>
<form:select path="role" id="xc">
<form:option value="">Select</form:option>
<form:option value="Batsman">BatsMan</form:option>
<form:option value="Bowler">Bowler</form:option>
<form:option value="AllRounder">All Rounder</form:option>
<form:option value="Wicketkeeper">Wicket keeper</form:option>
</form:select>
<h2>Country : <form:input path="country" id="zxc"/></h2>
<h2>Base Price : <form:input path="price" id="zxc"/></h2>
<form:button id="qew">Save</form:button><button type="reset" id="qw">Cancel</button>
</form:form>
<br>
<a href="signup.jsp"><button id="qew">Back</button></a>
</body>
</html>