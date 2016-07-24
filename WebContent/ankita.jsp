<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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










</body>
</html>