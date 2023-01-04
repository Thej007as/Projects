<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Players</title>
</head>
<style>
body{
background-image: url(https://bcciplayerimages.s3.ap-south-1.amazonaws.com/bcci/images/1644841875_cropped.jpg);
background-repeat: no-repeat;
background-size: cover;
height:100%;
}
h1{
color:red;
width:338px;
padding:10px;
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

</style>
<body>
<h1>Players are</h1><br>

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
<a href="playerhome.jsp"><button id="qew">Back</button></a>
</body>
</html>