
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Change password</h1>
<form action="updatepassword" method="post">
	email:<input type="email" name="email"><br><br>
	otp:<input type="text" name="otp"><br><br>
	New password:<input type="password" name="password"><br><br>
	Confirm password:<input type="password" name="changePassword"><br><br>
		<input type="submit" value="Update Password">
		${error }
</form>
</body>
</html> --%>
<!-- <!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="style.css">
    Fontawesome CDN Link For Icons
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
  <style >
  
  @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
}
body {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0 10px;
  min-height: 100vh;
  background: #1BB295;
}
form {
  padding: 25px;
  background: #fff;
  max-width: 500px;
  width: 100%;
  border-radius: 7px;
  box-shadow: 0 10px 15px rgba(0, 0, 0, 0.05);
}
form h2 {
  font-size: 27px;
  text-align: center;
  margin: 0px 0 30px;
}
form .form-group {
  margin-bottom: 15px;
  position: relative;
}
form label {
  display: block;
  font-size: 15px;
  margin-bottom: 7px;
}
form input,
form select {
  height: 45px;
  padding: 10px;
  width: 100%;
  font-size: 15px;
  outline: none;
  background: #fff;
  border-radius: 3px;
  border: 1px solid #bfbfbf;
}
form input:focus,
form select:focus {
  border-color: #9a9a9a;
}
form input.error,
form select.error {
  border-color: #f91919;
  background: #f9f0f1;
}
form small {
  font-size: 14px;
  margin-top: 5px;
  display: block;
  color: #f91919;
}
form .password i {
  position: absolute;
  right: 0px;
  height: 45px;
  top: 28px;
  font-size: 13px;
  line-height: 45px;
  width: 45px;
  cursor: pointer;
  color: #939393;
  text-align: center;
}
.submit-btn {
  margin-top: 30px;
}
.submit-btn input {
  color: white;
  border: none;
  height: auto;
  font-size: 16px;
  padding: 13px 0;
  border-radius: 5px;
  cursor: pointer;
  font-weight: 500;
  text-align: center;
  background: #1BB295;
  transition: 0.2s ease;
}
.submit-btn input:hover {
  background: #179b81;
}
  
  </style>
  
  </head>
  <body>
   <form action="updatepassword" method="post">
      <h2>Login</h2>
     
      <div class="form-group email">
        <label for="email">Email Address</label>
        <input type="text" id="email" placeholder="Enter your email address"name="email">
      </div>
      
      
      <div class="form-group email">
        <label for="email">OTP</label>
        <input type="text" id="email" placeholder="Enter your otp"name="otp">
      </div>
      
      <div class="form-group password">
        <label for="password">New Password</label>
        <input type="password" id="password" placeholder="Enter your password" name="password">
        <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
      </div>
      <div class="form-group password">
        <label for="password">Change Password</label>
        <input type="password" id="password" placeholder="Enter your password" name="changepassword">
        <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
      </div>
      
      <div class="form-group submit-btn">
        <input type="submit" value="Update Password">
      </div>
      
       
      
    </form>
   
  

<script>
//Selecting form and input elements
const form = document.querySelector("form");
const passwordInput = document.getElementById("password");
const passToggleBtn = document.getElementById("pass-toggle-btn");
// Function to display error messages
const showError = (field, errorText) => {
    field.classList.add("error");
    const errorElement = document.createElement("small");
    errorElement.classList.add("error-text");
    errorElement.innerText = errorText;
    field.closest(".form-group").appendChild(errorElement);
}
// Function to handle form submission
const handleFormData = (e) => {
    e.preventDefault();
    // Retrieving input elements
    const fullnameInput = document.getElementById("fullname");
    const emailInput = document.getElementById("email");
    const dateInput = document.getElementById("date");
    const genderInput = document.getElementById("gender");
    // Getting trimmed values from input fields
    const fullname = fullnameInput.value.trim();
    const email = emailInput.value.trim();
    const password = passwordInput.value.trim();
    const date = dateInput.value;
    const gender = genderInput.value;
    // Regular expression pattern for email validation
    const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    // Clearing previous error messages
    document.querySelectorAll(".form-group .error").forEach(field => field.classList.remove("error"));
    document.querySelectorAll(".error-text").forEach(errorText => errorText.remove());
    // Performing validation checks
    if (fullname === "") {
        showError(fullnameInput, "Enter your full name");
    }
    if (!emailPattern.test(email)) {
        showError(emailInput, "Enter a valid email address");
    }
    if (password === "") {
        showError(passwordInput, "Enter your password");
    }
    if (date === "") {
        showError(dateInput, "Select your date of birth");
    }
    if (gender === "") {
        showError(genderInput, "Select your gender");
    }
    // Checking for any remaining errors before form submission
    const errorInputs = document.querySelectorAll(".form-group .error");
    if (errorInputs.length > 0) return;
    // Submitting the form
    form.submit();
}
// Toggling password visibility
passToggleBtn.addEventListener('click', () => {
    passToggleBtn.className = passwordInput.type === "password" ? "fa-solid fa-eye-slash" : "fa-solid fa-eye";
    passwordInput.type = passwordInput.type === "password" ? "text" : "password";
});
// Handling form submission event
form.addEventListener("submit", handleFormData);
</script>

