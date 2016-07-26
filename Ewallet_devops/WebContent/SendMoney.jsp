<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	HttpSession session1 = request.getSession(false);
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Send Money</title>
<script src="" type="text/javascript"></script>
<link
	href="${pageContext.request.contextPath}/retinafreestansard/css/form1.css"
	rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/retinafreestansard/css/images/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/retinafreestansard/css/style.css"
	type="text/css" media="all" />
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

				<div>
					<a href="home.jsp"><img
						src="${pageContext.request.contextPath}/retinafreestansard/css/images/logo_ew.jpg"
						alt="e-WALLET"></a>

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
					
				</header>
				<!-- end of header -->
				<!-- navigaation -->


				<nav id="navigation"> <a href="#" class="nav-btn">HOME<span></span></a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About
							Us</a></li>
					<li><a href="${pageContext.request.contextPath}/SendMoney.jsp">Transfer
							Money</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus.jsp">Contact
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
				<form action="Transaction" method="post" name="transact">
				<!-- 	<fieldset style="width: 60%; margin-left: 20%; border-radius: 8px"> -->
						<!-- <legend align="center">Send Money</legend> -->

					<!-- 	<div>
							<h2
								style="background-color: white; color: b; text-align: center; padding: 5px;">Transfer Money
								Money</h2>
						</div>
						 -->
						 
						 <h2
								style="background-color: white; color: black; text-align: center; padding: 5px;">Transfer Money
								Money</h2>

							<p text-align:left;/>
								Fields marked with asterisk(<span style="color: red">*</span>)
								are compulsary Fields.
							</p>
							<div class="dtails">
								<h4>Transaction Details</h4>
							</div>
							<table cellspacing="10px">
								<tr>
									<td><label>User Mobile no:<sup style="color: red">*</sup></label></td>
									<td><input type="text" placeholder="User Name"
										name="uname" id="mobile" required /></td>
								</tr>
								<tr>
									<td><label>Beneficiary Name:<sup
											style="color: red">*</sup></label></td>
									<td><input type="text" placeholder="Beneficiary Name"
										name="name" id="firstname" required /></td>
								</tr>
								<tr>
									<td><label>Beneficiary Mobile No:<sup
											style="color: red">*</sup></label></td>
									<td><input type="Number" placeholder="Mobile Number"
										name="mobile" id="mobilenumber" required /></td>
								</tr>
								<tr>
									<td><label>Amount:<sup style="color: red">*</sup></label></td>
									<td><input type="number" placeholder="Amount"
										name="amount" id="amount" /></td>
								</tr>

								<tr>
									<td><label>Transfer Details:</label></td>
									<td><input type="text" name="detail" id="transfer"
										placeholder="Details" /></td>
								</tr>
								<tr>
									<td></td>
									<td><a href="LoginStatus.jsp">Back</a><input type="submit" value="Send"
										id="submit" onclick="return validateSendMoneyForm()" style="float: right;"></td>
								</tr>

							</table>
						
					<!-- </fieldset> -->
				</form>
			</div>

			<!-- footer -->
			<div id="footer">
				<div class="footer-nav">
					<ul>

						<li><a href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutus.jsp">About
								Us</a></li>
						<li><a href="${pageContext.request.contextPath}/SendMoney.jsp">Transfer
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

</body>


</html>