<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>

<%
	HttpSession session1 = request.getSession(false);
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />





<title>e-WALLET</title>
<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
<link
	href="${pageContext.request.contextPath}/retinafreestansard/css/form1.css"
	rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/retinafreestansard/css/images/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/retinafreestansard/css/style.css"
	type="text/css" media="all" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,600,500,300,200,100'
	rel='stylesheet' type='text/css'>
<script src="js/jquery.carouFredSel-5.5.0-packed.js"
	type="text/javascript"></script>
<script src="js/functions.js" type="text/javascript"></script>

<script  src="${pageContext.request.contextPath}/doc.js" type="text/javascript" lnaguage="javascript">

</script>


</head>


<body>
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">
				<!-- header -->


				<header id="header">

				<div>
					<a href="${pageContext.request.contextPath}/home.jsp"><img
						src="${pageContext.request.contextPath}/retinafreestansard/css/images/logo_ew.jpg"
						alt="E WALLET" height="75" width="50%"></a>

				</div>


				<!-- search -->
				<div class="search">
					<form action="" method="post">
						<input type="text" class="field" value="keywords here ..."
							title="keywords here ..." /> <input type="submit"
							class="search-btn" value="" />
						<div class="cl">&nbsp;</div>
					</form>
				</div>
				<!-- end of search -->
				<div class="cl">&nbsp;</div>
				
				</header>

				<!-- <div id="all"> -->

					<!-- <div id="header"></div> -->


					<nav id="navigation">
					 <a href="#" class="nav-btn">HOME<span></span></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About
								Us</a></li>
						<li><a
							href="${pageContext.request.contextPath}/SendMoney.jsp">Transfer
								Money</a></li>
						<li><a
							href="${pageContext.request.contextPath}/contactus.jsp">Contact
								Us</a></li>

					</ul>
					<div class="cl">&nbsp;</div>


</nav>
<h4 align="right">
					Welcome 
					<%=session.getAttribute("name")%></h4>
				<h4 align="right">
					Phone
					<%=session.getAttribute("phone")%></h4>
								<p align="right">
		<a href="loggedout.jsp">Log Out</a>
	</p>


<div id="first">

					<form action="Add" name="register" method="post">
						<!-- <fieldset
							style="width: 80%; height: 65%; margin-left: 20%; border-radius: 8px"> -->

							<div>
								<h2
									style="background-color: #000000; color: white; text-align: center; padding: 5px;">Send
									Money</h2>
							</div>
							




								<legend align="center">
									<h1>Add a Beneficiary</h1>
								</legend>
								<p text-align:left;">
									Fields marked with asterisk(<span style="color: red">*</span>)
									are compulsary Fields.
								</p>
								<div class="dtails">
									<h4>Beneficiary Details</h4>
								</div>
								<table cellspacing="10px">
									<tr>
										<td><label>Mobile No.<sup style="color: red">*</sup></label></td>
										<td><input type="Number" placeholder="Mobile Number"
											name="mobile" id="mobile" required /></td>
									</tr>
									<tr>
										<td><label>Beneficiary Name:</label></td>
										<td><input type="text" placeholder="Beneficiary Name"
											name="name" id="firstname" /></td>
									</tr>





									<tr>
										<td><label>E-mail<sup style="color: red">*</sup></label></td>
										<td><input type="email" name="email" id="email"
											placeholder="Email" /></td>
									</tr>

									<tr></tr>
									<tr></tr>

									<tr>
										<td></td>
										<td><a href="">Back</a><input type="submit"
											value="Sign Up" onclick="return validateAddForm()" id="submit" /></td>
									</tr>


								</table>
						<!-- </fieldset> -->
					</form></div>
					<div id="footer">
						<div class="footer-nav">
							<ul>

								<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
								<li><a
									href="${pageContext.request.contextPath}/aboutus.jsp">About
										Us</a></li>
								<li><a
									href="${pageContext.request.contextPath}/policies.jsp">Transfer
										Money</a></li>
								<li><a
									href="${pageContext.request.contextPath}/contactus.jsp">Contact
										Us</a></li>
							</ul>
							<div class="cl">&nbsp;</div>
						</div>
						<p class="copy">
							&copy; Copyright 2016<span>|</span>e-Wallet. Design by
							DevOps_Team
						</p>
						<div class="cl">&nbsp;</div>
					</div>
					<!-- end of footer -->
				</div>
				<!-- end of container -->
			</div>
			<!-- end of shell -->
		</div>
</body>
</html>