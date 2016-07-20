<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="new.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<div class="container">
		<div class="card card-container">


			<!-- <img class="profile-img-card" src="trial2.jpg" /> -->
			<img id="profile-img" class="profile-img-card" src="trial2.jpg" />
			<p id="profile-name" class="profile-name-card"></p>

			<form class="form-signin" action="logincontroller" method="post">

				<input type="text" name="mobile" id="inputEmail"
					class="form-control" placeholder="Mobile No."  required autofocus>
					
				<input type="password" name="userpass" id="inputPassword"
					class="form-control" placeholder="Password"  required>

				 <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>


			</form>
			</div>
</body>
</html>