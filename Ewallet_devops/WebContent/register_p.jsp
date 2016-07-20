<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="new.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserRegistration</title>

<script  src="doc.js" type="text/javascript" language="javascript">

</script>

</head>
<body>
	<div id="all">
		<div id="header"></div>
		<form align="center" class="form-signin" action="registercontoller" method="post">
			
				<legend align="center">User Registration</legend>
				<p  text-align: center;"> Fields marked with asterisk(<span style="color:red">*</span>) are compulsary Fields.
					</p>
				<div class="details"><h4>Personal Details</h4></div>
				
					
						<label>First Name<sup style="color:red">*</sup></label>
			//new			<input type="text" id="inputEmail" name="firstName" placeholder="First Name" required>
						
						<label>Last Name<sup style="color:red">*</sup></label>
			//new			<input type="text" id="inputEmail" name="lastName" placeholder="Last Name" required>
						
						<td><label>First Name<sup style="color:red">*</sup></label></td>
						<td><input type="text" placeholder="First Name"
							name="firstName" id="firstname" required/> </td>
				
						
						<td><label>Last Name<sup style="color:red">*</sup></label></td>
						<td><input type="text" placeholder="Last Name"
							name="lastName" id="lastname" required/>  </td>
					
					
						<td><label>Date Of Birth<sup style="color:red">*</sup></label></td>
						<td><input type="date" id="inputEmail" name="dateOfBirth" required/></td>
						
						
						<label>Gender<sup style="color:red" >*</sup></label>
			//new		<input type="radio" name="gender" value="male"> Male<br>
 						<input type="radio" name="gender" value="female"> Female<br>
 					 	
		
			//new			<input type="text" name="mobile" id="inputEmail"
					class="form-control" placeholder="Mobile No."  required autofocus>
						
						<td><label>Mobile Number<sup style="color:red">*</sup></label></td>
						<td><input type="text" name="phoneNumber"
							placeholder="Phone Number" id="mobile" required/> 
					
					
						<td><label>E-mail<sup style="color:red">*</sup></label></td>
						<td><input type="email" name="email" 
							placeholder="Email" id="email" required/></td>
					
					
						<td><label>Password<sup style="color:red">*</sup></label></td>
						<td><input type="password" name="password" 
							placeholder="Password" id="password" required/></td>
					
					
						<td><label>Confirm Password<sup style="color:red">*</sup></label></td>
						<td><input type="password" name="password" 
							placeholder="Confirm Password" id="Confirm password" required/></td>
					
						<td><input type="submit" value="Sign Up" onclick="return validateCustomerForm()"/></td>
				</form>
				<div id="footer"></div>
	</div>
</body>
</html>