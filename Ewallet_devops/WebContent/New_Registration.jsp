<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Registration</title>
<script src="" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/retinafreestansard/css/form1.css" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/retinafreestansard/css/images/favicon.png" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/retinafreestansard/css/style.css" type="text/css" media="all" />	
	<script  src="${pageContext.request.contextPath}/doc.js" type="text/javascript" lnaguage="javascript">

</script>

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
			
			<div><a href="home.jsp"><img src="${pageContext.request.contextPath}/retinafreestansard/css/images/logo_ew.jpg" alt="e-WALLET"  ></a>
			
			</div>
		
				
				<!-- search -->
				<div class="search">
					<form action="" method="">
						<input type="text" class="field" value="keywords here ..." title="keywords here ..." />
						<input type="submit" class="search-btn" value="" />
						<div class="cl">&nbsp;</div>
					</form>
				</div>
				<!-- end of search -->
				<div class="cl">&nbsp;</div>
			</header>
			<!-- end of header -->
			<!-- navigaation -->
			
			
			<nav id="navigation">
				<a href="#" class="nav-btn">HOME<span></span></a>
				<ul>
						<li><a
						href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
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
			</nav>
			<!-- end of navigation -->
	
	

		<form action="RegisterContoller" name="register" method="post">
			<div id="first">
				<p  text-align: left;">Fields marked with asterisk(<span style="color:red">*</span>) are compulsary Fields.
					</p>
												<div><h2 style=" background-color:#000000;
    color:white;
    text-align:center;
    padding:5px;">Personal Details</h2>
</div>
				<table cellspacing="10px">
					<tr>
						<td><label>First Name<sup style="color:red">*</sup></label></td>
						<td><input type="text" placeholder="First Name"
							name="firstName" id="firstname"  class="namealign" required /> </td>
					</tr>
					
					<tr>
						<td><label>Last Name<sup style="color:red">*</sup></label></td>
						<td><input type="text" placeholder="Last Name"
							name="lastName" id="lastname" required />  </td>
					</tr>
					<tr>
						<td><label>Date Of Birth<sup style="color:red">*</sup></label></td>
						<td><input type="date" name="dateOfBirth" id="dateofbirth" class="namealign" required /></td>
					</tr>
					<tr>
					
						<td><label>Gender<sup style="color:red" >*</sup></label></td>
					<td><input type="radio" name="gender" value="male"> Male  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 					<input type="radio" name="gender" value="female"> Female</td>
					
					
					</tr>
				
														
					
					<tr>
						<td><label>Mobile Number<sup style="color:red">*</sup></label></td>
						<td><input type="text" name="phoneNumber"
							placeholder="Mobile Number" id="mobile" required />
							
					</tr>
					
					<tr>
						<td><label>E-mail<sup style="color:red">*</sup></label></td>
						<td><input type="email" name="email" id="email"
							placeholder="Email" required  /></td>
					</tr>
				<tr>
						<td><label>Password<sup style="color:red">*</sup></label></td>
						<td><input type="password" name="password" 
							placeholder="Password" id="password" required/></td>
					
					</tr>
					
					<tr>
						<td><label>Confirm Password<sup style="color:red">*</sup></label></td>
						<td><input type="password" name="password" 
							placeholder="Confirm Password" id="password" required/></td>
					

					


					<tr>
						<td></td>
						<td><input type="submit" value="Sign Up" onclick="return validateRegistrationForm()" id="submit"/></td>
					</tr>
				</table>
	</div>
	</form>	
			<!-- footer -->
			<div id="footer">
					<div class="footer-nav">
						<ul>

							<li><a
								href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
							<li><a
								href="${pageContext.request.contextPath}/aboutus.jsp">About
									Us</a></li>
							<li><a
								href="${pageContext.request.contextPath}/login.jsp">Transfer
									Money</a></li>
							<li><a
								href="${pageContext.request.contextPath}/contactus.jsp">Contact
									Us</a></li>
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
					<p class="copy">
						&copy; Copyright 2016<span>|</span>e-Wallet. Design by DevOps_Team
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