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
background-image: url(https://assets.bcci.tv/bcci/photos/7000/e482ccf3-0255-417f-acbd-90f901fe4ee2.jpg);
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
h2{
color:white;
margin-left: 160px;
}

</style>
<body>
<h1>${teamname} Players are</h1><br>
<%String msg=(String)request.getAttribute("msg"); 
if(msg!=null){
%>
<h2>${msg}</h2>
<%}
else
{%>
<table border="1" bgcolor="lightblue" cellpadding="15px">
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
<a href="viewallteam"><button id="qew">Back</button></a>
</body>
</html>