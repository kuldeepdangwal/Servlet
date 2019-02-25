function validateLoginFrm(){
	if(loginForm.associateId.value==""){
		alert("Enter AssociateId");
		return false;
	}
	
	if(loginForm.password.value==""){
		alert("Enter Password");
		return false;
	}
}

function validateRegistrationFrm(){
	if(registerForm.firstName==""){
		alert("Enter first name");
		return false;
	}
	
	if(registerForm.lastName==""){
		alert("Enter last name");
		return false;
	}
}

function validatePassword() {
	if(changePasswordFrm.password.value.length>=6){
		if((changePasswordFrm.password.value.search(/[0-9]/)!=-1)&&
			(changePasswordFrm.password.value.search(/[A-Z]/)!=-1)&&
				(changePasswordFrm.password.value.search(/[!@#$%^&*()_+]/)!=-1)){
			return true
		}
		else{
			alert("Password must contain atleast 1 numeric, 1 uppercase letter and 1 special character");
			return false;
		}
	}
	else{
		aler("Minimum of 6 characters are required for password");
		return false;
	}
}

function checkSame(){
	if(changePasswordFrm.password.value != changePasswordFrm.confirmPassword.value){
		alert("Password and Confirm Password did not match");
		return false;
	}
}