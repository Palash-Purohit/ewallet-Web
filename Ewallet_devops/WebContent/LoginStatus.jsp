<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
	HttpSession session1 = request.getSession(false);
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<header>
	<h3 align="right">
		Welcome Home
		<%=session.getAttribute("name")%></h3>
	<h4 align="right">
		Phone
		<%=session.getAttribute("phone")%></h4>
	<p align="right">
		<a href="loggedout.jsp">Log Out</a>
	</p>


	</header>

	<a href="Add.jsp">ADD BENEFICIARY</a>
	<a href="SendMoney.jsp">TRANSFER MONEY</a>


</body>
</html>


