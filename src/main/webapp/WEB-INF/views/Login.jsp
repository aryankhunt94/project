<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
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
            background-color: #fff;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }

        /* Watermark Style */
        body::before {
            content: "Pocketbuddy";
            position: fixed;
            top: 45%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 100px;
            font-weight: bold;
            color: rgba(0, 0, 0, 0.1);
            z-index: -2;
            pointer-events: none;
            user-select: none;
            white-space: nowrap;
             
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
             background: transperent; 
             backdrop-filter: blur(2px);
            max-width: 400px;
            width: 100%;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease-in-out;
            border: 1px solid rgba(0, 0, 0, 0.1);
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
            color: #333;
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
            color: #333;
        }

        .form-group input {
        
            width: 100%;
            height: 45px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid rgba(0, 0, 0, 0.2);
            border-radius: 5px;
            outline: none;
            background: rgba(255, 255, 255, 0.8);
            color: #333;
            transition: all 0.3s ease;
        }

        .form-group input::placeholder {
            color: rgba(0, 0, 0, 0.5);
        }

        .form-group input:focus {
            border-color: #666;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group input.error {
            border-color: #f91919;
            background: rgba(249, 240, 241, 0.5);
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
            color: rgba(0, 0, 0, 0.5);
            transition: color 0.3s ease;
        }

        .password i:hover {
            color: #000;
        }

        /* Submit Button */
        .submit-btn input {
            width: 100%;
            height: 45px;
            background: #333;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .submit-btn input:hover {
            background: #555;
        }

        /* Links */
        form a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #333;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        form a:hover {
            color: #666;
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
    <!-- Particle Background -->
    <div id="particles-js"></div>
    <form action="authenticate" method="post">
        <h2>Login</h2>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="text" id="email" placeholder="Enter your email address" name="email" required>
        </div>
        <div class="form-group password">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password" name="password" required>
            <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
        </div>
        ${error}
        <a href="signup">Signup</a>
        <a href="forgetpassword">Forgot Password?</a>
        <div class="form-group submit-btn">
            <input type="submit" value="Login">
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

        // Initialize Particle.js with black lines configuration
        particlesJS("particles-js", {
            "particles": {
                "number": {
                    "value": 50,
                    "density": {
                        "enable": true,
                        "value_area": 800
                    }
                },
                "color": {
                    "value": "#000000"
                },
                "shape": {
                    "type": "circle"
                },
                "opacity": {
                    "value": 0.5,
                    "random": true
                },
                "size": {
                    "value": 2,
                    "random": true
                },
                "line_linked": {
                    "enable": true,
                    "distance": 150,
                    "color": "#000000",
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

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
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
            max-width: 400px;
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

        .form-group input {
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

        .form-group input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-group input:focus {
            border-color: #fff;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
        }

        .form-group input.error {
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
    <form action="authenticate" method="post">
        <h2>Pocketbuddy</h2>
        <div class="form-group email">
            <label for="email">Email Address</label>
            <input type="text" id="email" placeholder="Enter your email address" name="email" required>
        </div>
        <div class="form-group password">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password" name="password" required>
            <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
        </div>
        ${error}
        <a href="signup">Signup</a>
        <a href="forgetpassword">Forgot Password?</a>
        <div class="form-group submit-btn">
            <input type="submit" value="Login">
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
