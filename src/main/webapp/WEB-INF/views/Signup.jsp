<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
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
            background-color: #000; /* Pure black background */
            padding: 20px;
            position: relative;
           
        }

        /* Particle Background */
        #particles-js {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            pointer-events: none;
        }

        /* Form Container */
        form {
            background: rgba(0, 0, 0, 0.7);
            max-width: 500px;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(10px);
            animation: fadeIn 0.5s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.2);
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

        /* Rest of your original styles */
        form h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 20px;
            color: #fff;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            color: #fff;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            height: 45px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 5px;
            outline: none;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            transition: all 0.3s ease;
        }

        .form-group select {
            color: #fff;
        }

        .form-group select option {
            color: #000;
            background: #fff;
        }

        .form-group input::placeholder,
        .form-group select::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #fff;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
        }

        .form-group input.error,
        .form-group select.error {
            border-color: #f91919;
            background: rgba(249, 240, 241, 0.1);
        }

        .form-group small {
            font-size: 12px;
            color: #f91919;
            margin-top: 5px;
            display: block;
        }

        .password i {
            position: absolute;
            right: 10px;
            top: 35px;
            cursor: pointer;
            color: rgba(255, 255, 255, 0.7);
            transition: color 0.3s ease;
        }

        .password i:hover {
            color: #fff;
        }

        .submit-btn input {
            width: 100%;
            height: 45px;
            background: #6a1b9a;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .submit-btn input:hover {
            background: #4a148c;
        }

        form a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #fff;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        form a:hover {
            color: #6a1b9a;
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            form {
                padding: 20px;
            }

            form h2 {
                font-size: 20px;
            }

            .form-group input,
            .form-group select {
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
    <!-- Particle Background -->
    <div id="particles-js"></div>
    
    <form action="saveuser" method="post" enctype="multipart/form-data">
        <h2>Signup for PocketBuddy</h2>
        <div class="form-group fullname">
            <label for="firstname">First Name</label>
            <input type="text" id="firstname" placeholder="Enter your first name" name="firstName" required>
        </div>
        <div class="form-group fullname">
            <label for="lastname">Last Name</label>
            <input type="text" id="lastname" placeholder="Enter your last name" name="lastName" required>
        </div>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="email" id="email" placeholder="Enter your email address" name="email" required>
        </div>
        <div class="form-group password">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password" name="password" required>
            <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
        </div>
        <div class="form-group date">
            <label for="date">Birth Date</label>
            <input type="date" id="date" name="birthDate" required>
        </div>
        <div class="form-group gender">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="" selected disabled>Select your gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label for="contactNumber">Contact No.</label>
            <input type="text" id="contactNumber" placeholder="Enter your contact number" name="contactNumber" required>
        </div>
        <div class="form-group">
            <label for="profilePic">Profile Photo</label>
            <input type="file" id="profilePic" name="profilePic" required>
        </div>
        <a href="login">Already have an account.</a>
        <div class="form-group submit-btn">
            <input type="submit" value="Submit">
        </div>
    </form>

    <!-- Particle.js Library -->
    <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
    
    <script>
        // Password Toggle Button
        const passToggleBtn = document.getElementById('pass-toggle-btn');
        const passwordInput = document.getElementById('password');

        passToggleBtn.addEventListener('click', () => {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passToggleBtn.classList.remove('fa-eye');
                passToggleBtn.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                passToggleBtn.classList.remove('fa-eye-slash');
                passToggleBtn.classList.add('fa-eye');
            }
        });

        // Initialize Particle.js with 3D effect configuration
        particlesJS("particles-js", {
            "particles": {
                "number": {
                    "value": 80,
                    "density": {
                        "enable": true,
                        "value_area": 800
                    }
                },
                "color": {
                    "value": "#ffffff"
                },
                "shape": {
                    "type": "circle"
                },
                "opacity": {
                    "value": 0.5,
                    "random": true
                },
                "size": {
                    "value": 3,
                    "random": true
                },
                "line_linked": {
                    "enable": true,
                    "distance": 150,
                    "color": "#ffffff",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 2,
                    "direction": "none",
                    "random": false,
                    "straight": false,
                    "out_mode": "out",
                    "attract": {
                        "enable": true,
                        "rotateX": 600,
                        "rotateY": 1200
                    }
                }
            },
            "interactivity": {
                "detect_on": "canvas",
                "events": {
                    "onhover": {
                        "enable": true,
                        "mode": "repulse"
                    },
                    "onclick": {
                        "enable": true,
                        "mode": "push"
                    }
                },
                "modes": {
                    "repulse": {
                        "distance": 100,
                        "duration": 0.4
                    },
                    "push": {
                        "particles_nb": 4
                    }
                }
            }
        });
    </script>
</body>
</html>





<%--<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup </title>
<style type="text/css"></style>



</head>
<body>
<h1>Add Me Up!</h1>
<form action="saveuser" method="post">
	first name:<input type="text" name="firstName" ><br><br>
	last name:<input type="text" name="lastName"><br><br>
	gender:<select name="gender">

<option value="male">male</option>
<option value="female">female</option>
<option value="others">others</option>

</select><br><br>
	E-mail:<input type="email" name="email"><br><br>
	password:<input type="password" name="password"><br><br>
	birth date:<input type="date" name="birthDate"><br><br>
	contact no.:<input type="text" name="contactNumber"><br><br>
		<input type="submit" value="signup"><br><br>
	<a href="login">Already have an account.</a>

