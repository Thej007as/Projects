<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management Home</title>
</head>
<style>
body{
background-image: url(https://assets.bcci.tv/bcci/photos/7000/3c8cf73d-10df-4210-936f-825814d185ba.jpg);
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
h2{

color:blue;
text-decoration:blink;
width:338px;
padding:10px;
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


</style>
<body>
<h2>${msg}</h2>
<h1>Management Home</h1>
<a href="viewallteam"><button id="qew">View Team</button></a>
<a href="viewallplayers"><button id="qw">View Player</button></a><br><br>
<a href="index.jsp"><button id="qew">Back</button></a>
</body>
</html>