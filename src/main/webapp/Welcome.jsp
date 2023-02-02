<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
  h1 {text-align: center;}
</style>

<meta charset="ISO-8859-1">
<title>Welcome Window</title>
</head>
<body>
  
  <%
  
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  
  if(session.getAttribute("Username")==null){
	  response.sendRedirect("Login.jsp");
  }
  
  %>
  
  <h1>
    Video Bank
  </h1>
  Wecome ${Username}<br>
  <a href="Videos.jsp">Videos Here</a>
  
  <form action="logout">
       <div style="text-align:center">  
         <input type="Submit" value="Logout"> 
       </div>
  </form>
  
</body>
</html>