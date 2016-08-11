<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/retinafreestansard/css/images/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/retinafreestansard/css/style.css"
	type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/retinafreestansard/css/form1.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>


	<!-- wrapper -->
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">
				<!-- header -->
				<header id="header">
				<p align="right">
					<%
						String gpa = (String) request.getAttribute("message");
						out.println("WELCOME " + gpa);
					%>
				</p>

				<div>
					<a href="${pageContext.request.contextPath}/home.jsp"><img
						src="${pageContext.request.contextPath}/retinafreestansard/css/images/finallogo.jpg"
						alt="Fast Track Poly and Claim Policy"></a>

				</div>


				<!-- search -->
				<div class="search">
					<form action="www.google.com" method="post">
						<input type="text" class="field" value="keywords here ..."
							title="keywords here ..." /> <input type="submit"
							class="search-btn" value="" />
						<div class="cl">&nbsp;</div>
					</form>
				</div>
				<!-- end of search -->
				<div class="cl">&nbsp;</div>
				</header>
				<!-- end of header -->
				<!-- navigaation -->


				<nav id="navigation"> <a href="#" class="nav-btn">HOME<span></span></a>
				<ul>

					<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About Us</a></li>
					<li><a href="${pageContext.request.contextPath}/policies.jsp">Policies</a></li>
					<li><a href="${pageContext.request.contextPath}/CorporatePortal.jsp">Corporate Portal</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus.jsp">Contact Us</a></li>

				</ul>
				<div class="cl">&nbsp;</div>
				</nav>
				<!-- end of navigation -->
				<section>

				<div id="first">

					<%-- <form method="post" action="CustCertificate">
					<%
							request.setAttribute("gpa", gpa);
						out.println(gpa);
						
						%>
						<input type="hidden" value=<%=gpa %> id="user" name="user">
						<td><input type="submit" value="View Details" id="submit" >
					</form> --%>

					<form method="post" action="./ViewController">
						<%
							request.setAttribute("gpa", gpa);
						out.println(gpa);
						
						%>
						<input type="hidden" value=<%=gpa %> id="user" name="user">
						<!-- <tr>
						<td><label>Customer Id</label></td>
						<td><input type="number" name="custId"  />  </td>
					</tr> -->

						<table>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<h3>Click Here To see the details</h3> <br>
								</td>
							</tr>
							<tr>
								<td><input type="submit" value="Transfer" id="submit" >
								</td>
							</tr>
						</table>

					</form>




				</div>
				<div id="freespace"></div>
				</section>
				<!-- footer -->
				<div id="footer">
					<div class="footer-nav">
					<ul>

					<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About Us</a></li>
					<li><a href="${pageContext.request.contextPath}/policies.jsp">Policies</a></li>
					<li><a href="${pageContext.request.contextPath}/CorporatePortal.jsp">Corporate Portal</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus.jsp">Contact Us</a></li>

				</ul>
						<div class="cl">&nbsp;</div>
					</div>
					<p class="copy">
						&copy; Copyright 2016<span>|</span>Fast Track Policy. Design by
						AHD_24 Aja113
					</p>
					<div class="cl">&nbsp;</div>
				</div>
				<!-- end of footer -->
			</div>
			<!-- end of container -->
		</div>
		<!-- end of shell -->
	</div>
	<!-- end of wrapper -->


</body>
</html>