<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
  String message = (String) request.getAttribute("mobile");
 
  %>
<p> Mobile No: <%=message %></p>

  <%
  String name = (String) request.getAttribute("name");
  %>
  <p> Name: <%=name%></p>
   <%
  String email = (String) request.getAttribute("email");
  
%>
  <p> Email: <%=email%></p>
 
</body>
</html>