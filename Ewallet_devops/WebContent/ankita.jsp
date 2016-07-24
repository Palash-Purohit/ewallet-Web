<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	HttpSession session1 = request.getSession(false);
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/x-icon"
	href="retinafreestansard/css/images/favicon.png" />
<title>e-WALLET</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/retinafreestansard/css/images/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/retinafreestansard/css/style.css"
	type="text/css" media="all" />
<link
	href="${pageContext.request.contextPath}/retinafreestansard/css/form1.css"
	rel="stylesheet">
</head>


<body>



	<header id="header">
	<div>
		<a
			href="${pageContext.request.contextPath}/retinafreestansard/home.jsp"><img
			src="${pageContext.request.contextPath}/retinafreestansard/css/images/logo_ew.jpg"
			alt="E WALLET" height="75" width="50%"></a>

	</div>
	<div class="search">
		<form action="" method="post">
			<input type="text" class="field" value="keywords here ..."
				title="keywords here ..." /> <input type="submit"
				class="search-btn" value="" />
			<div class="cl">&nbsp;</div>
		</form>
	</div>
	<div class="cl">&nbsp;</div>
	<h4 align="right">
		Welcome
		<%=session.getAttribute("name")%></h4>
	<h4 align="right">
		Phone
		<%=session.getAttribute("phone")%></h4>
	<p align="right">
		<a href="loggedout.jsp">Log Out</a>
	</p>
	
	</header>

	<nav id="navigation"> <a
		href="${pageContext.request.contextPath}/home.jsp" class="nav-btn">HOME<span></span></a>
	<ul>

		<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About
				Us</a></li>
		<li><a href="${pageContext.request.contextPath}/policies.jsp">Transfer
				Money</a></li>
		<li><a href="${pageContext.request.contextPath}/contactus.jsp">Contact
				Us</a></li>
		<li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>


	</ul>
	<div class="cl">&nbsp;</div>


	</nav>
<div id="first">



					<!-- <div>
								<h2
									style="background-color: #000000; color: white; text-align: center; padding: 5px;"> Transfer
									Money</h2>
							</div>
							 -->



					<a href="Add.jsp"><h3 align="center">ADD BENEFICIARY</h3></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="SendMoney.jsp"><h3 align="center">TRANSFER MONEY</h3></a>



				</div>
						<div class="footer-nav">
						<ul>

							<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About
									Us</a></li>
							<li><a
								href="${pageContext.request.contextPath}/policies.jsp">Policies</a></li>

							<li><a
								href="${pageContext.request.contextPath}/CorporatePortal.jsp">Corporate
									Portal</a></li>
							<li><a
								href="${pageContext.request.contextPath}/contactus.jsp">Contact
									Us</a></li>

						</ul>
						<div class="cl">&nbsp;</div>
					</div>
					<p class="copy">
						&copy; Copyright 2016<span>|</span>Fast Track Policy. Design by
						AHD_24 Aja113
					</p>
					<div class="cl">&nbsp;</div>
				</div>

	






</body>
</html>