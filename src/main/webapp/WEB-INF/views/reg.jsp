<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Form</title>
<link rel="stylesheet" href="css2.css">
<script>
function validateForm() {
 
	if(document.getElementById("fname").value=="") {
	alert("Enter your name !");
	document.getElementById("fname").focus();
	return false;
	}

	if(document.getElementById("uname").value=="") {
	alert("Username Cannot be blank!");
	document.getElementById("lname").focus();
	return false;
	}
	
	var re=/^\w+$/;
	if(!re.test(document.getElementById("uname").value)) {
	alert("Username must contain letters, numbers and underscore!");
	document.getElementById("uname").focus();
	return false;
	}

	var re=/^\w+([\.-]?w+)*@\w+([\.-]?w+)*(\.\w{2,3})+$/;
	if(!re.test(document.getElementById("email").value)) {
	alert("You have Entered an invalid email address !");
	document.getElementById("email").focus();
	return false;
	}
	
	var re=/^\([7-9]{1})?([0-9]{9})$/;
	if(!re.test(document.getElementById("mobileno").value)) {
	alert("Mobile Number is Invalid !");
	document.getElementById("mobileno").focus();
	return false;
	}
	
	if(document.getElementById("pass1").value)"!="&&(document.getElementById("pass1").value==document.getElementById("pass2").value) {
		if(document.getElementById("pass1").value.length<6) {
		alert("Password must contain atleast 6 characters ! ");
		document.getElementById("pass1").focus();
		return false;
		}
		
		if(document.getElementById("pass1").value==document.getElementById("uname").value) {
		alert("Password must be different from username ! ");
		document.getElementById("pass1").focus();
		return false;
		}
		
	
		re=/[a-z]/;
		if(!re.test(document.getElementById("pass1").value)) {
		alert("Password must contain atleast one lower case letter (a-z) !");
		document.getElementById("pass1").focus();
		return false;
		}

		re=/[A-Z]/;
		if(!re.test(document.getElementById("pass1").value)) {
		alert("Password must contain atleast one upper case letter (A-Z) !");
		document.getElementById("pass1").focus();
		return false;
		}
		else {
		alert("You have entered a valid password");
		}
}
</script>
<style>
body {
	background-image:
		url("http://www.thedressedaesthetic.com/wp-content/uploads/2015/02/shoes_02.jpg");
}
</style>
</head>
<body>
	<div align="center">
		<h1>Sign up</h1>
	</div>
	<form name="regform" onsubmit="return validateForm()">
		First Name : <br> <input type="text" id="fname"
			placeholder="enter your first name" required><br> Last
		Name : <br> <input type="text" id="lname"
			placeholder="enter your last name" required><br> User
		Name : <br> <input type="text" id="uname"
			placeholder="enter user name" pattern="[a-zA-Z0-9]{6,}"
			title="Minimum 6 Characters Required" required><br>
		E-mail : <br> <input type="email" id="email"
			placeholder="enter your valid email-id" required><br>
		Mobile Number : <br> <input type="number" id="mobileno"
			placeholder="enter your mobile contact number"
			pattern="[7-9]{1}[0-9]{9}" required><br> Password : <br>
		<input type="password" id="pass1" placeholder="enter a valid password"
			required><br> Re-enter Password : <br> <input
			type="password" id="pass2" placeholder="re-enter your password"
			required><br> <input type="submit" id="submit"
			value="Sign up" onclick="validateForm()">
		<div class="col-md-5">
			<a href="home" class="btn btn-info btn-lg">Back</a>
		</div>
	</form>
</body>
</html>