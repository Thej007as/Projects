<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Players</title>
</head>
<style>
body{
background-image: url(https://assets.bcci.tv/bcci/photos/531/f2812844-10e4-4276-9348-cc47bae4a517.jpg);
background-repeat: no-repeat;
background-size: cover;
height:100%;
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
background-color:lightblue;
color:red;
font-size: 15x;
font-family:sans-serif,serif;
font-weight:10px;
border: none;
}
</style>
<body>
<h1>List of All Players</h1><br>
<table border="1" bgcolor="lightblue" cellpadding="15px">
<tr  bgcolor="gold">
<th>Player Name</th>
<th>Role</th>
<th>Country</th>
<th>Status</th>
<th>Price</th>
<th>Change Status</th>
</tr>
<c:forEach var="player" items="${players}">
<tr>
<th>${player.getName()}</th>
<th>${player.getRole()}</th>
<th>${player.getCountry()}</th>
<th>${player.getStatus()}</th>
<th>${player.getPrice()}</th>
<th><a href="changeplayerstatus?id=${player.getId()}"><button id="qw">Change Status</button></a></th>
</tr>
</c:forEach>

</table><br><br><br>

<a href="managementhome.jsp"><button id="qew">Back</button></a>
</body>
</html>