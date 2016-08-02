<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> (http://www.w3.org/TR/html4/loose.dtd%27%3E) 
<html>
<head>

<%  HttpSession session1=request.getSession();  
session.invalidate();  %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
You have been logged out successfully...
<a href="login.jsp">Login Page</a>
</body>
</html> 