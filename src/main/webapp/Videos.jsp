<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Video Database</title>
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
  
  <a href="https://youtube.com/watch?v=_mT_lazCR7A&feature=shares">Video 1</a><br>
  <a href="https://youtube.com/watch?v=Rv8JzMHt388&feature=shares">Video 2</a>
</body>
</html>