
<!DOCTYPE html>
<html>
<head>

<link rel="shortcut icon" type="image/x-icon"
	href="retinafreestansard/css/images/favicon.png" />
<title>add status</title>



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
	<!-- wrapper -->
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">
				<!-- header -->
				<header id="header">

					<div>
						<a href="${pageContext.request.contextPath}/home.jsp"><img
							src="${pageContext.request.contextPath}/retinafreestansard/css/images/logo_ew.jpg"></a>

					</div>


					<!-- search -->
					<div class="search">
						<form action="" method="">
							<input type="text" class="field" value="keywords here ..."
								title="keywords here ..." /> <input type="submit"
								class="search-btn" value="" />
							<div class="cl">&nbsp;</div>
						</form>
					</div>
					<!-- end of search -->

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
				<!-- end of header -->
				<!-- navigaation -->


				<nav id="navigation">
					<a href="#" class="nav-btn">HOME<span></span></a>
					<ul>

						<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About
								Us</a></li>
						<li><a href="${pageContext.request.contextPath}/policies.jsp">Transfer
								Money</a></li>
						<li><a
							href="${pageContext.request.contextPath}/contactus.jsp">Contact
								Us</a></li>
						<li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>

					</ul>
					<div class="cl">&nbsp;</div>
				</nav>
				
				
				<div id="first">
<p><h3>Beneficiary registered successfully!!!</h3></h3></p>

<h2 align="center"> click here to <a href="SendMoney.jsp">Transfer Money</a></h2>


</div>
<!-- footer -->
				<div id="footer">
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
				<!-- end of footer -->
			</div>
			<!-- end of container -->
		</div>
		<!-- end of shell -->
	</div>
	<!-- end of wrapper -->



</body>
</html>