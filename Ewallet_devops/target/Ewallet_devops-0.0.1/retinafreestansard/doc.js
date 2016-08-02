
function validateForm()
{
     var f = document.getElementById("firstname").value;
     if(f == "")
    	 {
	alert("Enter first name");
	return false;
    	}
     
     rz=/^[A-Za-z]+$/;
 	if(!(rz.test(f)))
 	{
 		flag=false;
 		alert("First name should contain characters only");
 		document.getElementById("firstname").value = "";
 	}
 	if(f.length>20)
 		{
 		alert("Please enter less than 20 characters");
 		return false;
 		}
     
     // validate last name
     var l = document.getElementById("lastname").value;
     if(l == "")
    	 {
	alert("Enter last name");
	return false;
    	 }
     
     rz=/^[A-Za-z]+$/;
  	if(!(rz.test(l)))
  	{
  		flag=false;
  		alert("First name should contain characters only");
  		document.getElementById("firstname").value = "";
  	}
  	if(l.length>20)
		{
		alert("Please enter less than 20 characters");
		return false;
		}
  	
  //Validate DOB
	/*var dob=document.getElementById("dateofbirth");
	if(dob == null || dob =="" || dob == " ")
	{
		alert("Please select the Date of Birth!");
		return false;
	}*/
	
	//Validate Address 
	var h =document.getElementById("address");
	if(h == null || h == "" || h == " ")
	{
		alert("Please enter the address !");
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

	//validate contact no.
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
		
	//experience validation
	var k =document.getElementById("yoe");
	if(k == null || k == "" || k == " ")
	{
		alert("Please enter year of experiance.");
		return false;
	}
	//validate pan no.
	
    var r = document.getElementById("pan").value;
		if(r=="")
			{
			alert("Enter pan card no.");
			return false;
			}
}


//customer form validation 

function validateCustomerForm()
{
     var f = document.getElementById("firstname").value;
     if(f == "")
    	 {
	alert("Enter first name");
	return false;
    	}
     
     rz=/^[A-Za-z]+$/;
 	if(!(rz.test(f)))
 	{
 		flag=false;
 		alert("First name should contain characters only");
 		document.getElementById("firstname").value = "";
 	}
 	if(f.length>20)
 		{
 		alert("Please enter less than 20 characters");
 		return false;
 		}
     
     // validate last name
     var l = document.getElementById("lastname").value;
     if(l == "")
    	 {
	alert("Enter last name");
	return false;
    	 }
     
     rz=/^[A-Za-z]+$/;
  	if(!(rz.test(l)))
  	{
  		flag=false;
  		alert("First name should contain characters only");
  		document.getElementById("firstname").value = "";
  	}
  	if(l.length>20)
		{
		alert("Please enter less than 20 characters");
		return false;
		}
  	
  //Validate DOB
	/*var dob=document.getElementById("dateofbirth").Value;
	if(dob == null || dob =="" || dob == " ")
	{
		alert("Please select the Date of Birth!");
		return false;
	}*/
	
	//Validate Address 
	var h =document.getElementById("address");
	if(h == null || h == "" || h == " ")
	{
		alert("Please enter the address !");
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

	//validate contact no.
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
	  	//city validation
	  	 var s = document.getElementById("city").value;
	     if(s == "")
	    	 {
		alert("enter the city");
		return false;
	    	}
	     
	     rz=/^[A-Za-z]+$/;
	 	if(!(rz.test(s)))
	 	{
	 		flag=false;
	 		alert("city can contain characters only");
	 		document.getElementById("city").value = "";
	 	}
	 	if(s.length>20)
	 		{
	 		alert("Please enter less than 20 characters for city");
	 		return false;
	 		}
	 	var q = document.getElementById("pincode").value;
		if(q == null || q == "" || q == " ")
		{
			alert("Please enter the  pincode !");
			return false;
		}
		if(q.length!=6)
			{
			alert("Please enter correct 6 digit pincode.");
			}
	     var w = document.getElementById("occupation").value;
	     if(w == "")
	    	 {
		alert("Enter your Occupation");
		return false;
	    	}
	     
	     rz=/^[A-Za-z]+$/;
	 	if(!(rz.test(w)))
	 	{
	 		flag=false;
	 		alert("Occupation should contain characters only");
	 		document.getElementById("occupation").value = "";
	 	}
		var r = document.getElementById("annualsalary").value;
		if(r == null || r == "" || r == " ")
		{
			alert("Please enter the Annual Salary !");
			return false;
		}
		
		 rz=/^[0-9]+$/;
		
		  	if(!(rz.test(c)))
		  	{
		  		flag=false;
		  		alert("Annual salary should contain numbers only");
		  		document.getElementById("annualsalary").value = "";
		  	}
		  	    var fuData = document.getElementById("fileChooser");
		  	    var FileUploadPath = fuData.value;


		  	    if (FileUploadPath == '') {
		  	        alert("Please upload an image");

		  	    } else {
		  	        var Extension = FileUploadPath.substring(
		  	                FileUploadPath.lastIndexOf('.') + 1).toLowerCase();



		  	 if (Extension == "gif" || Extension == "png" || Extension == "bmp"
		  	                || Extension == "jpeg" || Extension == "jpg") {


		  	            if (fuData.files && fuData.files[0]) {
		  	                var reader = new FileReader();

		  	                reader.onload = function(e) {
		  	                    $('#blah').attr('src', e.target.result);
		  	                }

		  	                reader.readAsDataURL(fuData.files[0]);
		  	            }

		  	        } 


		  	  else {
		  	            alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");

		  	        }
		  	    }
		  	}
//manager validation 
function validateManagerForm(){
	 var f = document.getElementById("firstname").value;
     if(f == "")
    	 {
	alert("Enter first name");
	return false;
    	}
     
     rz=/^[A-Za-z]+$/;
 	if(!(rz.test(f)))
 	{
 		flag=false;
 		alert("First name should contain characters only");
 		document.getElementById("firstname").value = "";
 	}
 	if(f.length>20)
 		{
 		alert("Please enter less than 20 characters");
 		return false;
 		}
     
     // validate last name
     var l = document.getElementById("lastname").value;
     if(l == "")
    	 {
	alert("Enter last name");
	return false;
    	 }
     
     rz=/^[A-Za-z]+$/;
  	if(!(rz.test(l)))
  	{
  		flag=false;
  		alert("First name should contain characters only");
  		document.getElementById("firstname").value = "";
  	}
  	if(l.length>20)
		{
		alert("Please enter less than 20 characters");
		return false;
		}
	
    //Validate DOB
  	var dob=document.getElementById("dateofbirth");
  	if(dob == null || dob =="" || dob == " ")
  	{
  		alert("Please select the Date of Birth!");
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














//same address 
function sameaddress(form){

	if(form.copyaddress.checked){
		 form.ppermanentAddress.value = form.presentAddress.value;
	     form.pstate.value = form.state.value;
	     form.pcity.value = form.city1.value;
	     form.ppinCode.value = form.pinCode.value;
	}
	else{
	     form.ppermanentAddress.value = "";
	     if(form.pstate.type == "select-one"){
	          form.pstate.options[0].selected = true;
	     }
	     else{
	          form.pstate.value = "";
	     }
	     form.pcity.value = "";
	     form.ppinCode.value = "";
	}
	}
		
