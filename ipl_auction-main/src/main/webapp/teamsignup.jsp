<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team SignUp</title>
</head>
<style>

h2{

color:violet;
text-decoration:blink;
width:338px;
padding:10px;
margin-left:150px;

}
h1{
background-color:lightyellow;
color:red;
width:338px;
padding:10px;
border-radius:25%;
text-align: center;
margin-left:150px;

}
body{
background-image: url(https://bcciplayerimages.s3.ap-south-1.amazonaws.com/bcci/images/1644826819_Singh96_0072.jpg);
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
font-size:25px;
border-radius: 10px;
background-color:#e6e6e6;
}

</style>
<body><br><br><br>

<form:form action="teamsignup" modelAttribute="team" method="post"  >
<h1>Team Signup</h1><br>
<h2>Team Name: <form:input path="name" id="zxc"/></h2>
<h2>Username: <form:input path="username" id="zxc"/></h2>
<h2>Password: <form:password path="password" id="zxc"/></h2>
<h2>Image Link: <form:input path="imagelink"/></h2>
<form:button id="qew">Save</form:button><button type="reset" id="qw">Cancel</button>
</form:form>
<br>
<a href="signup.jsp" ><button id="qew">Back</button></a>
</body>
</html>