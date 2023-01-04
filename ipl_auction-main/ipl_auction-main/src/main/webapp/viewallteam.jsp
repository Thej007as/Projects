<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Team</title>
</head>
<style>
body{
background-image: url(https://bcciplayerimages.s3.ap-south-1.amazonaws.com/bcci/images/1644846291_cropped.jpg);
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
<h1>List of All Teams</h1><br>
<table border="1" bgcolor="lightblue" cellpadding="15px">
<tr bgcolor="gold">
<th>Team Name</th>
<th>Wallet</th>
<th>Status</th>
<th>Players</th>
<th>Change Status</th>
<th>Add Amount</th>
</tr>
<c:forEach var="team" items="${teams}">
<tr>
<th>${team.getName()}</th>
<th>${team.getWallet()}</th>
<th>${team.isStatus()}</th>
<th><a href="viewplayers?id=${team.getId()}"><button id="qw">View Players</button></a></th>
<th><a href="changestatus?id=${team.getId()}"><button id="qw">Change</button></a></th>
<th><a href="addamount.jsp?id=${team.getId()}"><button id="qw">Add Amount</button></a></th>
</tr>
</c:forEach>

</table><br><br><br>

<a href="managementhome.jsp"><button id="qew">Back</button></a>
</body>
</html>