</form>
 --%>
<%--   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Validation in HTML | CodingNepal</title>
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
    <form action="saveuser" method="post" enctype="multipart/form-data">
    
      <h2>Form Validation</h2>
      <div class="form-group fullname">
        <label for="firstname">First Name</label>
        <input type="text" id="fullname" placeholder="Enter your full name" name="firstName">
      </div>
      <div class="form-group fullname">
        <label for="lastame">Last Name</label>
        <input type="text" id="fullname" placeholder="Enter your full name" name="lastName">
      </div>
      <div class="form-group email">
        <label for="email">Email Address</label>
        <input type="text" id="email" placeholder="Enter your email address"name="email">
      </div>
      <div class="form-group password">
        <label for="password">Password</label>
        <input type="password" id="password" placeholder="Enter your password" name="password">
        <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
      </div>
      <div class="form-group date">
        <label for="date">Birth Date</label>
        <input type="date" id="date" placeholder="Select your date"name="birthDate">
      </div>
      <div class="form-group gender">
        <label for="gender">Gender</label>
        <select id="gender" name="gender">
          <option value="" selected disabled>Select your gender</option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">Other</option>
        </select>
      </div>
      <div class="form-group dte">
        <label for="dte">Contact No.</label>
        <input type="dte" id="text" placeholder="Select your date"name="contactNumber">
      </div>
      <div class="form-group dat">
        <label for="dat">profile photo</label>
        <input type="file" id="dat" placeholder="Select your date" name="profilePic">
      </div>
      
       <a href="login">Already have an account.</a>
      <div class="form-group submit-btn">
        <input type="submit" value="Submit">
      </div>
      
    </form>
   
  </body>
</html> --%>

<!-- <script>
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
 -->
<!--   old one -->
 <%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
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
            background: linear-gradient(-45deg, #1a1a1a, #333333, #000000, #1a1a1a);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            padding: 20px;
        }

        /* Animation for background */
        @keyframes gradientBG {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        /* Form Container */
        form {
            background: rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
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
            color: #fff;
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
            color: #fff;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            height: 45px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 5px;
            outline: none;
            background: rgba(0, 0, 0, 0.3);
            color: #fff;
            transition: all 0.3s ease;
        }

        /* Dropdown styling */
        .form-group select {
            color: #fff; /* White text for dropdown */
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='white'%3e%3cpath d='M7 10l5 5 5-5z'/%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 12px;
        }

        .form-group select option {
            color: #000; /* Black text for options */
            background: #fff; /* White background for options */
        }

        .form-group input::placeholder,
        .form-group select::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #fff;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
        }

        .form-group input.error,
        .form-group select.error {
            border-color: #f91919;
            background: rgba(249, 240, 241, 0.1);
        }

        .form-group small {
            font-size: 12px;
            color: #f91919;
            margin-top: 5px;
            display: block;
        }

        /* Password Toggle Button */
        .password i {
            position: absolute;
            right: 10px;
            top: 35px;
            cursor: pointer;
            color: rgba(255, 255, 255, 0.7);
            transition: color 0.3s ease;
        }

        .password i:hover {
            color: #fff;
        }

        /* Submit Button */
        .submit-btn input {
            width: 100%;
            height: 45px;
            background: #666666;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .submit-btn input:hover {
            background: #808080;
        }

        /* Links */
        form a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #fff;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        form a:hover {
            color: #aaaaaa;
            text-decoration: underline;
        }

        /* File Input Styling */
        input[type="file"] {
            padding: 8px;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            form {
                padding: 20px;
            }

            form h2 {
                font-size: 20px;
            }

            .form-group input,
            .form-group select {
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
    <form action="saveuser" method="post" enctype="multipart/form-data">
        <h2>Registration Form</h2>
        <div class="form-group fullname">
            <label for="firstname">First Name</label>
            <input type="text" id="firstname" placeholder="Enter your first name" name="firstName" required>
        </div>
        <div class="form-group fullname">
            <label for="lastname">Last Name</label>
            <input type="text" id="lastname" placeholder="Enter your last name" name="lastName" required>
        </div>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="email" id="email" placeholder="Enter your email address" name="email" required>
        </div>
        <div class="form-group password">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password" name="password" required>
            <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
        </div>
        <div class="form-group date">
            <label for="date">Birth Date</label>
            <input type="date" id="date" name="birthDate" required>
        </div>
        <div class="form-group gender">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="" selected disabled>Select your gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label for="contactNumber">Contact No.</label>
            <input type="text" id="contactNumber" placeholder="Enter your contact number" name="contactNumber" required>
        </div>
        <div class="form-group">
            <label for="profilePic">Profile Photo</label>
            <input type="file" id="profilePic" name="profilePic" required>
        </div>
        <a href="login">Already have an account.</a>
        <div class="form-group submit-btn">
            <input type="submit" value="Submit">
        </div>
    </form>

    <script>
        // Password Toggle Button
        const passToggleBtn = document.getElementById('pass-toggle-btn');
        const passwordInput = document.getElementById('password');

        passToggleBtn.addEventListener('click', () => {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passToggleBtn.classList.remove('fa-eye');
                passToggleBtn.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                passToggleBtn.classList.remove('fa-eye-slash');
                passToggleBtn.classList.add('fa-eye');
            }
        });
    </script>
</body>
</html> --%>