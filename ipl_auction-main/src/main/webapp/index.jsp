<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<title>IPL Auction</title>
</head>
<style>
#but{
	font-family:sans-serif,serif;
	font-size:small;
	font-style:italic;
	margin-left:45px
}

body {
	min-height: 100%;
	background-image: url(https://wallpaperaccess.com/full/5846498.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
#abc {
	 background-color:white;
  border: none;
  color: black;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
  width:240px;
  border-radius: 15px;
}

#abc:hover {
  background-color:mediumseagreen;
  color: white;
}
#qew{
   background-color:mediumseagreen;
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
  background-color:tomato;
  color:white;
}
h1{
margin-left:40px;
background-color:#cccccc;
color:#18184A;
width:250px;
border-radius: 20px;
text-align: center;
opacity: 0.5;
}

 {
    box-sizing: border-box;
  } 
  body {
    margin: 0px;
    font-family: 'segoe ui';
  }
  
  #nav {
    height: 50px;
    width: 100%;
    background-color: #18184A;
  }
  .mnk{
  font-family:sans-serif,cursive;
  font-size: 35px;
  color:white;
  margin-left: 30px;
  }
  
</style>
<body>
 <div id="nav">
        
        <div id="nav-links">
        <marquee behavior="scroll" direction="left" loop="100" scrollamount="10">
           <img src="https://www.iplt20.com/assets/images/ipl-logo-new-old.png"  alt="" height="100%">
           
           <i class="mnk">WELCOME TO TATA IPL 2023</i>  
           </marquee>
        </div> 
      </div>
     

	<h2 style="color:red"><i>${msg}</i></h2>
	<br>
	<br>
	<h1>
		<i>Player Auction</i>
	</h1>
	<br>
	<div id="but">
	<a href="managementlogin.jsp"><button id=abc>Login As
			Management</button></a>
	<br><br>
	
	<a href="teamlogin.jsp"><button id=abc>Login As Team</button></a>
	<br><br>
	
	<a href="playerlogin.jsp"><button id=abc>Login As Player</button></a>
	<br><br><br><br>
	
	
	
	<b style="color:white"><u>Don't have an account?</u></b> <br><br><a href="signup.jsp"><button type="button" id=qew> SignUp </button></a>
	</div>
</body>
</html>
