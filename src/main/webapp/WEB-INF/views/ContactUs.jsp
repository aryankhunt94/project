<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Care - PocketBuddy</title>
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
            background: #f9f9f9;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .customer-care-container {
            background: white;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
            position: relative;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Back Button Styles */
        .back-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 8px 15px;
            font-size: 1rem;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 5px;
            transition: all 0.3s ease;
        }

        .back-btn:hover {
            background: #c82333;
            transform: translateX(-3px);
        }

        h1 {
            font-size: 2.5rem;
            color: #dc3545;
            margin-bottom: 1.5rem;
            padding-top: 10px;
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .contact-item {
            background: #f4f4f4;
            padding: 1.5rem;
            border-radius: 10px;
            display: flex;
            align-items: center;
            gap: 1rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .contact-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .contact-icon {
            font-size: 2rem;
            color: #dc3545;
        }

        .contact-details h3 {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 0.5rem;
        }

        .contact-details p {
            font-size: 1rem;
            color: #666;
        }

        .working-hours {
            margin-top: 2rem;
            font-size: 1.1rem;
            color: #666;
        }

        .working-hours strong {
            color: #dc3545;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            .contact-item {
                flex-direction: column;
                text-align: center;
            }

            .contact-icon {
                margin-bottom: 1rem;
            }
            
            .back-btn {
                top: 15px;
                left: 15px;
                padding: 6px 12px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="customer-care-container">
        <!-- Back Button -->
        <button class="back-btn" onclick="goBack()">
            <i class="fas fa-arrow-left"></i> Back
        </button>

        <h1>Customer Care</h1>
        <p>We're here to help you! Reach out to us for any queries or support.</p>

        <div class="contact-info">
            <div class="contact-item">
                <i class="fas fa-phone-alt contact-icon"></i>
                <div class="contact-details">
                    <h3>Call Us</h3>
                    <p>+91 1234567890</p>
                </div>
            </div>
            <div class="contact-item">
                <i class="fas fa-envelope contact-icon"></i>
                <div class="contact-details">
                    <h3>Email Us</h3>
                    <p>support@pocketbuddymeatury.com</p>
                </div>
            </div>
            <div class="contact-item">
                <i class="fas fa-comments contact-icon"></i>
                <div class="contact-details">
                    <h3>Live Chat</h3>
                    <p>Available 24/7 on our website</p>
                </div>
            </div>
        </div>

        <div class="working-hours">
            <p><strong>Working Hours:</strong> Monday to Friday, 10 AM - 5 PM</p>
            <p><strong>Note:</strong> Our customer care is closed on weekends and public holidays.</p>
        </div>
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>