</body>
</html>
 -->
 
 <!-- <!DOCTYPE html>
Coding By CodingNepal - codingnepalweb.com
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration </title> 
    <style>
    	@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #4070f4;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}
    </style>
   </head>
<body>
  <div class="wrapper">
    <h2>Change Password</h2>
    <form action="updatepassword" method="post">
      
      <div class="input-box">
        <input type="text" placeholder="Enter your email" required name="email">
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your otp" required name="otp">
      </div>
      <div class="input-box">
        <input type="password" placeholder="Create password" required name="password">
      </div>
      <div class="input-box">
        <input type="password" placeholder="Confirm password" required name="changepassword">
      </div>
      <div class="policy">
        <input type="checkbox" required>
        <h3>I accept all terms & condition</h3>
      </div>
      <div class="input-box button">
        <input type="submit" value="Update Password">
      </div>
      
    </form>
  </div>
</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <!-- Fontawesome CDN Link For Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #6a1b9a, #38006b); /* Purple gradient */
            padding: 20px;
        }

        /* Form Container */
        .wrapper {
            background: #fff;
            max-width: 430px;
            width: 100%;
            padding: 34px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .wrapper h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 20px;
            color: #6a1b9a; /* Purple color */
            position: relative;
        }

        .wrapper h2::before {
            content: '';
            position: absolute;
            left: 50%;
            bottom: 0;
            transform: translateX(-50%);
            height: 3px;
            width: 28px;
            border-radius: 12px;
            background: #6a1b9a; /* Purple color */
        }

        /* Form Groups */
        .input-box {
            margin-bottom: 20px;
            position: relative;
        }

        .input-box input {
            width: 100%;
            height: 45px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
            transition: all 0.3s ease;
        }

        .input-box input:focus {
            border-color: #6a1b9a; /* Purple color */
            box-shadow: 0 0 5px rgba(106, 27, 154, 0.5);
        }

        .input-box input.error {
            border-color: #f91919;
            background: #f9f0f1;
        }

        .input-box small {
            font-size: 12px;
            color: #f91919;
            margin-top: 5px;
            display: block;
        }

        /* Submit Button */
        .input-box.button input {
            width: 100%;
            height: 45px;
            background: #6a1b9a; /* Purple color */
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .input-box.button input:hover {
            background: #4a148c; /* Darker purple */
        }

        /* Checkbox and Terms */
        .policy {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .policy h3 {
            color: #555;
            font-size: 14px;
            margin-left: 10px;
        }

        .policy h3 a {
            color: #6a1b9a; /* Purple color */
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .policy h3 a:hover {
            color: #4a148c; /* Darker purple */
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .wrapper {
                padding: 20px;
            }

            .wrapper h2 {
                font-size: 20px;
            }

            .input-box input {
                height: 40px;
                font-size: 13px;
            }

            .input-box.button input {
                height: 40px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Change Password</h2>
        <form action="updatepassword" method="post">
            <div class="input-box">
                <input type="email" placeholder="Enter your email" name="email" required>
            </div>
            <div class="input-box">
                <input type="text" placeholder="Enter your OTP" name="otp" required>
            </div>
            <div class="input-box">
                <input type="password" placeholder="Create password" name="password" required>
            </div>
            <div class="input-box">
                <input type="password" placeholder="Confirm password" name="changepassword" required>
            </div>
            <div class="policy">
                <input type="checkbox" required>
                <h3>I accept all <a href="#">terms & conditions</a></h3>
            </div>
            <div class="input-box button">
                <input type="submit" value="Update Password">
            </div>
        </form>
    </div>
</body>
</html>