//login form validation

function validateForm()
{
	// validate contact no.
	var c = document.getElementById("firstname").value;
	if(c == null || c == "" || c == " ")
	{
		alert("Please enter the contactNo !");
		return false;
	}
	if(c.length!=10)
		{
		alert("Please enter 10 digit correct mobile no.");
		}
	 rz=/^[0-9]+$/;
	
	  	if(!(rz.test(c)))
	  	{
	  		flag=false;
	  		alert("First name should contain numbers only");
	  		document.getElementById("mobile").value = "";
	  	}

}
// beneficiary addition form validation

function validateAddForm()
{
	
	// validate contact no.
	var c = document.getElementById("mobile").value;
	if(c == null || c == "" || c == " ")
	{
		alert("Please enter the contactNo !");
		return false;
	}
	if(c.length!=10)
		{
		alert("Please enter 10 digit correct mobile no.");
		}
	 rz=/^[0-9]+$/;
	
	  	if(!(rz.test(c)))
	  	{
	  		flag=false;
	  		alert("First name should contain numbers only");
	  		document.getElementById("mobile").value = "";
	  	}


// validation of beneficiary name


     var f = document.getElementById("firstname").value;
     if(f == "")
    	 {
	alert("Enter Beneficiary Name");
	return false;
    	}
     
     rz=/^[A-Za-z]+$/;
 	if(!(rz.test(f)))
 	{
 		flag=false;
 		alert("First name should contain characters only");
 		document.getElementById("firstname").value = "";
 	}
 	if(f.length>30)
 		{
 		alert("Please enter less than 20 characters");
 		return false;
 		}
     
     
	
	// validate email id
	
	var e= document.getElementById("email").value;
	if(e == null || e == "" || e == " ")
	{
		alert("Please enter the email id !");
		return false;
	}
	
	var atpos=e.indexOf("@");
	var dotpos=e.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=e.length)
	{
		alert("Email Id should be of the form abc@xyz.com");
		document.getElementById("email").value = "";
		return false;
	}	
}
	
// send money form validation validation
function validateSendMoneyForm(){
	// user contact no.
	var c = document.getElementById("mobile").value;
	if(c == null || c == "" || c == " ")
	{
		alert("Please enter user contactNo !");
		return false;
	}
	if(c.length!=10)
		{
		alert("Please enter 10 digit correct mobile no.");
		}
	 rz=/^[0-9]+$/;
	
	  	if(!(rz.test(c)))
	  	{
	  		flag=false;
	  		alert("mobile number should contain numbers only");
	  		document.getElementById("mobile").value = "";
	  	}


// validation of beneficiary name


     var f = document.getElementById("firstname").value;
     if(f == "")
    	 {
	alert("Enter Beneficiary Name");
	return false;
    	}
     
     rz=/^[A-Za-z]+$/;
 	if(!(rz.test(f)))
 	{
 		flag=false;
 		alert("First name should contain characters only");
 		document.getElementById("firstname").value = "";
 	}
 	if(f.length>30)
 		{
 		alert("Please enter less than 30 characters");
 		return false;
 		}
	//validation of beneficiary mobile number
 	
 	var c = document.getElementById("mobilenumber").value;
	if(c == null || c == "" || c == " ")
	{
		alert("Please enter beneficiary  contactNo !");
		return false;
	}
	if(c.length!=10)
		{
		alert("Please enter 10 digit correct mobile no.");
		}
	 rz=/^[0-9]+$/;
	
	  	if(!(rz.test(c)))
	  	{
	  		flag=false;
	  		alert("mobile number should contain numbers only");
	  		document.getElementById("mobile").value = "";
	  	}	
	
}



//validation of registration form name

function validateRegistrationForm()
{
  var f = document.getElementById("firstname").value;
  if(f == "")
 	 {
	alert("Enter First Name Name");
	return false;
 	}
  
  rz=/^[A-Za-z]+$/;
	if(!(rz.test(f)))
	{
		flag=false;
		alert("First name should contain characters only");
		document.getElementById("firstname").value = "";
	}
	if(f.length>30)
		{
		alert("Please enter less than 20 characters");
		return false;
		}
  
  //validation of last name
	var f = document.getElementById("lastname").value;
	  if(f == "")
	 	 {
		alert("Enter last Name Name");
		return false;
	 	}
	  
	  rz=/^[A-Za-z]+$/;
		if(!(rz.test(f)))
		{
			flag=false;
			alert("First name should contain characters only");
			document.getElementById("firstname").value = "";
		}
		if(f.length>30)
			{
			alert("Please enter less than 20 characters");
			return false;
			}
	  
	
	
	
	// validate email id
	
	var e= document.getElementById("email").value;
	if(e == null || e == "" || e == " ")
	{
		alert("Please enter the email id !");
		return false;
	}
	
	var atpos=e.indexOf("@");
	var dotpos=e.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=e.length)
	{
		alert("Email Id should be of the form abc@xyz.com");
		document.getElementById("email").value = "";
		return false;
	}	
}
