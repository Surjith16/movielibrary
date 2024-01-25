<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">


@import url("https://fonts.googleapis.com/css?family=Poppins&display=swap");
* {
  margin: 0;
  padding: 0;
  font-family: "Poppins", sans-serif;
}
body {
  display: flex;
  height: 100vh;
  text-align: center;
  align-items: center;
  justify-content: center;
  background: #151515;
}
.login-form {
  position: relative;
  width: 370px;
  height: auto;
  background: #1b1b1b;
  padding: 40px 35px 60px;
  box-sizing: border-box;
  border: 1px solid black;
  border-radius: 5px;
  box-shadow: inset 0 0 1px #272727;
}
.text {
  font-size: 30px;
  color: #c7c7c7;
  font-weight: 600;
  letter-spacing: 2px;
}
form {
  margin-top: 40px;
}
form .field {
  margin-top: 20px;
  display: flex;
}
.field .fas {
  height: 50px;
  width: 60px;
  color: #868686;
  font-size: 20px;
  line-height: 50px;
  border: 1px solid #444;
  border-right: none;
  border-radius: 5px 0 0 5px;
  background: linear-gradient(#333, #222);
}
.field input,
form button {
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 19px;
  color: #868686;
  padding: 0 15px;
  border-radius: 0 5px 5px 0;
  border: 1px solid #444;
  caret-color: #339933;
  background: linear-gradient(#333, #222);
  color: green;
}
input:focus {
  color: #339933;
  box-shadow: 0 0 5px rgba(0, 255, 0, 0.2), inset 0 0 5px rgba(0, 255, 0, 0.1);
  background: linear-gradient(#333933, #222922);
  animation: glow 0.8s ease-out infinite alternate;
}
@keyframes glow {
  0% {
    border-color: #339933;
    box-shadow: 0 0 5px rgba(0, 255, 0, 0.2), inset 0 0 5px rgba(0, 0, 0, 0.1);
  }
  100% {
    border-color: #6f6;
    box-shadow: 0 0 20px rgba(0, 255, 0, 0.6),
      inset 0 0 10px rgba(0, 255, 0, 0.4);
  }
}
button {
  margin-top: 30px;
  border-radius: 5px !important;
  font-weight: 600;
  letter-spacing: 1px;
  cursor: pointer;
}
button:hover {
  color: #339933;
  border: 1px solid #339933;
  box-shadow: 0 0 5px rgba(0, 255, 0, 0.3), 0 0 10px rgba(0, 255, 0, 0.2),
    0 0 15px rgba(0, 255, 0, 0.1), 0 2px 0 black;
}
.link {
  margin-top: 25px;
  color: #868686;
}
.link a {
  color: #339933;
  text-decoration: none;
}
.link a:hover {
  text-decoration: underline;
}
#message{
	color: red;
}
</style>
</head>
<body>
<form action="adminlogin" method="post">
<div class="login-form">
  <div class="text">
    LOGIN
  </div>
  <form>
    <div class="field">
    
      <div class="fas fa-envelope"></div>
      <input type="email" name="adminmail" placeholder="Email or Phone">
    </div>
    <div class="field">
      <div class="fas fa-lock"></div>
      <input type="password" name="adminpassword" placeholder="Password">
    </div>
    
    <button>ADMIN LOGIN</button>
    <div class="link">
      Not a member?
      <a href="asignup.jsp">Signup now</a>
    </div>
    <div id="message">
<% String message=(String)request.getAttribute("message"); %>
<%if(message!=null){ %>
<%= message %>
<%} %></div>
  </form>
</div>
<!-- partial -->
  
</form>

</body>
</html>