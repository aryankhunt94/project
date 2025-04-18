<%-- <!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Forget password</h1><br><br>
		<form action="sendotp" method="post">
		Email: <input type="email" name="email"><br><br>
		<input type="submit" value="help me!">
		
		
		</form>

</body>
</html> -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>forget password</title>
    <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link For Icons -->
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
    <form action="sendotp" method="post">
      <h2>Login</h2>
     
      <div class="form-group email">
        <label for="email">Email Address</label>
        <input type="text" id="email" placeholder="Enter your email address"name="email">
      </div>
      
      
      <div class="form-group submit-btn">
        <input type="submit" value="help me!">  
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
 --%>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password</title>
    <!-- Fontawesome CDN Link For Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <style>
        /* General Styles */
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
            min-height: 100vh;
            background: linear-gradient(135deg, #6a1b9a, #38006b); /* Purple gradient */
            padding: 20px;
        }

        /* Form Container */
        form {
            background: #fff;
            max-width: 400px;
            width: 100%;
            padding: 30px;
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

        form h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 20px;
            color: #6a1b9a; /* Purple color */
        }

        /* Form Groups */
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input {
            width: 100%;
            height: 45px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            border-color: #6a1b9a; /* Purple color */
            box-shadow: 0 0 5px rgba(106, 27, 154, 0.5);
        }

        .form-group input.error {
            border-color: #f91919;
            background: #f9f0f1;
        }

        .form-group small {
            font-size: 12px;
            color: #f91919;
            margin-top: 5px;
            display: block;
        }

        /* Submit Button */
        .submit-btn input {
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

        .submit-btn input:hover {
            background: #4a148c; /* Darker purple */
        }

        /* Links */
        form a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #6a1b9a; /* Purple color */
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        form a:hover {
            color: #4a148c; /* Darker purple */
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            form {
                padding: 20px;
            }

            form h2 {
                font-size: 20px;
            }

            .form-group input {
                height: 40px;
                font-size: 13px;
            }

            .submit-btn input {
                height: 40px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <form action="sendotp" method="post">
        <h2>Forget Password</h2>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="email" id="email" placeholder="Enter your email address" name="email" required>
        </div>
        <div class="form-group submit-btn">
            <input type="submit" value="Help Me!">
        </div>
        <a href="login">Back to Login</a>
    </form>
</body>
</html>